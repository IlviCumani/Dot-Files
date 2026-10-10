return {
  -- Avante.nvim -- the covenant of Cursor, carried into Neovim's grey fog.
  -- Here the servant is thy very Cursor, summoned through its own CLI over ACP;
  -- thus thy Cursor pact alone doth sustain it -- no other coin need be paid.
  {
    "yetone/avante.nvim",
    -- No cargo dwelleth in these lands; thus doth `build.sh` draw forth the
    -- prebuilt libraries from afar, that no forge of source be needed.
    build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "bash build.sh",
    event = "VeryLazy",
    version = false, -- Bind not thy fate to a star ("*"), lest the build be undone.
    ---@module 'avante'
    ---@type avante.Config
    opts = {
      -- The chosen spirit is Cursor itself, reached through the Agent Client
      -- Protocol. Its models, thy MCP servers, thy rules and skills -- all borne
      -- hither from the Cursor realm, needing neither Claude nor hollow key.
      provider = "cursor",
      -- Agentic: let the servant take up its tools unbidden and act of its own will.
      mode = "agentic",
      acp_providers = {
        cursor = {
          -- The Cursor CLI, laid down by its installer within thy local keep.
          command = vim.fn.expand("~/.local/bin/agent"),
          -- 'acp' openeth the gate of the Agent Client Protocol upon stdio.
          args = { "acp" },
          -- Pass first through `agent login`; thy Cursor pact is thy key.
          auth_method = "cursor_login",
          env = {
            HOME = os.getenv("HOME"),
            PATH = os.getenv("PATH"),
          },
        },
      },
      behaviour = {
        -- Ghost-text whispers are stilled: the Cursor CLI offereth no such rite
        -- unto Neovim. Shouldst thou crave inline completion, a separate engine
        -- (Supermaven and its kin) must be bound -- ask, and it shall be done.
        auto_suggestions = false,
        -- Stay the servant's hand: ere any file be rewrit, it must first beg
        -- thy leave. The sidebar unveileth the change in that same breath --
        -- the old lines struck through in red, the new writ in green -- that
        -- thou mayest behold how it was and how it shall become ere judgement.
        auto_approve_tool_permissions = false,
        -- The verdict is rendered by inline buttons beneath the diff: wander
        -- them with <Tab> / <S-Tab>, pronounce with <CR> (or click by mouse).
        -- Three doors stand open -- "Allow" (bless this lone change), "Allow
        -- Always" (keep all; stay the asking for the rest of this session),
        -- and "Reject" (deny this change). Thus each file is judged in turn.
        confirmation_ui_style = "inline_buttons",
        -- As the servant setteth hand to each file, the far window followeth
        -- thither, that thou mayest see the deed within its own dwelling.
        acp_follow_agent_locations = true,
        -- The file thou gazest upon is drawn into counsel at the outset.
        auto_add_current_file = true,
      },
      -- Summon files through the Telescope, the far-seeing eye thou already keepest.
      selector = {
        provider = "telescope",
      },
      -- The Snacks vessel, most refined, shall receive thy spoken words.
      input = {
        provider = "snacks",
      },
      windows = {
        -- The sidebar riseth upon the right hand, as a watcher at the gate.
        position = "right",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      { "ColinKennedy/mega.cmdparse", dependencies = { "ColinKennedy/mega.logging" } },
      "nvim-telescope/telescope.nvim", -- the chosen eye of selection
      "folke/snacks.nvim", -- the chosen vessel of input
      "nvim-mini/mini.icons", -- glyphs drawn from thine existing hoard
      {
        -- A rite for the pasting of images into counsel.
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        -- That the servant's words be rendered fair in the markdown tongue.
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
