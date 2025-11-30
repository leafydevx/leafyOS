LeafyOS
-------

Overview:
LeafyOS is a custom-built operating system project created for education and productivity.
It is designed to provide a clean, distraction-free environment where students and creators
can focus on learning, note-taking, research, and building skills in computer science.
Unlike traditional operating systems, LeafyOS is lightweight, modular, and built from scratch
to demonstrate how kernels, bootloaders, drivers, and modules work together.

Project Structure:
- boot.bldr
    The bootloader. This is the first program loaded after the BIOS/UEFI firmware.
    It initializes the system and passes control to the kernel.

- main.krnl
    The kernel. This is the "brain" of LeafyOS. It manages memory, processes,
    and communication between hardware and software.

- leafy32/
    This folder contains the core components of the operating system.
    Inside leafy32 are modules, drivers, and the init.bin configuration file.

    ├─ modules/
    │   ├─ fs.mod        → Filesystem support (reading/writing files)
    │   ├─ net.mod       → Networking support (basic internet/research tools)
    │   └─ gui.mod       → Graphics/UI module (basic interface for users)

    ├─ drivers/
    │   ├─ drv.audio     → Audio driver (sound playback and recording)
    │   ├─ drv.video     → Video/display driver (screen output)
    │   ├─ drv.keyboard  → Keyboard input driver
    │   ├─ drv.mouse     → Mouse input driver
    │   └─ drv.disk      → Storage driver (hard drives, SSDs)

    └─ init.bin
        Startup configuration file. This tells the kernel which drivers and modules
        to load first, and in what order.

- efi/
    Contains the UEFI boot files. This is what the motherboard firmware looks for
    when starting the system.

    └─ BOOT/
        └─ BOOTX64.EFI → The UEFI entry point that launches the bootloader.

Disclaimer:
⚠️ Do not attempt to modify or build operating systems unless you have experience in
computer science. Incorrect changes to bootloaders, kernels, BIOS, or drivers can
make your system unstable or unusable. LeafyOS is an educational project and should
be handled with care. This project is meant for learning and experimentation, not
for use as a daily operating system.

Purpose:
LeafyOS is built to be education-based and productivity-focused. It aims to provide:
- A safe environment for learning computer science concepts
- Tools for quizzes, notes, and study
- Basic productivity modules
- Simple hardware drivers for essential devices
- A clear example of how an operating system is structured

Motto:
"Never Back Down, Never Give Up"

Future Roadmap:
LeafyOS is still growing. Planned features include:
- Quiz engine module for interactive learning
- Notes module with save/load functionality
- Improved GUI with window management
- Networking tools for safe research
- File manager for organizing documents
- Expanded driver support for more hardware

Credits:
LeafyOS is created and developed by leafydevx.
This project represents determination, creativity, and persistence in learning computer science.

Final Note:
LeafyOS is not just an operating system project—it is a learning journey.
Every module, driver, and file represents progress in understanding how
computers work at the deepest level. This project is proof that with
motivation and persistence, even complex systems can be built step by step.