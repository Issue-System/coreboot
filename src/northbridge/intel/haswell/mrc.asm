;; Generated with r2dumpbin (https://github.com/mytbk/r2dumpbin)

bits 32

HASWELL_FAMILY_MOBILE equ 0x306c0
HASWELL_FAMILY_ULT equ 0x40650
HASWELL_FAMILY_GT3E equ 0x40660

global mrc_entry
global do_raminit

extern dummy_func
extern mrc_printk
extern mrc_setmem
extern mrc_memcpy
extern memcpy ; pass parameters by stack
extern mrc_fillword
extern mrc_zeromem
extern mrc_highest_bit
extern mrc_main
extern mrc_alloc
extern mrc_sku_type
extern is_desktop_pch
extern is_mobile_pch
extern mrc_pch_revision
extern nb_usb2_ports
extern nb_usb3_ports
extern fcn_fffa0250
extern printGuid
extern usleep
extern mrc_pch_iobp_read
extern mrc_pch_iobp_update
extern mrc_pch_init
extern dmi_check_link
extern pei_get_platform_memsize
extern pei_choose_ranges
extern crc32
extern crc16
extern rtc_wait
extern pci_setup_bridge

; PEI services
extern PeiServiceGetBootMode
extern PeiServiceNotifyPpi
extern init_mrc_pei

extern PchMeUmaDesc

global gEfiPeiStallPpiGuid
extern PeiStall
global gWdtPpiGuid
global mEfiMemoryRestoreDataGuid
global gEfiPeiReadOnlyVariablePpiGuid
global gPchMeUmaPpiGuid
global haswell_family_model
global haswell_stepping
global gPeiSmbusPolicyPpiGuid
global gEfiPeiSmbusPpiGuid
global gEfiPeiMemoryDiscoveredPpiGuid
global fcn_fffc5c8e

extern mrc_init_memory

;; mrc_init_memory.asm

global ref_fffcd4a4
global ref_fffcd4e4

extern locate_hob
extern fcn_fffa1d20
global fcn_fffa56ac
global fcn_fffa7e71
global fcn_fffa7ecd
global fcn_fffa8fb6
global fcn_fffa9196
global fcn_fffa948c
global fcn_fffa94dd
global fcn_fffaa884
global fcn_fffaa9d1
global fcn_fffaacb1
global fcn_fffab280
global fcn_fffab4c0
global fcn_fffad6f1
global fcn_fffaddd4
global fcn_fffadf82
global fcn_fffadfcf
global fcn_fffae02a
global fcn_fffae04b
global fcn_fffae06c
global fcn_fffae80e
global fcn_fffb2e66
global fcn_fffb365a
global fcn_fffb3f6c
extern fcn_fffb5038
global fcn_fffb514c
global fcn_fffb5535
global fcn_fffb568f
global fcn_fffb5763
global fcn_fffb5811
global fcn_fffb58c8
global fcn_fffb59af
global fcn_fffb5a70
global fcn_fffb5c9f
global fcn_fffb5cbc
global fcn_fffb8040
global fcn_fffb85ca
global fcn_fffb8625
global fcn_fffb89f8
global fcn_fffb8d2d
global fcn_fffba408
global fcn_fffbb819
global fcn_fffbd4c2
global fcn_fffbd5ac
global fcn_fffbd7da
extern fcn_fffc6438
extern mrc_get_timestamp

;; pei_usb

extern mrc_init_usb
global ref_fffcb998
global ref_fffcc988

;; mrc_end_of_pei

extern ref_fffcd554
extern ref_fffcd560
global wstr_pchinitpei

;; raminit_frag
extern mrc_frag_smbus
extern mrc_frag_pch
extern fcn_fffc5bf6
global fcn_fffb9720
global gPchDmiTcVcPpiGuid
global ref_fffcc97c
global ref_fffcca30
global ref_fffcd560
extern io_fffa4188
extern io_fffa4235
extern io_fffa42c3
extern io_fffa43e1
extern io_fffa445e
extern io_fffa44ad
extern io_fffa476b
extern superfrag_fffa4025
extern load_usb
extern fill_pei_ram_data
extern fill_ram_param
extern mrc_set_bars
extern frag_fffa3eec
extern frag_fffa3f8c
global ref_fffcc8bc
extern frag_fffa54e7
global ref_fffcc910
extern frag_fffa3fd4
extern frag_fffa3a17
extern frag_fffa4507
global fcn_fffa0516
extern frag_fffa53b4
extern frag_fffa536b
extern frag_fffa549a

;; mrc_wdt

extern mrc_wdt_ppi

;; other frags
extern frag_fffa5d3c
extern frag_fffa627c
extern frag_fffa0ff3
extern frag_fffa1e83
extern copy_spd
extern frag_fffa9029
extern frag_fffba1df
extern frag_fffba341
extern freq_sel

;; misc
global fcn_fffb2d76
global fcn_fffb1d24
global fcn_fffb2062
global fcn_fffc8290
global fcn_fffa91af
global fcn_fffa0020
extern do_smbus_op
extern udiv64
extern ref_fffcbc04

global fcn_fffbd356
global fcn_fffbd30a
global fcn_fffbd1e7
global fcn_fffbd184
global fcn_fffbd1b3
global fcn_fffbd106
global fcn_fffbd29a
global fcn_fffbd213
global fcn_fffbd0e4
global fcn_fffbd0c8
global fcn_fffbd046
global fcn_fffbd01d

global fcn_fffbce60
global fcn_fffb73ef
global fcn_fffb6f52
global fcn_fffbcc31
global fcn_fffbc869
global fcn_fffbc643
global fcn_fffbc441
global fcn_fffb7633
global fcn_fffbc277
global fcn_fffbc075
global fcn_fffbbe9c
global fcn_fffbca4d
global fcn_fffbbcd4
global fcn_fffbbb0c
global fcn_fffb7e5c
global fcn_fffb7c94
global fcn_fffb7acc
global fcn_fffb7866

extern frag_fffa5810
extern frag_fffa58f7
extern wait_5030
extern wait_5084
global fcn_fffab1b6
;;

mrc_entry:
mov ecx, esp
mov esp, 0xff800000
push ecx
push eax
mov al, 1
out 0x80, al
cld
call mrc_main
pop ecx
pop ecx
mov esp, ecx
push eax
mov al, 2
out 0x80, al
pop eax
ret

loc_fffa001e:
db 0x00
db 0x00

fcn_fffa0020:
push ebp
add eax, 0xdf
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
lea esp, [esp - 8]
mov dword [ebp - 0x10], eax
mov ecx, dword [edx + 9]

loc_fffa0037:
imul eax, ebx, 0x2fa
mov esi, dword [ebp - 0x10]
lea eax, [esi + eax + 5]
xor esi, esi
mov dword [ebp - 0x14], eax

loc_fffa0049:
imul eax, esi, 0x14f
mov edi, dword [ebp - 0x14]
lea eax, [edi + eax + 8]
movzx edi, byte [ecx + 0x10]
mov word [eax + 0x128], di
mov di, word [ecx + 8]
mov word [eax + 0x12a], di
mov di, word [ecx + 0x20]
mov word [eax + 0x12c], di
mov di, word [ecx + 0x1e]
mov word [eax + 0x12e], di
mov di, word [ecx + 0xe]
mov word [eax + 0x130], di
mov di, word [ecx + 0x1c]
mov word [eax + 0x132], di
mov di, word [ecx + 0xa]
mov word [eax + 0x134], di
mov di, word [ecx + 0x22]
mov word [eax + 0x136], di
mov di, word [ecx + 0x14]
mov word [eax + 0x138], di
mov di, word [ecx + 0xc]
mov word [eax + 0x13e], di
cmp byte [edx], 5
jbe short loc_fffa00d6  ; jbe 0xfffa00d6
mov di, word [ecx + 0x68]
mov word [eax + 0x140], di
jmp short loc_fffa00df  ; jmp 0xfffa00df

loc_fffa00d6:
mov word [eax + 0x140], 0

loc_fffa00df:
mov di, word [ecx + 0x16]
inc esi
mov word [eax + 0x142], di
mov di, word [ecx + 0x1a]
mov word [eax + 0x148], di
mov di, word [ecx + 0x12]
mov word [eax + 0x14a], di
cmp esi, 2
mov di, word [ecx + 0x18]
mov word [eax + 0x14c], di
jne loc_fffa0049  ; jne 0xfffa0049
inc ebx
cmp ebx, 2
jne loc_fffa0037  ; jne 0xfffa0037
pop eax
pop edx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa0126:
push ebp
or edx, 0x80000000
mov ebp, esp
push edi
push esi
push ebx
push esi
mov dword [ebp - 0x10], 0xa

loc_fffa013a:
mov dword [eax + 0x6c04], ecx
lea esi, [eax + 0x6c00]
mov dword [eax + 0x6c00], edx
mov ebx, 0x64

loc_fffa0151:
mov edi, dword [esi]
test edi, edi
jns short loc_fffa015a  ; jns 0xfffa015a
dec ebx
jne short loc_fffa0151  ; jne 0xfffa0151

loc_fffa015a:
mov bx, word [eax + 0x6c00]
cmp bx, 0x40
je short loc_fffa016c  ; je 0xfffa016c
dec dword [ebp - 0x10]
jne short loc_fffa013a  ; jne 0xfffa013a

loc_fffa016c:
pop ebx
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa03ca:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov esi, dword [ebp + 0x10]
mov ebx, dword [ebp + 0xc]
add esi, ebx
jmp short loc_fffa03ef  ; jmp 0xfffa03ef

loc_fffa03d9:  ; not directly referenced
movzx edx, byte [ebx]
mov eax, dword [0xff7d753c]
inc ebx
test eax, eax
je short loc_fffa03ef  ; je 0xfffa03ef
sub esp, 0xc
push edx
call eax  ; ucall
add esp, 0x10

loc_fffa03ef:  ; not directly referenced
cmp ebx, esi
jne short loc_fffa03d9  ; jne 0xfffa03d9
lea esp, [ebp - 8]
or eax, 0xffffffff
pop ebx
pop esi
pop ebp
ret

fcn_fffa0516:
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
lea esp, [esp - 0x1c]
mov dword [ebp - 0x20], edx
mov word [ebp - 0x1a], cx
call haswell_family_model
mov ebx, eax
call haswell_stepping
dec eax
sete dl
cmp ebx, HASWELL_FAMILY_MOBILE
sete al
and dl, al
mov ax, word [ebp - 0x1a]
mov byte [ebp - 0x1b], dl
je short loc_fffa0570  ; je 0xfffa0570
and eax, 0xfffffffd
mov dx, word [ebp - 0x1a]
cmp ax, 0x21
sete al
sub edx, 0x20
movzx eax, al
cmp dx, 1
ja loc_fffa0608  ; ja 0xfffa0608
jmp near loc_fffa05fc  ; jmp 0xfffa05fc

loc_fffa0570:
and eax, 0xfffffffd
mov dx, word [ebp - 0x1a]
cmp ax, 0x14
sete al
sub edx, 0x13
movzx eax, al
cmp dx, 1
ja short loc_fffa05e0  ; ja 0xfffa05e0
jmp short loc_fffa05ea  ; jmp 0xfffa05ea

loc_fffa058c:
movzx edx, word [ebp - 0x1a]
mov ecx, dword [ebp - 0x20]
mov eax, edi
call fcn_fffa0126  ; call 0xfffa0126
mov edx, esi
mov ecx, dword [ebp + 8]
mov eax, edi
call fcn_fffa0126  ; call 0xfffa0126
cmp byte [ebp - 0x1b], 0
mov esi, dword [edi + 0x6c04]
mov ecx, ebx
mov edx, 2
jne short loc_fffa05be  ; jne 0xfffa05be
mov edx, 3

loc_fffa05be:
mov eax, edi
call fcn_fffa0126  ; call 0xfffa0126
jmp short loc_fffa061a  ; jmp 0xfffa061a

loc_fffa05c7:
mov ecx, ebx
mov edx, 1
jmp short loc_fffa05d7  ; jmp 0xfffa05d7

loc_fffa05d0:
mov ecx, ebx
mov edx, 2

loc_fffa05d7:
mov eax, edi
call fcn_fffa0126  ; call 0xfffa0126
jmp short loc_fffa058c  ; jmp 0xfffa058c

loc_fffa05e0:
cmp eax, 1
sbb ebx, ebx
add ebx, 4
jmp short loc_fffa05f2  ; jmp 0xfffa05f2

loc_fffa05ea:
cmp eax, 1
sbb ebx, ebx
add ebx, 2

loc_fffa05f2:
cmp eax, 1
sbb esi, esi
add esi, 8
jmp short loc_fffa05d0  ; jmp 0xfffa05d0

loc_fffa05fc:
cmp eax, 1
sbb ebx, ebx
add ebx, 7
mov esi, ebx
jmp short loc_fffa05c7  ; jmp 0xfffa05c7

loc_fffa0608:
cmp eax, 1
sbb ebx, ebx
add ebx, 9
cmp eax, 1
sbb esi, esi
add esi, 7
jmp short loc_fffa05c7  ; jmp 0xfffa05c7

loc_fffa061a:
lea esp, [esp + 0x1c]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa0625:
push ebp
mov ebp, esp
push edi
mov edi, 0x10100
push esi
push ebx
lea esp, [esp - 0x7c]
mov dword [ebp - 0x44], edx
mov dword [ebp - 0x34], 0
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x5c], eax
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov eax, dword [eax + 0x48]
mov dword [ebp - 0x6c], eax
call haswell_family_model
mov dword [ebp - 0x70], eax
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and eax, 0xfc000000
and edx, 0xfc000000
mov dx, word [edx + 0x50]
or edx, 2
mov word [eax + 0x50], dx
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov byte [ebp - 0x40], 0
mov ax, word [eax + 0x10000]
mov dword [ebp - 0x2c], 0
inc ax
setne byte [ebp - 0x4b]
xor ebx, ebx
jmp near loc_fffa0743  ; jmp 0xfffa0743

loc_fffa06aa:
movzx esi, bl
mov eax, dword [0xf0000060]
shl esi, 0xc
and eax, 0xfc000000
lea eax, [esi + eax + 0xe0000]
mov ax, word [eax]
inc ax
je short loc_fffa0742  ; je 0xfffa0742
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea eax, [esi + eax + 0xe0018]
mov dword [eax], edi
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea eax, [esi + eax + 0xe0019]
movzx eax, byte [eax]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
mov ecx, eax
shl ecx, 0x14
lea edx, [esi + edx + 0xe001a]
mov byte [edx], 0xff
mov edx, dword [0xf0000060]
and edx, 0xfc000000
add edx, ecx
mov word [edx], 0
call pci_setup_bridge  ; call 0xfffa0172
mov byte [ebp - 0x40], al
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov dl, byte [ebp - 0x40]
movzx edi, dl
inc edi
shl edi, 8
lea eax, [esi + eax + 0xe001a]
mov byte [eax], dl

loc_fffa0742:
inc ebx

loc_fffa0743:
call nb_usb3_ports
cmp bl, al
jb loc_fffa06aa  ; jb 0xfffa06aa
mov dword [ebp - 0x60], 0
mov dword [ebp - 0x50], 0
mov byte [ebp - 0x4a], 0
mov byte [ebp - 0x48], 1
jmp near loc_fffa0833  ; jmp 0xfffa0833

loc_fffa076b:
mov eax, dword [0xf0000060]
mov ebx, esi
shl ebx, 0xf
and eax, 0xfc000000
add eax, dword [ebp - 0x54]
mov dword [ebp - 0x58], ebx
add eax, ebx
mov ax, word [eax]
inc ax
je loc_fffa0826  ; je 0xfffa0826
mov eax, dword [0xf0000060]
mov edi, dword [ebp - 0x54]
add edi, ebx
and eax, 0xfc000000
mov byte [ebp - 0x49], 0
lea eax, [edi + eax + 0xe]
mov bl, byte [eax]
sar bl, 7
and ebx, 7

loc_fffa07ac:
movzx ecx, byte [ebp - 0x49]
mov eax, dword [0xf0000060]
mov edx, ecx
and eax, 0xfc000000
shl edx, 0xc
add eax, dword [ebp - 0x54]
mov dword [ebp - 0x78], edx
add edx, edi
mov dword [ebp - 0x64], edx
mov edx, dword [ebp - 0x78]
add edx, dword [ebp - 0x58]
add eax, edx
mov ax, word [eax]
inc ax
je short loc_fffa081e  ; je 0xfffa081e
sub esp, 0xc
lea eax, [ebp - 0x2c]
push eax
mov edx, esi
mov eax, dword [ebp - 0x68]
call fcn_fffa0250  ; call 0xfffa0250
mov edx, dword [ebp - 0x2c]
add dword [ebp - 0x60], edx
mov eax, dword [0xf0000060]
mov ecx, dword [ebp - 0x64]
and eax, 0xfc000000
add esp, 0x10
lea eax, [ecx + eax + 0xa]
mov ax, word [eax]
cmp ax, 0x300
jne short loc_fffa081e  ; jne 0xfffa081e
cmp byte [ebp - 0x4a], 1
je short loc_fffa081e  ; je 0xfffa081e
mov dword [ebp - 0x50], 2
mov byte [ebp - 0x4a], 1

loc_fffa081e:
inc byte [ebp - 0x49]
cmp byte [ebp - 0x49], bl
jbe short loc_fffa07ac  ; jbe 0xfffa07ac

loc_fffa0826:
inc esi
cmp esi, 0x20
jne loc_fffa076b  ; jne 0xfffa076b
inc byte [ebp - 0x48]

loc_fffa0833:
mov al, byte [ebp - 0x40]
cmp byte [ebp - 0x48], al
ja short loc_fffa08a8  ; ja 0xfffa08a8
movzx eax, byte [ebp - 0x48]
xor esi, esi
mov ebx, eax
mov dword [ebp - 0x68], eax
shl ebx, 0x14
mov dword [ebp - 0x54], ebx
jmp near loc_fffa076b  ; jmp 0xfffa076b

loc_fffa0851:
mov ecx, dword [0xf0000060]
mov ebx, eax
shl ebx, 0xf
and ecx, 0xfc000000
add ecx, edx
add ecx, ebx
mov cx, word [ecx]
inc cx
je short loc_fffa089f  ; je 0xfffa089f
mov ecx, dword [0xf0000060]
add ebx, edx
and ecx, 0xfc000000
lea ecx, [ebx + ecx + 0xa]
mov cx, word [ecx]
cmp cx, 0x604
jne short loc_fffa089f  ; jne 0xfffa089f
mov ecx, dword [0xf0000060]
and ecx, 0xfc000000
lea ecx, [ebx + ecx + 0x18]
mov dword [ecx], 0

loc_fffa089f:
inc eax
cmp eax, 0x20
jne short loc_fffa0851  ; jne 0xfffa0851
dec byte [ebp - 0x40]

loc_fffa08a8:
cmp byte [ebp - 0x40], 0
je short loc_fffa08db  ; je 0xfffa08db
movzx edx, byte [ebp - 0x40]
xor eax, eax
shl edx, 0x14
jmp short loc_fffa0851  ; jmp 0xfffa0851

loc_fffa08b9:
movzx eax, bl
mov edx, dword [0xf0000060]
and edx, 0xfc000000
inc ebx
shl eax, 0xc
lea eax, [edx + eax + 0xe0018]
mov dword [eax], 0
jmp short loc_fffa08dd  ; jmp 0xfffa08dd

loc_fffa08db:
xor ebx, ebx

loc_fffa08dd:
call nb_usb3_ports
cmp bl, al
jb short loc_fffa08b9  ; jb 0xfffa08b9
mov edx, dword [ebp - 0x44]
lea edi, [ebp - 0x27]
mov esi, ref_fffc9e28  ; mov esi, 0xfffc9e28
mov ecx, 0xf
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov eax, dword [edx + 5]
lea ebx, [ebp - 0x27]
lea esi, [ebp - 0x18]
mov al, byte [eax + 6]
mov byte [ebp - 0x64], al
mov eax, dword [edx + 0xd]
mov al, byte [eax + 4]
mov dword [ebp - 0x2c], 0
mov byte [ebp - 0x68], al
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov ax, word [eax + 0x54]
and eax, 0xe
mov word [ebp - 0x58], ax
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov dword [ebp - 0x48], ebx
mov dword [ebp - 0x3c], esi
mov dword [ebp - 0x40], ebx
mov byte [ebp - 0x54], 0xff
mov ax, word [eax + 0x10000]
inc ax
setne byte [ebp - 0x71]

loc_fffa0950:
mov ebx, dword [ebp - 0x40]
mov esi, dword [ebp - 0x40]
movzx edx, byte [ebx]
movzx ecx, byte [ebx + 1]
mov bl, byte [ebx + 2]
mov byte [ebp - 0x4a], bl
mov ebx, dword [ebp - 0x58]
test word [esi + 3], bx
je loc_fffa0c37  ; je 0xfffa0c37
shl edx, 0x14
mov eax, dword [0xf0000060]
shl ecx, 0xf
and eax, 0xfc000000
add ecx, edx
movzx edx, byte [ebp - 0x4a]
shl edx, 0xc
lea edi, [ecx + edx]
lea eax, [edi + eax + 0xba]
mov al, byte [eax]
test al, 0x40
je loc_fffa0c37  ; je 0xfffa0c37
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea edx, [edi + eax + 0x18]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea eax, [edi + eax + 0x18]
mov eax, dword [eax]
and eax, 0xff0000ff
or eax, 0x10100
mov dword [edx], eax
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov word [eax + 0x100000], 0
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov ax, word [eax + 0x100000]
inc ax
je loc_fffa0c37  ; je 0xfffa0c37
mov eax, dword [0xf0000060]
xor esi, esi
and eax, 0xfc000000
mov bl, byte [eax + 0x10000e]
sar bl, 7
and ebx, 7

loc_fffa0a0b:
mov edx, esi
mov eax, dword [0xf0000060]
movzx ecx, dl
and eax, 0xfc000000
mov edx, ecx
shl edx, 0xc
lea eax, [eax + edx + 0x100000]
mov ax, word [eax]
inc ax
je short loc_fffa0a49  ; je 0xfffa0a49
sub esp, 0xc
lea eax, [ebp - 0x2c]
push eax
xor edx, edx
mov eax, 1
call fcn_fffa0250  ; call 0xfffa0250
mov eax, dword [ebp - 0x2c]
add esp, 0x10
add dword [ebp - 0x34], eax

loc_fffa0a49:
inc esi
mov edx, esi
cmp dl, bl
jbe short loc_fffa0a0b  ; jbe 0xfffa0a0b
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov al, byte [eax + 0x10000b]
cmp al, 3
jne short loc_fffa0a95  ; jne 0xfffa0a95
cmp byte [ebp - 0x68], 0
jne short loc_fffa0a86  ; jne 0xfffa0a86
cmp byte [ebp - 0x64], 0
sete al
test byte [ebp - 0x71], al
je short loc_fffa0a7b  ; je 0xfffa0a7b
jmp near loc_fffa0c12  ; jmp 0xfffa0c12

loc_fffa0a7b:
cmp dword [ebp - 0x50], 2
jne short loc_fffa0a86  ; jne 0xfffa0a86
jmp near loc_fffa0c12  ; jmp 0xfffa0c12

loc_fffa0a86:
cmp dword [ebp - 0x50], 1
je loc_fffa0c0b  ; je 0xfffa0c0b
jmp near loc_fffa0be0  ; jmp 0xfffa0be0

loc_fffa0a95:
cmp al, 6
jne loc_fffa0c12  ; jne 0xfffa0c12
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea eax, [edi + eax + 0x19]
mov byte [eax], 1
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea eax, [edi + eax + 0x1a]
mov byte [eax], 0xff
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov word [eax + 0x100000], 0
mov eax, 1
call pci_setup_bridge  ; call 0xfffa0172
mov byte [ebp - 0x49], al
mov al, 1
jmp short loc_fffa0b47  ; jmp 0xfffa0b47

loc_fffa0ae3:
mov byte [ebp - 0x4c], dl
mov esi, edx
shl esi, 0xf
mov ebx, dword [0xf0000060]
and ebx, 0xfc000000
mov dword [ebp - 0x80], esi
add ebx, ecx
add ebx, dword [ebp - 0x80]
add esi, ecx
mov dword [ebp - 0x78], esi
mov bx, word [ebx]
inc bx
je short loc_fffa0b40  ; je 0xfffa0b40
mov ebx, dword [0xf0000060]
and ebx, 0xfc000000
lea ebx, [esi + ebx + 0xa]
mov bx, word [ebx]
cmp bx, 0x300
jne short loc_fffa0b40  ; jne 0xfffa0b40
sub esp, 0xc
lea ecx, [ebp - 0x34]
push ecx
movzx edx, dl
xor ecx, ecx
movzx eax, al
mov bl, 1
call fcn_fffa0250  ; call 0xfffa0250
add esp, 0x10
jmp short loc_fffa0bb1  ; jmp 0xfffa0bb1

loc_fffa0b40:
inc edx
cmp edx, 0x20
jne short loc_fffa0ae3  ; jne 0xfffa0ae3
inc eax

loc_fffa0b47:
cmp al, byte [ebp - 0x49]
ja short loc_fffa0b56  ; ja 0xfffa0b56
movzx ecx, al
xor edx, edx
shl ecx, 0x14
jmp short loc_fffa0ae3  ; jmp 0xfffa0ae3

loc_fffa0b56:
xor ebx, ebx
jmp short loc_fffa0bb1  ; jmp 0xfffa0bb1

loc_fffa0b5a:
mov ecx, dword [0xf0000060]
mov esi, eax
shl esi, 0xf
and ecx, 0xfc000000
add ecx, edx
add ecx, esi
mov cx, word [ecx]
inc cx
je short loc_fffa0ba8  ; je 0xfffa0ba8
mov ecx, dword [0xf0000060]
add esi, edx
and ecx, 0xfc000000
lea ecx, [esi + ecx + 0xa]
mov cx, word [ecx]
cmp cx, 0x604
jne short loc_fffa0ba8  ; jne 0xfffa0ba8
mov ecx, dword [0xf0000060]
and ecx, 0xfc000000
lea ecx, [esi + ecx + 0x18]
mov dword [ecx], 0

loc_fffa0ba8:
inc eax
cmp eax, 0x20
jne short loc_fffa0b5a  ; jne 0xfffa0b5a
dec byte [ebp - 0x49]

loc_fffa0bb1:
cmp byte [ebp - 0x49], 0
je short loc_fffa0bc2  ; je 0xfffa0bc2
movzx edx, byte [ebp - 0x49]
xor eax, eax
shl edx, 0x14
jmp short loc_fffa0b5a  ; jmp 0xfffa0b5a

loc_fffa0bc2:
mov eax, dword [0xf0000060]
and eax, 0xfc000000
dec bl
lea eax, [edi + eax + 0x18]
mov dword [eax], 0
jne short loc_fffa0c12  ; jne 0xfffa0c12
cmp dword [ebp - 0x50], 1
je short loc_fffa0c12  ; je 0xfffa0c12

loc_fffa0be0:
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea edx, [edi + eax + 0x3e]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea eax, [edi + eax + 0x3e]
mov ax, word [eax]
or eax, 0x18
mov word [edx], ax
mov bl, byte [ebp - 0x4a]
mov byte [ebp - 0x54], bl

loc_fffa0c0b:
mov dword [ebp - 0x50], 1

loc_fffa0c12:
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea edx, [edi + eax + 0x18]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
lea eax, [edi + eax + 0x18]
mov eax, dword [eax]
and eax, 0xff0000ff
mov dword [edx], eax

loc_fffa0c37:
add dword [ebp - 0x40], 5
mov esi, dword [ebp - 0x3c]
cmp dword [ebp - 0x40], esi
jne loc_fffa0950  ; jne 0xfffa0950
xor eax, eax
cmp byte [ebp - 0x54], 0xff

loc_fffa0c4d:
jne short loc_fffa0cb3  ; jne 0xfffa0cb3
mov edx, dword [ebp - 0x44]
mov eax, dword [edx + 5]
mov ebx, dword [eax + 8]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov edx, ebx
or edx, 4
mov dword [eax + 0x10010], edx
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov dword [eax + 0x10014], 0
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and eax, 0xfc000000
and edx, 0xfc000000
mov dx, word [edx + 0x10004]
or edx, 6
cmp byte [ebp - 0x4b], 0
mov word [eax + 0x10004], dx
jne short loc_fffa0d08  ; jne 0xfffa0d08
jmp near loc_fffa0eae  ; jmp 0xfffa0eae

loc_fffa0cb3:
cmp byte [ebp - 0x54], al
je short loc_fffa0cfc  ; je 0xfffa0cfc
mov esi, dword [ebp - 0x48]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
movzx ebx, byte [esi + 1]
movzx ecx, byte [esi]
shl ecx, 0x14
shl ebx, 0xf
add ebx, ecx
movzx ecx, byte [esi + 2]
shl ecx, 0xc
add ecx, ebx
lea ebx, [ecx + edx + 0x3e]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
lea edx, [ecx + edx + 0x3e]
mov dx, word [edx]
or edx, 4
mov word [ebx], dx

loc_fffa0cfc:
inc eax
add dword [ebp - 0x48], 5
cmp al, 3
jmp near loc_fffa0c4d  ; jmp 0xfffa0c4d

loc_fffa0d08:
mov edx, dword [ebp - 0x44]
cmp dword [ebp - 0x50], 0
mov eax, dword [edx + 5]
je short loc_fffa0d1a  ; je 0xfffa0d1a
cmp byte [eax + 6], 0
jne short loc_fffa0d20  ; jne 0xfffa0d20

loc_fffa0d1a:
cmp byte [eax + 5], 0
jne short loc_fffa0d2a  ; jne 0xfffa0d2a

loc_fffa0d20:
cmp byte [eax + 5], 1
jne loc_fffa0eae  ; jne 0xfffa0eae

loc_fffa0d2a:
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
and eax, 0xfc000000
mov esi, dword [ebp - 0x44]
mov dx, word [edx + 0x50]
and dl, 7
mov word [eax + 0x50], dx
mov eax, dword [0xf0000060]
mov ecx, dword [esi + 5]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
and eax, 0xfc000000
mov cl, byte [ecx + 4]
shl ecx, 3
mov dl, byte [edx + 0x50]
or edx, ecx
mov byte [eax + 0x50], dl
mov edx, dword [0xf0000060]
mov eax, dword [0xf0000060]
and edx, 0xfc000000
and eax, 0xfc000000
mov ax, word [eax + 0x50]
and ah, 0xfc
or ah, 2
mov word [edx + 0x50], ax
mov eax, dword [esi + 5]
mov al, byte [eax + 7]
cmp al, 1
jne short loc_fffa0dc4  ; jne 0xfffa0dc4
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
and eax, 0xfc000000
mov dl, byte [edx + 0x10062]
and edx, 0xfffffff9
jmp short loc_fffa0e11  ; jmp 0xfffa0e11

loc_fffa0dc4:
cmp al, 2
jne short loc_fffa0df2  ; jne 0xfffa0df2
mov edx, dword [0xf0000060]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
and edx, 0xfc000000
mov al, byte [eax + 0x10062]
and eax, 0xfffffff9
or eax, 2
mov byte [edx + 0x10062], al
jmp short loc_fffa0e17  ; jmp 0xfffa0e17

loc_fffa0df2:
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
and eax, 0xfc000000
mov dl, byte [edx + 0x10062]
or edx, 6

loc_fffa0e11:
mov byte [eax + 0x10062], dl

loc_fffa0e17:
mov edx, dword [ebp - 0x44]
mov eax, dword [edx + 5]
cmp byte [eax + 6], 0
je short loc_fffa0e48  ; je 0xfffa0e48
cmp dword [ebp - 0x50], 0
je short loc_fffa0e48  ; je 0xfffa0e48
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
and eax, 0xfc000000
mov dx, word [edx + 0x50]
or edx, 2
jmp short loc_fffa0e65  ; jmp 0xfffa0e65

loc_fffa0e48:
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
and eax, 0xfc000000
mov dx, word [edx + 0x50]
and edx, 0xfffffffd

loc_fffa0e65:
mov word [eax + 0x50], dx
sub esp, 0xc
lea eax, [ebp - 0x30]
xor ecx, ecx
push eax
mov edx, 2
xor eax, eax
call fcn_fffa0250  ; call 0xfffa0250
mov edx, dword [ebp - 0x44]
add esp, 0x10
cmp byte [edx], 0xb
jbe loc_fffa0ff3  ; jbe 0xfffa0ff3
mov eax, dword [edx + 5]
cmp byte [eax + 0xc], 1
jne loc_fffa0ff3  ; jne 0xfffa0ff3
mov eax, dword [ebx + 0xc7204]
or eax, 8
mov dword [ebx + 0xc7204], eax
jmp near loc_fffa0ff3  ; jmp 0xfffa0ff3

loc_fffa0eae:
mov ecx, dword [ebp - 0x5c]
sub esp, 0xc
lea edx, [ebp - 0x2c]
mov eax, dword [ecx]
push edx
push 0
push 0
push gEfiPeiStallPpiGuid
push ecx
call dword [eax + 0x20]  ; ucall
add esp, 0x20
cmp dword [ebp - 0x70], HASWELL_FAMILY_ULT
je short loc_fffa0f2f  ; je 0xfffa0f2f

loc_fffa0ed3:
mov edx, dword [0xf0000060]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
and edx, 0xfc000000
mov ax, word [eax + 0x50]
and ax, 0xfc05
or eax, 2
mov word [edx + 0x50], ax
mov edx, dword [ebp - 0x44]
mov eax, dword [edx + 5]
mov word [eax + 2], 0
mov eax, dword [edx + 5]
mov byte [eax + 4], 0
mov eax, dword [0xf0000060]
mov edx, dword [0xf0000060]
and eax, 0xfc000000
and edx, 0xfc000000
mov dl, byte [edx + 0x54]
and edx, 0xffffffef
mov byte [eax + 0x54], dl
jmp near loc_fffa0ff3  ; jmp 0xfffa0ff3

loc_fffa0f2f:
mov eax, dword [ebx + 0x130040]
lea esi, [ebx + 0x130040]
or eax, 0x80000000
cmp byte [ebp - 0x4b], 0
mov dword [ebx + 0x130040], eax
jne short loc_fffa0f83  ; jne 0xfffa0f83

loc_fffa0f4c:
mov ebx, dword [ebp - 0x6c]
and ebx, 0xfffffffe
mov eax, dword [ebx + 0x5f0c]
lea esi, [ebx + 0x5f0c]
or eax, 1
mov dword [ebx + 0x5f0c], eax
mov eax, dword [ebp - 0x2c]
push edx
push 1
push eax
push dword [ebp - 0x5c]
call dword [eax + 4]  ; ucall
add esp, 0x10
cmp byte [ebp - 0x4b], 0
je loc_fffa0ed3  ; je 0xfffa0ed3
jmp short loc_fffa0fb9  ; jmp 0xfffa0fb9

loc_fffa0f83:
mov edx, dword [ebx + 0x130040]
mov edi, dword [ebp - 0x2c]
mov ebx, 0xbb9
jmp short loc_fffa0fab  ; jmp 0xfffa0fab

loc_fffa0f93:
mov edx, dword [esi]
push eax
mov dword [ebp - 0x7c], edx
push 0x3e8
push edi
push dword [ebp - 0x5c]
call dword [edi + 4]  ; ucall
add esp, 0x10
mov edx, dword [ebp - 0x7c]

loc_fffa0fab:
and edx, 0x40000000
je short loc_fffa0f4c  ; je 0xfffa0f4c
dec bx
jne short loc_fffa0f93  ; jne 0xfffa0f93
jmp short loc_fffa0f4c  ; jmp 0xfffa0f4c

loc_fffa0fb9:
mov edx, dword [ebx + 0x5f0c]
mov edi, dword [ebp - 0x2c]
mov ebx, 0xbb9
jmp short loc_fffa0fe1  ; jmp 0xfffa0fe1

loc_fffa0fc9:
mov edx, dword [esi]
push eax
mov dword [ebp - 0x7c], edx
push 0x3e8
push edi
push dword [ebp - 0x5c]
call dword [edi + 4]  ; ucall
add esp, 0x10
mov edx, dword [ebp - 0x7c]

loc_fffa0fe1:
and dh, 2
je loc_fffa0ed3  ; je 0xfffa0ed3
dec bx
jne short loc_fffa0fc9  ; jne 0xfffa0fc9
jmp near loc_fffa0ed3  ; jmp 0xfffa0ed3

loc_fffa0ff3:
call frag_fffa0ff3
mov eax, dword [ebp - 0x34]
mov ecx, dword [ebp - 0x30]
mov ebx, dword [ebp - 0x44]
mov edx, dword [ebx + 9]
cmp byte [edx + 3], 0
jne short loc_fffa10c0  ; jne 0xfffa10c0
add eax, ecx
add eax, dword [ebp - 0x60]
cmp eax, 0x3fffffff
mov edx, dword [ebx + 5]
jbe short loc_fffa1094  ; jbe 0xfffa1094
mov word [edx], 0x800
jmp short loc_fffa10c0  ; jmp 0xfffa10c0

loc_fffa1094:
cmp eax, 0x2fffffff
jbe short loc_fffa10a2  ; jbe 0xfffa10a2
mov word [edx], 0x700
jmp short loc_fffa10c0  ; jmp 0xfffa10c0

loc_fffa10a2:
cmp eax, 0x1fffffff
jbe short loc_fffa10b0  ; jbe 0xfffa10b0
mov word [edx], 0x600
jmp short loc_fffa10c0  ; jmp 0xfffa10c0

loc_fffa10b0:
cmp eax, 0x10000000
sbb eax, eax
xor al, al
add ax, 0x500
mov word [edx], ax

loc_fffa10c0:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

do_raminit:
push ebp
xor edx, edx
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x5ac]
mov esi, ref_fffc9e38  ; mov esi, 0xfffc9e38
push ebx
mov ebx, 0xd
lea esp, [esp - 0x65c]
mov ecx, ebx
mov dword [ebp - 0x63c], eax
mov al, dl
rep stosb  ; rep stosb byte es:[edi], al
mov ebx, ecx
mov ecx, dword [ebp - 0x63c]
lea edi, [ebp - 0x59f]
mov dword [ebp - 0x5dc], 0
mov dword [ebp - 0x5d8], 0
mov dword [ebp - 0x5d4], 0
mov dword [ebp - 0x5d0], PeiStall
mov byte [ebp - 0x60a], 1
mov eax, dword [ecx + 0x1e]
mov ecx, 0xd
mov dword [ebp - 0x609], eax
mov al, dl
rep stosb  ; rep stosb byte es:[edi], al
lea eax, [ebp - 0x59f]
lea edi, [ebp - 0x635]
mov dword [ebp - 0x5c8], eax
mov cl, 3
mov al, dl
mov dword [ebp - 0x5cc], 1
rep stosb  ; rep stosb byte es:[edi], al
lea edi, [ebp - 0x605]
mov cl, 5
rep stosb  ; rep stosb byte es:[edi], al
mov eax, dword [ebp - 0x63c]
lea edi, [ebp - 0x508]
mov byte [ebp - 0x635], 2
mov byte [ebp - 0x633], 1
mov eax, dword [eax + 0x42]
mov dword [ebp - 0x664], eax
mov al, byte [ebp - 0x605]
mov cl, byte [ebp - 0x664]
and eax, 0xfffffffe
and ecx, 1
or eax, ecx
mov ecx, dword [ebp - 0x63c]
mov byte [ebp - 0x605], al
mov eax, dword [ecx + 0x2e]
mov ecx, 8
mov dword [ebp - 0x604], eax
mov eax, ebx
rep stosd  ; rep stosd dword es:[edi], eax
mov al, dl

; clear the whole PEI_USB struct
; then fill the PEI_USB struct
push dword [ebp - 0x63c]
lea eax, [ebp - 0x403]
push eax
call load_usb
add esp, 8
xor edx, edx

lea edi, [ebp - 0x632]
mov byte [ebp - 0x4c0], 3
mov byte [ebp - 0x4bf], 0
mov dword [ebp - 0x4aa], 0
mov byte [ebp - 0x565], 4
mov ecx, 3
mov eax, dword [ebp - 0x63c]
cmp dword [eax + 0x46], 0
mov al, dl
rep stosb  ; rep stosb byte es:[edi], al
mov ecx, dword [ebp - 0x63c]
lea eax, [ebp - 0x632]
mov dword [ebp - 0x61a], eax
lea edi, [ebp - 0x585]
setne byte [ebp - 0x636]
mov eax, dword [ecx + 0x22]
mov dword [ebp - 0x4be], eax
mov eax, dword [ecx + 0x26]
mov word [ebp - 0x4ba], ax
mov eax, dword [ecx + 0x2a]
mov word [ebp - 0x4b8], ax
mov ecx, 4
lea eax, [ebp - 0x636]
mov dword [ebp - 0x4b6], eax
lea eax, [ebp - 0x61a]
mov dword [ebp - 0x4b2], eax
lea eax, [ebp - 0x60a]
mov dword [ebp - 0x4ae], eax
lea eax, [ebp - 0x5cc]
mov dword [ebp - 0x4a6], eax
lea eax, [ebp - 0x508]
mov dword [ebp - 0x4a2], eax
lea eax, [ebp - 0x635]
mov dword [ebp - 0x49e], eax
lea eax, [ebp - 0x605]
mov dword [ebp - 0x49a], eax
lea eax, [ebp - 0x403]
mov dword [ebp - 0x496], eax
mov dword [ebp - 0x564], eax
mov byte [ebp - 0x560], 1
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov esi, ref_fffc9e48  ; mov esi, 0xfffc9e48
lea edi, [ebp - 0x4e8]
mov cl, 0xa
mov al, dl
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
lea edi, [ebp - 0x592]
mov cl, 0xd
rep stosb  ; rep stosb byte es:[edi], al
mov eax, ebx
mov dword [ebp - 0x55f], 0xe8000000
mov ecx, dword [ebp - 0x63c]
mov dword [ebp - 0x55b], 0x800
mov dword [ebp - 0x557], 0xe8100000
mov word [ebp - 0x592], 0x800
mov word [ebp - 0x590], 2
mov byte [ebp - 0x58e], 1
mov byte [ebp - 0x58d], 2
mov byte [ebp - 0x58c], 3
mov byte [ebp - 0x58b], 2
lea edi, [ebp - 0x463]
mov eax, ebx
mov ecx, 0x18
rep stosd  ; rep stosd dword es:[edi], eax
mov al, dl

push dword [ebp - 0x63c]
lea edi, [ebp - 0x340]
push edi
call fill_ram_param

push dword [ebp - 0x63c]
lea edi, [ebp - 0x492]
push edi
call fill_pei_ram_data
add esp, 16

xor edx, edx

mov ecx, dword [ebp - 0x63c]
mov byte [ebp - 0x462], 1
mov byte [ebp - 0x461], 1
mov byte [ebp - 0x460], 1
lea edi, [ebp - 0x575]
mov esi, mrc_wdt_ppi
mov ecx, 4
mov eax, ebx
rep stosd  ; rep stosd dword es:[edi], eax
mov al, dl
lea edi, [ebp - 0x526]
mov cl, 0x1e
rep stosb  ; rep stosb byte es:[edi], al
mov ecx, dword [ebp - 0x63c]
lea eax, [ebp - 0x492]
lea edi, [ebp - 0x53e]
mov dword [ebp - 0x525], eax
lea eax, [ebp - 0x592]
mov dword [ebp - 0x521], eax
lea eax, [ebp - 0x340]
mov dword [ebp - 0x51d], eax
lea eax, [ebp - 0x463]
mov dword [ebp - 0x519], eax
lea eax, [ebp - 0x575]
mov dword [ebp - 0x515], eax
mov eax, dword [ecx + 0x5a]
mov ecx, 6
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov dword [ebp - 0x511], eax
lea edi, [ebp - 0x600]
mov al, dl
mov cl, 5
mov byte [ebp - 0x526], 0xe
mov dword [ebp - 0x616], pei_choose_ranges
mov dword [ebp - 0x612], pei_get_platform_memsize
rep stosb  ; rep stosb byte es:[edi], al
lea edi, [ebp - 0x553]
mov cl, 0x15
rep stosb  ; rep stosb byte es:[edi], al
lea eax, [ebp - 0x600]
lea edi, [ebp - 0x62f]
mov dword [ebp - 0x552], eax
mov cl, 3
mov al, dl
mov edx, dword [ebp - 0x63c]
rep stosb  ; rep stosb byte es:[edi], al
mov eax, ebx
mov dword [ebp - 0x60e], dummy_func
mov byte [ebp - 0x553], 1
mov byte [ebp - 0x62f], 1
lea eax, [ebp - 0x5d4]
mov dword [ebp - 0x278], 0xfeadb00b
mov dword [ebp - 0x200], eax

push edx
lea eax, [ebp - 0x278]
push eax
call init_mrc_pei
pop eax

lea eax, [ebp - 0x526]
mov dword [ebp - 0x1f4], eax
lea eax, [ebp - 0x5dc]
mov dword [ebp - 0x1e8], eax
lea eax, [ebp - 0x4c0]
mov dword [ebp - 0x1dc], eax
lea eax, [ebp - 0x565]
mov dword [ebp - 0x1d0], eax
lea eax, [ebp - 0x585]
mov dword [ebp - 0x204], gEfiPeiStallPpiGuid
mov dword [ebp - 0x1f8], ref_fffcd4e4  ; mov dword [ebp - 0x1f8], 0xfffcd4e4
mov dword [ebp - 0x1ec], gEfiPeiReadOnlyVariablePpiGuid
mov dword [ebp - 0x1e0], ref_fffcca3c  ; mov dword [ebp - 0x1e0], 0xfffcca3c
mov dword [ebp - 0x1d4], ref_fffcc988  ; mov dword [ebp - 0x1d4], 0xfffcc988
mov dword [ebp - 0x1c8], ref_fffcc96c  ; mov dword [ebp - 0x1c8], 0xfffcc96c
mov dword [ebp - 0x1c4], eax
lea eax, [ebp - 0x53e]
mov dword [ebp - 0x1b8], eax
lea eax, [ebp - 0x4e8]
mov dword [ebp - 0x1ac], eax
lea eax, [ebp - 0x5ac]
mov dword [ebp - 0x1a0], eax
lea eax, [ebp - 0x616]
mov dword [ebp - 0x194], eax
lea eax, [ebp - 0x612]
mov dword [ebp - 0x188], eax
lea eax, [ebp - 0x60e]
mov dword [ebp - 0x17c], eax
lea eax, [ebp - 0x553]
mov dword [ebp - 0x170], eax
lea eax, [ebp - 0x62f]
mov dword [ebp - 0x164], eax
lea eax, [ebp - 0x274]
mov dword [ebp - 0x62c], eax
mov eax, dword [edx + 0x4e2]
mov dword [0xff7d753c], eax
cmp dword [edx], 0xf
mov dword [ebp - 0x1bc], gWdtPpiGuid
mov dword [ebp - 0x1b0], gPchDmiTcVcPpiGuid
mov dword [ebp - 0x1a4], gPeiSmbusPolicyPpiGuid
mov dword [ebp - 0x198], gPeiPlatformMemoryRangePpiGuid
mov dword [ebp - 0x18c], gPeiPlatformMemorySizePpiGuid
mov dword [ebp - 0x180], gPeiBaseMemoryTestPpiGuid
mov dword [ebp - 0x174], ref_fffcc8bc  ; mov dword [ebp - 0x174], 0xfffcc8bc
mov dword [ebp - 0x168], gPeiSeCPlatformPolicyPpiGuid
mov dword [ebp - 0x118], 0xe
jne loc_fffa559c  ; jne 0xfffa559c
sub esp, 0xc
lea eax, [ebp - 0x62c]
push ref_fffcc534  ; push 0xfffcc534
mov dword [0xff7d7538], eax
call mrc_printk
add esp, 0x10
cmp dword [ebp - 0x20c], 2
jne short loc_fffa39a6  ; jne 0xfffa39a6
mov eax, dword [ebp - 0x63c]
cmp dword [eax + 0x5a], 0
je short loc_fffa39a6  ; je 0xfffa39a6
sub esp, 0xc
mov dword [ebp - 0x20c], 0x11
push ref_fffcc552  ; push 0xfffcc552
call mrc_printk
mov eax, dword [ebp - 0x63c]
add esp, 0x10
cmp dword [eax + 0x6e], 0
je short loc_fffa39a6  ; je 0xfffa39a6
mov al, byte [ebp - 0x3ac]
and byte [ebp - 0x3ae], 0xfe
and eax, 0xfffffffc
and byte [ebp - 0x3ad], 0xfe
or eax, 5
mov byte [ebp - 0x3ac], al

loc_fffa39a6:

lea eax, [ebp - 0x403]
push eax
call frag_fffa3a17
add esp, 4

call mrc_frag_pch
call mrc_frag_smbus

push str_init_usb
call mrc_printk
push dword [0xff7d7538]
call mrc_init_usb
mov dword [esp], str_init_sa
call mrc_printk
mov edx, dword [0xff7d7538]
mov dword [ebp - 0x640], edx
call haswell_family_model
mov ecx, dword [ebp - 0x640]
mov dword [ebp - 0x648], eax

; ram init ppi
lea ebx, [ebp - 0x526]

push dword [ebx + 1]
call mrc_set_bars
add esp, 0xc

push ebx
call frag_fffa3eec
mov dword [ebp - 0x620], eax

push eax
call frag_fffa3f8c
mov dword [ebp - 0x5e8], eax

push ebx
call frag_fffa3fd4
add esp, 12

cmp dword [ebp - 0x648], HASWELL_FAMILY_GT3E
sete dl
cmp dword [ebp - 0x648], HASWELL_FAMILY_MOBILE
sete al
or dl, al
je loc_fffa4d64  ; je 0xfffa4d64
call haswell_stepping
mov eax, dword [0xf0000060]
sub esp, 0xc
and eax, 0xfc000000
mov edx, dword [eax + 0x48]
mov ecx, dword [eax + 0x4c]
mov dword [ebp - 0x648], edx
mov dword [ebp - 0x644], ecx
mov eax, dword [0xf0000060]
mov ecx, dword [ebp - 0x640]
and eax, 0xfc000000
lea edx, [ebp - 0x5e8]
mov esi, dword [eax + 0x68]
mov edi, dword [eax + 0x6c]
mov eax, dword [ecx]
push edx
push 0
push 0
push ref_fffcca3c  ; push 0xfffcca3c
push ecx
call dword [eax + 0x20]  ; ucall
add esp, 0x20
test eax, eax
js loc_fffa4d64  ; js 0xfffa4d64
mov eax, dword [ebp - 0x648]
mov ebx, esi
and eax, 0xfffffffe
and ebx, 0xfffffffe
mov dword [ebp - 0x648], eax

; superfrag_fffa4025(mchbar, dmibar, ppi)
lea eax, [ebp - 0x526]
push eax
push ebx
push dword [ebp - 0x648]
call superfrag_fffa4025
add esp, 12

lea ecx, [ebp - 0x526]
mov eax, dword [ecx + 0xd]
cmp byte [eax + 3], 0
je short loc_fffa4ce2  ; je 0xfffa4ce2
mov eax, dword [ebp - 0x5e8]
mov eax, dword [eax + 2]
mov al, byte [eax + 0x21a4]
and eax, 0xf
dec al
je short loc_fffa4ce2  ; je 0xfffa4ce2
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov eax, dword [eax + 0xe4]
test eax, 0x400000
je loc_fffa562f  ; je 0xfffa562f

loc_fffa4ce2:
mov ecx, dword [ebx + 0x84]
mov eax, dword [ebx + 0x98]
and eax, 0xfffffff0
and ecx, 0xf
or eax, ecx
mov dword [ebx + 0x98], eax
mov al, byte [ebx + 0x88]
or eax, 0x20
mov byte [ebx + 0x88], al

loc_fffa4d0b:
mov cx, word [ebx + 0x8a]
lea eax, [ebx + 0x8a]
and ch, 8
jne short loc_fffa4d0b  ; jne 0xfffa4d0b
test dl, dl
jne short loc_fffa4d26  ; jne 0xfffa4d26

loc_fffa4d21:
mov ax, word [eax]
jmp short loc_fffa4d64  ; jmp 0xfffa4d64

loc_fffa4d26:
mov dx, word [eax]
and edx, 0xf
cmp dx, 2
jne short loc_fffa4d4b  ; jne 0xfffa4d4b
mov edx, dword [ebp - 0x5e8]
mov edx, dword [edx + 2]
mov dx, word [edx + 0x21aa]
and edx, 0xf
cmp dx, 2
je short loc_fffa4d21  ; je 0xfffa4d21

loc_fffa4d4b:
mov dl, byte [ebx + 0x88]
or edx, 0x20
mov byte [ebx + 0x88], dl

loc_fffa4d5a:
mov dx, word [eax]
and dh, 8
jne short loc_fffa4d5a  ; jne 0xfffa4d5a
jmp short loc_fffa4d21  ; jmp 0xfffa4d21

loc_fffa4d64:
mov eax, dword [ebp - 0x640]
lea edx, [ebp - 0x526]
call fcn_fffa0625  ; call 0xfffa0625
lea edi, [ebp - 0x526]
mov dword [ebp - 0x624], 0
mov eax, dword [edi + 0x11]
cmp byte [eax + 0xb], 0
jne loc_fffa4e1b  ; jne 0xfffa4e1b

loc_fffa4d92:
mov eax, dword [0xf0000060]
lea esi, [ebp - 0x526]
and eax, 0xfc000000
mov edx, dword [eax + 0x4c]
mov eax, dword [eax + 0x48]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov edx, dword [eax + 0x6c]
mov eax, dword [eax + 0x68]
mov edi, eax
call haswell_family_model
mov edx, dword [ebp - 0x640]
sub esp, 0xc
mov ebx, eax
and edi, 0xfffffffe
mov eax, dword [edx]
lea edx, [ebp - 0x620]
push edx
push 0
push 0
push ref_fffcc96c  ; push 0xfffcc96c
push dword [ebp - 0x640]
call dword [eax + 0x20]  ; ucall
mov ecx, dword [ebp - 0x640]
add esp, 0x14
lea edx, [ebp - 0x5e8]
mov eax, dword [ecx]
push edx
push 0
push 0
push gPchDmiTcVcPpiGuid  ; push 0xfffcd534
push ecx
call dword [eax + 0x20]  ; ucall
add esp, 0x20
cmp ebx, HASWELL_FAMILY_ULT
jne loc_fffa5349  ; jne 0xfffa5349
mov al, byte [edi + 0xa78]
or eax, 2
mov byte [edi + 0xa78], al
jmp loc_fffa5349

loc_fffa4e1b:
mov edx, 7
lea eax, [ebp - 0x5f6]
call mrc_zeromem
mov edx, 7
lea eax, [ebp - 0x5ef]
call mrc_zeromem
mov eax, dword [0xff7d7538]
sub esp, 0xc
lea ecx, [ebp - 0x620]
mov bl, 1
mov edx, dword [eax]
push ecx
push 0
push 0
push gWdtPpiGuid  ; push 0xfffcd488
push eax
call dword [edx + 0x20]  ; ucall
mov ecx, 0x150
add esp, 0x20
rdmsr
mov dword [ebp - 0x648], eax
mov dword [ebp - 0x644], edx

loc_fffa4e71:
mov al, bl
and eax, 0xfffffffd
dec al
je short loc_fffa4e85  ; je 0xfffa4e85
lea eax, [ebx - 4]
cmp al, 1
ja loc_fffa532b  ; ja 0xfffa532b

loc_fffa4e85:
mov edx, 5
lea eax, [ebp - 0x5fb]
call mrc_zeromem
mov edx, 8
lea eax, [ebp - 0x5b4]
mov byte [ebp - 0x5f7], bl
call mrc_zeromem
mov edx, 8
lea eax, [ebp - 0x5b4]
call mrc_zeromem
mov al, byte [ebp - 0x5f7]
sub esp, 0xc
mov byte [ebp - 0x5af], al
lea eax, [ebp - 0x624]
push eax
mov byte [ebp - 0x5b0], 1
lea ecx, [ebp - 0x5b4]
mov edx, dword [ebp - 0x5b0]
mov eax, 2
mov dword [ebp - 0x5b4], 0
call fcn_fffc8f0f  ; call 0xfffc8f0f
add esp, 0x10
test eax, eax
jne short loc_fffa4f44  ; jne 0xfffa4f44
cmp dword [ebp - 0x624], 0
jne short loc_fffa4f44  ; jne 0xfffa4f44
mov eax, dword [ebp - 0x5b4]
mov edx, eax
mov byte [ebp - 0x5fb], al
and edx, 0x100
shr edx, 8
mov byte [ebp - 0x5fa], dl
mov edx, eax
and edx, 0x200
and eax, 0x400
shr edx, 9
shr eax, 0xa
mov byte [ebp - 0x5f9], dl
mov byte [ebp - 0x5f8], al

loc_fffa4f44:
cmp dword [ebp - 0x624], 0
jne loc_fffa532b  ; jne 0xfffa532b
cmp byte [ebp - 0x5fa], 0
jne short loc_fffa4f70  ; jne 0xfffa4f70
cmp byte [ebp - 0x5f9], 0
jne short loc_fffa4f70  ; jne 0xfffa4f70
cmp byte [ebp - 0x5f8], 0
je loc_fffa532b  ; je 0xfffa532b

loc_fffa4f70:
mov edx, 7
lea eax, [ebp - 0x5f6]
call mrc_zeromem
mov edx, 8
lea eax, [ebp - 0x5b4]
mov byte [ebp - 0x5f0], bl
call mrc_zeromem
mov edx, 8
lea eax, [ebp - 0x5b4]
call mrc_zeromem
mov al, byte [ebp - 0x5f0]
sub esp, 0xc
mov byte [ebp - 0x5af], al
lea eax, [ebp - 0x624]
push eax
mov byte [ebp - 0x5b0], 0x10
lea ecx, [ebp - 0x5b4]
mov edx, dword [ebp - 0x5b0]
mov eax, 2
mov dword [ebp - 0x5b4], 0
call fcn_fffc8f0f  ; call 0xfffc8f0f
add esp, 0x10
test eax, eax
jne loc_fffa532b  ; jne 0xfffa532b
cmp dword [ebp - 0x624], 0
jne short loc_fffa5040  ; jne 0xfffa5040
mov eax, dword [ebp - 0x5b4]
mov ecx, 1
mov edx, eax
mov byte [ebp - 0x5f6], al
and edx, 0x100000
movzx eax, ah
shr edx, 0x14
mov byte [ebp - 0x5f5], dl
lea edx, [ebp - 0x5f4]
call fcn_fffc8dcb  ; call 0xfffc8dcb
mov eax, dword [ebp - 0x5b4]
mov ecx, 1
shr eax, 0x15
lea edx, [ebp - 0x5f2]
call fcn_fffc8d04  ; call 0xfffc8d04

loc_fffa5040:
cmp dword [ebp - 0x624], 0
jne loc_fffa532b  ; jne 0xfffa532b
mov edx, 7
lea eax, [ebp - 0x5ef]
call mrc_zeromem
cmp bl, 1
mov byte [ebp - 0x5e9], bl
jne loc_fffa520e  ; jne 0xfffa520e
mov eax, dword [edi + 0x11]
mov dx, word [eax + 6]
mov byte [ebp - 0x5ef], dl
mov dl, byte [eax + 0xa]
test dl, dl
mov byte [ebp - 0x5ee], dl
jne short loc_fffa508c  ; jne 0xfffa508c
mov dx, word [eax + 4]
jmp short loc_fffa5090  ; jmp 0xfffa5090

loc_fffa508c:
mov dx, word [eax + 2]

loc_fffa5090:
mov word [ebp - 0x5ed], dx
mov ax, word [eax]
mov word [ebp - 0x5eb], ax
xor eax, eax

loc_fffa50a3:
mov dl, byte [ebp + eax - 0x5f6]
cmp byte [ebp + eax - 0x5ef], dl
je loc_fffa51ff  ; je 0xfffa51ff

loc_fffa50b7:
sub esp, 0xc
mov eax, dword [ebp - 0x620]
push 0x3c
call dword [eax]  ; ucall
mov al, byte [ebp - 0x5ee]
mov cl, byte [ebp - 0x5ef]
movsx edx, word [ebp - 0x5eb]
mov byte [ebp - 0x659], al
mov al, byte [ebp - 0x5e9]
mov dword [ebp - 0x658], edx
mov byte [ebp - 0x65a], al
mov edx, 8
lea eax, [ebp - 0x5c4]
mov byte [ebp - 0x668], cl
movzx esi, word [ebp - 0x5ed]
call mrc_zeromem
mov cl, byte [ebp - 0x668]
mov eax, esi
mov byte [ebp - 0x5b4], cl
lea edx, [ebp - 0x5e8]
xor ecx, ecx
mov word [ebp - 0x5e8], 0
call fcn_fffc8dcb  ; call 0xfffc8dcb
movzx edx, word [ebp - 0x5e8]
mov eax, dword [ebp - 0x5b4]
and edx, 0xfff
and eax, 0xfff000ff
shl edx, 8
xor ecx, ecx
or eax, edx
mov dl, byte [ebp - 0x659]
mov dword [ebp - 0x5b4], eax
and edx, 1
mov al, byte [ebp - 0x5b2]
mov word [ebp - 0x5e8], 0
shl edx, 4
and eax, 0xffffffef
or eax, edx
lea edx, [ebp - 0x5e8]
mov byte [ebp - 0x5b2], al
mov eax, dword [ebp - 0x658]
call fcn_fffc8d04  ; call 0xfffc8d04
mov ax, word [ebp - 0x5b2]
mov edx, dword [ebp - 0x5e8]
shl edx, 5
and eax, 0x1f
or eax, edx
mov ecx, 4
mov word [ebp - 0x5b2], ax
lea edx, [ebp - 0x5b4]
lea eax, [ebp - 0x5c4]
call mrc_memcpy
mov dl, byte [ebp - 0x65a]
mov eax, 2
mov byte [ebp - 0x5bf], dl
mov edx, dword [ebp - 0x5c4]
mov byte [ebp - 0x5c0], 0x11
mov dword [ebp - 0x668], edx
mov esi, dword [ebp - 0x5c0]
call fcn_fffc8e6f  ; call 0xfffc8e6f
add esp, 0x10
test eax, eax
mov edx, dword [ebp - 0x668]
jns short loc_fffa5256  ; jns 0xfffa5256
jmp near loc_fffa532b  ; jmp 0xfffa532b

loc_fffa51ff:
inc eax
cmp eax, 7
jne loc_fffa50a3  ; jne 0xfffa50a3
jmp near loc_fffa532b  ; jmp 0xfffa532b

loc_fffa520e:
lea eax, [ebx - 3]
cmp al, 2
ja loc_fffa532b  ; ja 0xfffa532b
cmp bl, 4
mov eax, dword [edi + 0x11]
je short loc_fffa522c  ; je 0xfffa522c
cmp bl, 5
je short loc_fffa5232  ; je 0xfffa5232
mov ax, word [eax + 8]
jmp short loc_fffa5236  ; jmp 0xfffa5236

loc_fffa522c:
mov ax, word [eax + 0xc]
jmp short loc_fffa5236  ; jmp 0xfffa5236

loc_fffa5232:
mov ax, word [eax + 0xe]

loc_fffa5236:
mov word [ebp - 0x5eb], ax
mov cx, word [ebp - 0x5f2]
cmp word [ebp - 0x5eb], cx
jne loc_fffa50b7  ; jne 0xfffa50b7
jmp near loc_fffa532b  ; jmp 0xfffa532b

loc_fffa5256:
mov dword [ebp - 0x5bc], edx
mov ecx, 8
lea edx, [ebp - 0x5bc]
lea eax, [ebp - 0x5e8]
mov dword [ebp - 0x5b8], esi
or byte [ebp - 0x5b5], 0x80
call mrc_memcpy
mov eax, dword [ebp - 0x5e8]
mov edx, dword [ebp - 0x5e4]
mov ecx, 0x150
wrmsr
mov eax, 2
call fcn_fffc8e6f  ; call 0xfffc8e6f
mov eax, dword [ebp - 0x648]
mov edx, dword [ebp - 0x644]
mov ecx, 8
mov dword [ebp - 0x5e8], eax
mov dword [ebp - 0x5e4], edx
lea eax, [ebp - 0x5bc]
lea edx, [ebp - 0x5e8]
call mrc_memcpy
mov eax, 0xa
call usleep
mov edx, dword [ebp - 0x648]
mov ecx, dword [ebp - 0x644]
mov dword [ebp - 0x5e8], edx
mov dword [ebp - 0x5e4], ecx
lea edx, [ebp - 0x5e8]
mov ecx, 8
lea eax, [ebp - 0x5b4]
call mrc_memcpy
mov ecx, dword [ebp - 0x5b0]
cmp dword [ebp - 0x5b8], ecx
je short loc_fffa531e  ; je 0xfffa531e
mov eax, dword [ebp - 0x5b4]
cmp dword [ebp - 0x5bc], eax
jne short loc_fffa532b  ; jne 0xfffa532b

loc_fffa531e:
movzx eax, byte [ebp - 0x5b8]
mov dword [ebp - 0x624], eax

loc_fffa532b:
inc ebx
cmp bl, 6
jne loc_fffa4e71  ; jne 0xfffa4e71
jmp near loc_fffa4d92  ; jmp 0xfffa4d92

loc_fffa5349:
mov eax, dword [esi + 0xd]
mov edx, dword [ebp - 0x5e8]
mov al, byte [eax]
mov byte [edx + 0x22], al
mov eax, dword [esi + 0xd]
mov al, byte [eax + 1]
mov byte [edx + 0x24], al
mov eax, dword [esi + 0xd]
mov al, byte [eax + 2]
mov byte [edx + 0x26], al

push dword [ebp - 0x5e8]
call frag_fffa536b
add esp, 4

mov ebx, dword [ebp - 0x5e8]

lea eax, [ebp - 0x5b4]
push eax
push ebx
push edi
call frag_fffa53b4
add esp, 12

mov al, byte [edi + 4]
and eax, 0xfffffff8
cmp byte [ebx + 0x22], 1
sete dl
or eax, edx
mov byte [edi + 4], al
sub esp, 0xc
mov eax, dword [ebp - 0x620]
push dword [ebp - 0x640]
mov esi, 0x1a
call dword [eax + 4]  ; ucall
mov ecx, dword [ebp - 0x5e8]
add esp, 0x10
xor eax, eax

loc_fffa5467:
cmp byte [ecx + eax*2 + 0x20], 1
mov dl, al
jne short loc_fffa549a  ; jne 0xfffa549a
cmp al, 2
je short loc_fffa5484  ; je 0xfffa5484
cmp al, 3
je short loc_fffa548b  ; je 0xfffa548b
dec dl
mov ebx, 0x26
cmovne ebx, esi
jmp short loc_fffa5490  ; jmp 0xfffa5490

loc_fffa5484:
mov ebx, 0x32
jmp short loc_fffa5490  ; jmp 0xfffa5490

loc_fffa548b:
mov ebx, 0x3e

loc_fffa5490:
add ebx, edi

loc_fffa5492:
mov dx, word [ebx]
and dl, 2
jne short loc_fffa5492  ; jne 0xfffa5492

loc_fffa549a:
inc eax
cmp eax, 4
jne short loc_fffa5467  ; jne 0xfffa5467
lea eax, [ebp - 0x526]
mov eax, dword [eax + 1]
mov edx, dword [eax + 4]
push edx
call frag_fffa549a
add esp, 4

push dword [ebp - 0x63c]
push dword [ebp - 0x20c]
call frag_fffa54e7
add esp, 8
xor eax, eax
jmp near loc_fffa56a4  ; jmp 0xfffa56a4

loc_fffa559c:
or eax, 0xffffffff
jmp near loc_fffa56a4  ; jmp 0xfffa56a4

loc_fffa562f:
mov edx, dword [ebp - 0x640]
sub esp, 0xc
mov eax, dword [edx]
lea edx, [ebp - 0x620]
push edx
push 0
push 0
push ref_fffcc96c  ; push 0xfffcc96c
push dword [ebp - 0x640]
call dword [eax + 0x20]  ; ucall
mov eax, dword [ebp - 0x620]
add esp, 0x14
push dword [ebp - 0x640]
call dword [eax + 8]  ; ucall
mov eax, dword [ebx + 0x84]
and eax, 0xfffffff0
or eax, 2
mov dword [ebx + 0x84], eax
mov dl, 1
add esp, 0x10
jmp near loc_fffa4ce2  ; jmp 0xfffa4ce2

loc_fffa56a4:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa56ac:  ; not directly referenced
push ebp
mov ecx, 9
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x31]
mov esi, ref_fffc9ef8  ; mov esi, 0xfffc9ef8
push ebx
lea esp, [esp - 0xdc]
mov ebx, dword [ebp + 8]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov edx, dword [ebx + 0x1021]
lea eax, [ebx + 0x16be]
mov byte [ebp - 0x45], 0x40
mov dword [ebp - 0xa0], eax
mov byte [ebp - 0x44], 0x60
mov byte [ebp - 0x43], 0x40
mov byte [ebp - 0x42], 0x40
mov byte [ebp - 0x41], 0x40
mov byte [ebp - 0x40], 0x19
mov byte [ebp - 0x3f], 0x32
mov byte [ebp - 0x3e], 0x14
mov byte [ebp - 0x3d], 0x14
mov byte [ebp - 0x3c], 0x19
mov byte [ebp - 0x51], 0x2e
mov byte [ebp - 0x50], 0x46
mov byte [ebp - 0x4f], 0x46
mov byte [ebp - 0x4e], 0x2e
mov byte [ebp - 0x3b], 0x21
mov byte [ebp - 0x3a], 0x32
mov byte [ebp - 0x39], 0x14
mov byte [ebp - 0x38], 0x14
mov byte [ebp - 0x37], 0x1d
mov byte [ebp - 0x4d], 0x3b
mov byte [ebp - 0x4c], 0x35
mov byte [ebp - 0x4b], 0x35
mov byte [ebp - 0x4a], 0x35
mov dword [ebp - 0x70], edx
mov eax, dword [ebx + edx*4 + 0x172c]
mov ecx, dword [ebx + 0x1005]
mov esi, dword [ebx + 0x1001]
mov dword [ebp - 0x6c], ecx
mov dword [ebp - 0x88], eax
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x5e]
mov dword [ebp - 0xd4], esi
call mrc_setmem
lea edx, [ebp - 0x3b]
mov ecx, 5
lea eax, [ebp - 0x36]
mov esi, 0xcf8
call mrc_memcpy
lea edx, [ebp - 0x4d]
mov ecx, 4
lea eax, [ebp - 0x49]
call mrc_memcpy
lea edx, [ebx + 0x2974]
mov eax, 0x80000000
mov dword [ebp - 0xa4], edx
mov edx, esi
out dx, eax
mov ecx, 0xcfc
mov edx, ecx
in eax, dx
shr eax, 0x10
mov edx, esi
mov word [ebx + 0x2978], ax
mov eax, 0x80000008
out dx, eax
mov edx, ecx
in eax, dx
cmp dword [ebp - 0x6c], HASWELL_FAMILY_MOBILE
mov byte [ebx + 0x297a], al
sete byte [ebp - 0xa7]
cmp dword [ebp - 0x6c], HASWELL_FAMILY_GT3E
sete byte [ebp - 0xa8]
mov cl, byte [ebp - 0xa8]
or cl, byte [ebp - 0xa7]
mov byte [ebp - 0xa5], cl
jne short loc_fffa5810  ; jne 0xfffa5810

loc_fffa57f9:  ; not directly referenced
xor ecx, ecx
mov edx, 0x35
mov eax, ebx
call fcn_fffc6438  ; call 0xfffc6438
test eax, eax
jne short loc_fffa586c  ; jne 0xfffa586c
jmp near loc_fffa58b6  ; jmp 0xfffa58b6

loc_fffa5810:  ; not directly referenced
push dword [ebp - 0x70]
push ebx
call frag_fffa5810
add esp, 8
jmp short loc_fffa57f9  ; jmp 0xfffa57f9

loc_fffa586c:  ; not directly referenced
xor edx, edx
mov eax, dword [ebx + 0x16ce]
mov ecx, 0x7d0
div ecx
cmp dword [ebx + 0x1749], 2
sete byte [ebp - 0xd5]
movzx esi, byte [ebp - 0xd5]
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
mov dword [ebp - 0x74], esi
mov word [ebx + 0x1766], ax
je loc_fffa5a27  ; je 0xfffa5a27
mov dword [ebp - 0xd0], 0
jmp near loc_fffa5a70  ; jmp 0xfffa5a70

loc_fffa58b6:  ; not directly referenced
sub esp, 0xc
lea eax, [ebp - 0x5c]
push eax
lea ecx, [ebp - 0x5f]
lea edx, [ebp - 0x58]
mov eax, ebx
call fcn_fffb5038  ; call 0xfffb5038
add esp, 0x10
test eax, eax
je short loc_fffa58f7  ; je 0xfffa58f7
mov dword [ebx + 0x16c6], eax
mov eax, dword [ebp - 0x58]
mov dword [ebx + 0x16ce], eax
mov eax, dword [ebp - 0x5c]
mov dword [ebx + 0x16d2], eax
mov al, byte [ebp - 0x5f]
mov byte [ebx + 0x16d6], al
jmp near loc_fffa586c  ; jmp 0xfffa586c

loc_fffa58f7:  ; not directly referenced
push ebx
call frag_fffa58f7
add esp, 4

loc_fffa5979:  ; not directly referenced
mov al, byte [ebx + 0x16d6]
lea edx, [eax - 3]
cmp dl, 0xc
jbe short loc_fffa5991  ; jbe 0xfffa5991

loc_fffa5987:  ; not directly referenced
mov edx, 0x15
jmp near loc_fffa7821  ; jmp 0xfffa7821

loc_fffa5991:  ; not directly referenced
mov esi, 0xf
and esi, eax
xor eax, eax
cmp dword [ebx + 0x16d2], 0
setne al
shl eax, 4
or esi, eax
mov eax, dword [ebx + 0x103f]
or esi, 0x80000000
mov dword [eax + 0x5e00], esi
call mrc_get_timestamp
imul edi, eax, 0x3e8
jmp short loc_fffa59d4  ; jmp 0xfffa59d4

loc_fffa59c8:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
mov esi, dword [eax + 0x5e00]

loc_fffa59d4:  ; not directly referenced
mov eax, esi
shr eax, 0x18
test al, al
jns loc_fffa77fb  ; jns 0xfffa77fb
call mrc_get_timestamp
cmp edx, 0
ja short loc_fffa5987  ; ja 0xfffa5987
cmp eax, edi
jb short loc_fffa59c8  ; jb 0xfffa59c8
jmp short loc_fffa5987  ; jmp 0xfffa5987

loc_fffa59f1:  ; not directly referenced
sub esp, 0xc
lea eax, [ebp - 0x5c]
push eax
lea edx, [ebp - 0x58]
lea ecx, [ebp - 0x5f]
mov eax, ebx
call fcn_fffb5038  ; call 0xfffb5038
mov dword [ebx + 0x16c6], eax
add esp, 0x10
mov al, byte [ebx + 0x16d6]
cmp byte [ebp - 0x5f], al
mov edx, 0x15
jne loc_fffa7821  ; jne 0xfffa7821
jmp near loc_fffa586c  ; jmp 0xfffa586c

loc_fffa5a27:  ; not directly referenced
xor eax, eax
cmp byte [ebx + 0x16ba], 0
sete al
shl eax, 0xa
cmp dword [ebp - 0x74], 0
je short loc_fffa5a5a  ; je 0xfffa5a5a
mov dl, byte [ebx + 0x16bc]
or ah, 8
mov ecx, edx
shr dl, 4
and ecx, 0xf
shl ecx, 0xc
and edx, 0xf
shl edx, 0x10
or eax, ecx
or eax, edx

loc_fffa5a5a:  ; not directly referenced
mov edx, dword [ebx + 0x103f]
mov dword [ebp - 0xd0], 1
mov dword [edx + 0x2008], eax

loc_fffa5a70:  ; not directly referenced
movzx eax, byte [ebx + 0x16bf]
movzx edx, byte [ebx + 0x16be]
shl edx, 0x18
shl eax, 0x10
movzx ecx, byte [ebx + 0x16c1]
or eax, edx
movzx edx, byte [ebx + 0x16c0]
shl edx, 8
or edx, ecx
mov cl, 4
or eax, edx
mov edx, dword [ebx + 0x103f]
cmp dword [ebp - 0x88], 0x546
seta byte [ebp - 0xb8]
mov dword [edx + 0x5034], eax
mov eax, dword [ebx + 0x103f]
mov dl, byte [ebx + 0x16d6]
mov esi, dword [eax + 0x3918]
and esi, 3
cmp dword [ebx + 0x16d2], 1
sbb eax, eax
and eax, 0xfffffffe
add eax, 6
sub edx, eax
cmp dl, 4
cmovle ecx, edx
xor eax, eax
test cl, cl
cmovns eax, ecx
and esi, 0xff
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
jne short loc_fffa5b21  ; jne 0xfffa5b21
cmp al, 2
mov dl, 2
movzx ecx, byte [ebp - 0xb8]
cmovle edx, eax
movsx edx, dl
lea eax, [ecx + ecx*2]
add edx, eax
mov dl, byte [esi + edx*4 + ref_fffc9f3c]  ; mov dl, byte [esi + edx*4 - 0x360c4]
mov byte [ebp - 0x98], dl
jmp short loc_fffa5b3d  ; jmp 0xfffa5b3d

loc_fffa5b21:  ; not directly referenced
movzx edx, byte [ebp - 0xb8]
movsx eax, al
lea edx, [edx + edx*4]
add eax, edx
mov al, byte [esi + eax*4 + ref_fffc9f14]  ; mov al, byte [esi + eax*4 - 0x360ec]
mov byte [ebp - 0x98], al

loc_fffa5b3d:  ; not directly referenced
cmp dword [ebx + 0x297c], 2
jne short loc_fffa5b55  ; jne 0xfffa5b55
imul eax, dword [ebp - 0x70], 0x2a
mov ax, word [ebx + eax + 0x298a]
mov byte [ebp - 0x5e], al

loc_fffa5b55:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffa5b6d  ; jne 0xfffa5b6d
imul eax, dword [ebp - 0x70], 0x2a
mov ax, word [ebx + eax + 0x3cd1]
mov byte [ebp - 0x5d], al

loc_fffa5b6d:  ; not directly referenced
lea edx, [ebx + 0xfd8]
xor edi, edi
mov byte [ebp - 0xa6], 0
mov dword [ebp - 0xcc], edx

loc_fffa5b82:  ; not directly referenced
imul eax, edi, 0x1347
mov ecx, dword [ebp - 0xa0]
cmp dword [ecx + eax + 0x12be], 2
jne loc_fffa5d10  ; jne 0xfffa5d10
mov edx, dword [ebp - 0xa4]
mov ecx, edi
lea esi, [edx + eax + 8]
cmp dword [esi + 0xf5], 2
sete al
add byte [ebp - 0xa6], al
mov eax, 1
shl eax, cl
or byte [ebx + 0x176b], al
mov al, byte [esi + 0x114f]
or byte [ebx + 0x176a], al
movzx eax, byte [esi + 0x114f]
and eax, 0xf
cmp dword [ebp - 0x74], 0
je short loc_fffa5c0f  ; je 0xfffa5c0f
imul eax, edi, 0x2fa
mov ecx, dword [ebp - 0xcc]
lea edx, [ecx + eax + 0xe4]
xor eax, eax
cmp byte [edx + 0x2ee], 0
setne al
mov ecx, eax
or ecx, 2
cmp byte [edx + 0x2ef], 0
cmovne eax, ecx

loc_fffa5c0f:  ; not directly referenced
lea edx, [edi + 0x18]
shl edx, 8
add edx, dword [ebx + 0x103f]
mov dword [edx], eax
movzx edx, byte [esi + 0x114f]
and edx, 0xf
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
mov eax, edx
jne short loc_fffa5c49  ; jne 0xfffa5c49
cmp dword [ebp - 0x74], 0
je short loc_fffa5c44  ; je 0xfffa5c44
or eax, 0x20
cmp byte [ebx + 0x16bb], 0
jne short loc_fffa5c49  ; jne 0xfffa5c49

loc_fffa5c44:  ; not directly referenced
mov eax, edx
or eax, 0x30

loc_fffa5c49:  ; not directly referenced
mov edx, edi
shl edx, 8
mov dword [ebp - 0x9c], edx
mov edx, dword [ebx + 0x103f]
mov ecx, dword [ebp - 0x9c]
lea edx, [ecx + edx + 0x1c20]
mov dword [edx], eax
movzx eax, byte [esi + 0x114f]
mov dword [ebp - 0x7c], eax
and eax, 0xf
cmp dword [ebp - 0x74], 0
je short loc_fffa5cf2  ; je 0xfffa5cf2
lea ecx, [edi*4]
mov dword [ebp - 0x78], 0
movzx edx, byte [ebx + 0x16bc]
xor eax, eax
sar edx, cl
and edx, 0xf
mov dword [ebp - 0xe0], edx
jmp short loc_fffa5cdd  ; jmp 0xfffa5cdd

loc_fffa5ca0:  ; not directly referenced
mov edx, dword [ebp - 0xe0]
shr edx, cl
and edx, 1
mov dword [ebp - 0x84], edx
mov edx, dword [ebp - 0x78]
cmp dword [ebp - 0x84], edx
jne short loc_fffa5cce  ; jne 0xfffa5cce
cmp dword [ebp - 0x80], 0
je short loc_fffa5cce  ; je 0xfffa5cce
mov edx, 1
shl edx, cl
or eax, edx
and eax, 0xf

loc_fffa5cce:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffa5ca0  ; jne 0xfffa5ca0
inc dword [ebp - 0x78]
cmp dword [ebp - 0x78], 4
je short loc_fffa5cef  ; je 0xfffa5cef

loc_fffa5cdd:  ; not directly referenced
mov cl, byte [ebp - 0x78]
mov edx, dword [ebp - 0x7c]
sar edx, cl
xor ecx, ecx
and edx, 1
mov dword [ebp - 0x80], edx
jmp short loc_fffa5ca0  ; jmp 0xfffa5ca0

loc_fffa5cef:  ; not directly referenced
and eax, 0xf

loc_fffa5cf2:  ; not directly referenced
mov edx, dword [ebx + 0x103f]
mov ecx, dword [ebp - 0x9c]
lea edx, [ecx + edx + 0x1220]
mov dword [edx], eax
and eax, 0xf
mov byte [esi + 0x1150], al

loc_fffa5d10:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffa5b82  ; jne 0xfffa5b82
mov eax, 0x3600
xor di, di

loc_fffa5d22:  ; not directly referenced
movzx edx, byte [ebx + 0x176a]
bt edx, edi
jb short loc_fffa5d3c  ; jb 0xfffa5d3c

loc_fffa5d2e:  ; not directly referenced
inc edi
add eax, 4
cmp edi, 4
jne short loc_fffa5d22  ; jne 0xfffa5d22
jmp near loc_fffa5e1e  ; jmp 0xfffa5e1e

loc_fffa5d3c:  ; not directly referenced
mov dword [ebp - 0x84], 0

push eax
push dword [ebx + 0x103f]
call frag_fffa5d3c
add esp, 8

imul edx, edi, 0x12
add edx, 0x220
mov dword [ebp - 0x7c], edx
lea edx, [edi + edi*8]
add edx, 0x300
mov dword [ebp - 0x80], edx

loc_fffa5d9c:  ; not directly referenced
imul edx, dword [ebp - 0x84], 0x1347
mov esi, dword [ebp - 0xa4]
mov ecx, dword [ebp - 0x7c]
lea edx, [esi + edx + 8]
mov esi, dword [ebp - 0x80]
lea ecx, [edx + ecx + 5]
mov dword [ebp - 0x9c], ecx
lea edx, [edx + esi + 9]
mov esi, 9

loc_fffa5dc9:  ; not directly referenced
mov ecx, dword [ebp - 0x9c]
mov word [ecx], 0x60
mov word [ecx - 0x48], 0x40
mov byte [edx], 0x3b
mov word [ecx + 0x48], 0x40
add ecx, 2
mov byte [edx + 0xdfd], 0x20
mov dword [ebp - 0x9c], ecx
mov ecx, esi
mov byte [edx + 0xe21], 0x20
mov byte [edx + 0xdd9], 1
inc edx
dec cl
mov esi, ecx
jne short loc_fffa5dc9  ; jne 0xfffa5dc9
inc dword [ebp - 0x84]
cmp dword [ebp - 0x84], 2
jne short loc_fffa5d9c  ; jne 0xfffa5d9c
jmp near loc_fffa5d2e  ; jmp 0xfffa5d2e

loc_fffa5e1e:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x3648], 0
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x364c], 0x88888888
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x3670], 0
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x365c], 0
mov al, byte [ebp - 0xb8]
and eax, 1
mov edi, eax
mov eax, dword [ebp - 0xd0]
shl edi, 0x13
shl eax, 0x1a
or edi, eax
cmp dword [ebp - 0x74], 0
je short loc_fffa5ea7  ; je 0xfffa5ea7
or edi, 0x10000000
cmp dword [ebp - 0xd4], 0
setne dl
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
sete al
test dl, al
je short loc_fffa5ea1  ; je 0xfffa5ea1
or edi, 0x80000000

loc_fffa5ea1:  ; not directly referenced
or edi, 0x40000000

loc_fffa5ea7:  ; not directly referenced
mov eax, edi
or ah, 1
cmp byte [ebp - 0xa5], 0
cmovne edi, eax
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x3674], edi
cmp byte [ebx + 0x106d], 1
sbb ecx, ecx
mov al, byte [ebp - 0x98]
and eax, 7
not ecx
shl eax, 0xa
and ecx, 0x40
or ecx, eax
mov eax, dword [ebx + 0x103f]
or ecx, 0x7efc010
xor esi, esi
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
mov dword [eax + 0x3660], ecx
jne short loc_fffa5f0d  ; jne 0xfffa5f0d
cmp dword [ebp - 0x74], 1
sbb esi, esi
and esi, 0xfffffe80
add esi, 0x3f180

loc_fffa5f0d:  ; not directly referenced
mov dword [ebp - 0x7c], 0

loc_fffa5f14:  ; not directly referenced
imul eax, dword [ebp - 0x7c], 0x1347
mov edx, dword [ebp - 0xa0]
cmp dword [edx + eax + 0x12be], 2
je short loc_fffa5f39  ; je 0xfffa5f39

loc_fffa5f2b:  ; not directly referenced
inc dword [ebp - 0x7c]
cmp dword [ebp - 0x7c], 2
jne short loc_fffa5f14  ; jne 0xfffa5f14
jmp near loc_fffa6006  ; jmp 0xfffa6006

loc_fffa5f39:  ; not directly referenced
mov edx, dword [ebp - 0xa4]
mov byte [ebp - 0x84], 0
lea eax, [edx + eax + 8]
mov edx, dword [ebp - 0x7c]
mov dword [ebp - 0x80], eax
mov dword [eax + 0x141], edi
movzx eax, byte [ebp + edx - 0x5e]
shl edx, 8
add edx, 0x64
mov dword [ebp - 0x98], edx
lea eax, [eax + eax - 6]
movzx eax, al
mov dword [ebp - 0x9c], eax
jmp short loc_fffa5fef  ; jmp 0xfffa5fef

loc_fffa5f76:  ; not directly referenced
movzx eax, byte [ebp - 0x84]
mov edx, dword [ebp - 0x80]
mov dword [ebp - 0x78], eax
and esi, 0xffffffe0
inc byte [ebp - 0x84]
mov dword [edx + eax*4 + 0xf9], 0
mov dword [edx + eax*4 + 0x11d], 0
mov dword [edx + eax*4 + 0x145], ecx
movzx eax, byte [ebp + eax - 0x31]
imul eax, dword [ebp - 0x9c]
movzx edx, byte [ebx + 0x1755]
mov dword [ebp - 0xe0], edx
cdq
idiv dword [ebp - 0xe0]
mov edx, dword [ebp - 0x80]
and eax, 0x1f
or esi, eax
mov eax, dword [ebp - 0x78]
shl eax, 9
add eax, dword [ebp - 0x98]
add eax, dword [ebx + 0x103f]
mov dword [eax], esi
mov eax, dword [ebp - 0x78]
mov dword [edx + eax*4 + 0x169], esi

loc_fffa5fef:  ; not directly referenced
mov al, byte [ebp - 0x84]
cmp al, byte [ebx + 0x1755]
jb loc_fffa5f76  ; jb 0xfffa5f76
jmp near loc_fffa5f2b  ; jmp 0xfffa5f2b

loc_fffa6006:  ; not directly referenced
mov edx, dword [ebp - 0x88]
movzx esi, word [ebp - 0x88]
sub dx, 0x3b6
xor ecx, ecx
movzx eax, dx
mov word [ebp - 0x7c], dx
imul eax, eax, 0xc0
cdq
idiv esi
sub eax, 0x14
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
jne short loc_fffa604b  ; jne 0xfffa604b
movzx ecx, ax
mov edx, dword [ebx + 0x103f]
add ecx, 0x4d8140
mov dword [edx + 0x366c], ecx

loc_fffa604b:  ; not directly referenced
cmp byte [ebp - 0xa5], 0
je short loc_fffa6069  ; je 0xfffa6069
movzx ecx, ax
mov eax, dword [ebx + 0x103f]
add ecx, 0x4d8140
mov dword [eax + 0x306c], ecx

loc_fffa6069:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
lea edi, [ebp - 0x28]
shl esi, 7
mov word [ebp - 0x78], 0x3e8
mov dword [eax + 0x3a24], ecx
mov ecx, 4
movzx eax, word [ebx + 0x1067]
imul eax, eax, 0x2ee00
cdq
idiv esi
mov esi, ref_fffc9f04  ; mov esi, 0xfffc9f04
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
xor esi, esi
xor edi, edi
sub ax, 0x3e8
mov word [ebp - 0x98], ax
xor eax, eax
jmp short loc_fffa6105  ; jmp 0xfffa6105

loc_fffa60b0:  ; not directly referenced
mov byte [ebp - 0x80], al

loc_fffa60b3:  ; not directly referenced
mov ecx, dword [ebp - 0x9c]
sub cx, word [ebp + edx*2 - 0x28]
mov word [ebp - 0xe0], cx
mov al, dl
sar cx, 0xf
mov word [ebp - 0x84], cx
mov ecx, dword [ebp - 0xe0]
xor ecx, dword [ebp - 0x84]
sub ecx, dword [ebp - 0x84]
cmp word [ebp - 0x78], cx
jg short loc_fffa60ef  ; jg 0xfffa60ef
mov al, byte [ebp - 0x80]
jmp short loc_fffa60f9  ; jmp 0xfffa60f9

loc_fffa60ef:  ; not directly referenced
mov edi, dword [ebp - 0xcc]
mov word [ebp - 0x78], cx

loc_fffa60f9:  ; not directly referenced
inc edx
cmp edx, 8
jne short loc_fffa60b0  ; jne 0xfffa60b0
inc esi
cmp esi, 8
je short loc_fffa6126  ; je 0xfffa6126

loc_fffa6105:  ; not directly referenced
mov ecx, esi
mov edx, dword [ebp - 0x98]
sub dx, word [ebp + esi*2 - 0x28]
mov byte [ebp - 0xcc], cl
mov word [ebp - 0x9c], dx
mov byte [ebp - 0x80], al
xor edx, edx
jmp short loc_fffa60b3  ; jmp 0xfffa60b3

loc_fffa6126:  ; not directly referenced
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
jne short loc_fffa613f  ; jne 0xfffa613f
mov edx, dword [ebx + 0x103f]
mov dword [edx + 0xf68], 0x2051c

loc_fffa613f:  ; not directly referenced
cmp byte [ebp - 0xa5], 0
je short loc_fffa6162  ; je 0xfffa6162
lea eax, [eax + edi*8]
mov edx, dword [ebx + 0x103f]
movzx eax, al
shl eax, 0xc
add eax, 0x53f
mov dword [edx + 0xf6c], eax

loc_fffa6162:  ; not directly referenced
mov dl, byte [ebp - 0xb8]
mov ecx, dword [ebx + 0x103f]
and edx, 1
mov dword [ebp - 0x78], 0
mov eax, edx
shl eax, 0x1a
shl edx, 0x1b
or eax, 0x3e00000
mov dword [ecx + 0x3678], eax
mov ecx, edx
or ecx, 0x10
or edx, 0x20000010
mov dword [ebx + 0x175e], eax
mov dword [ebp - 0x80], ecx
mov eax, 0x1208
mov dword [ebp - 0x84], edx

loc_fffa61aa:  ; not directly referenced
imul edx, dword [ebp - 0x78], 0x1347
mov esi, dword [ebp - 0xa0]
cmp dword [esi + edx + 0x12be], 2
jne loc_fffa6305  ; jne 0xfffa6305
mov esi, dword [ebx + 0x103f]
mov edi, dword [ebp - 0xa4]
cmp dword [ebp - 0x74], 0
mov ecx, dword [ebp - 0x84]
cmove ecx, dword [ebp - 0x80]
lea esi, [eax + esi + 0x608]
lea edx, [edi + edx + 8]
mov dword [esi], ecx
cmp byte [ebx + 0x106d], 0
mov esi, ecx
je short loc_fffa61ff  ; je 0xfffa61ff
or ecx, 0x10000000
mov esi, ecx

loc_fffa61ff:  ; not directly referenced
mov edi, dword [ebx + 0x103f]
and ecx, 0xfffe1fff
or ecx, 0x1a000
and esi, 0xffe1ffff
or esi, 0x40120000
lea edi, [eax + edi + 0x2004]
mov dword [edi], ecx
mov edi, dword [ebx + 0x103f]
and ecx, 0xffe1bfff
or ecx, 0x120000
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
lea edi, [eax + edi + 0x14]
mov dword [edi], ecx
mov ecx, dword [ebx + 0x103f]
lea ecx, [eax + ecx + 0xa14]
mov dword [ecx], esi
lea ecx, [eax + 0x2000]
jne short loc_fffa626a  ; jne 0xfffa626a
mov esi, dword [ebx + 0x103f]
add esi, ecx
mov dword [esi], 0xc183060

loc_fffa626a:  ; not directly referenced
cmp byte [ebp - 0xa5], 0
je short loc_fffa627c  ; je 0xfffa627c
add ecx, dword [ebx + 0x103f]
mov byte [ecx], 0x60

loc_fffa627c:  ; not directly referenced
push eax ; save it
push edx
push eax
push dword [ebx + 0x103f]
call frag_fffa627c
add esp, 12
pop eax

loc_fffa6305:  ; not directly referenced
inc dword [ebp - 0x78]
add eax, 0x100
cmp dword [ebp - 0x78], 2
jne loc_fffa61aa  ; jne 0xfffa61aa
mov eax, dword [ebp - 0xd0]
shl eax, 3
cmp byte [ebp - 0xa6], 0
mov dword [ebx + 0x1756], eax
je short loc_fffa6341  ; je 0xfffa6341
mov dl, byte [ebp - 0x35]
mov al, 0x3c
cmp dword [ebx + 0xffd], 1
cmovne eax, edx
mov byte [ebp - 0x35], al

loc_fffa6341:  ; not directly referenced
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
jne short loc_fffa6352  ; jne 0xfffa6352
mov byte [ebp - 0x40], 0x28
mov byte [ebp - 0x36], 0x28

loc_fffa6352:  ; not directly referenced
mov edi, 0xc
xor esi, esi

loc_fffa6359:  ; not directly referenced
movzx eax, byte [ebp + esi - 0x40]
movzx edx, byte [ebp + esi - 0x36]
mov dword [ebp - 0x80], eax
movzx eax, byte [ebp + esi - 0x45]
mov ecx, dword [ebp - 0x80]
sub ecx, edx
imul eax, ecx
mov ecx, dword [ebp - 0x80]
add ecx, edx
cdq
add ecx, ecx
idiv ecx
mov edx, esi
cmp dl, 1
jne short loc_fffa63a4  ; jne 0xfffa63a4
cmp ax, 0xfffffffffffffff0
mov edx, 0xfffffff0
cmovge edx, eax
mov eax, 0xf
cmp dx, 0xf
cmovle eax, edx
and eax, 0x1f
shl eax, 0xf
jmp short loc_fffa63cc  ; jmp 0xfffa63cc

loc_fffa63a4:  ; not directly referenced
cmp ax, 0xfffffffffffffff8
mov ecx, 0xfffffff8
cmovl eax, ecx
mov ecx, 7
cmp ax, 7
cmovg eax, ecx
and eax, 0xf
test dl, dl
jne short loc_fffa63c8  ; jne 0xfffa63c8
shl eax, 0xb
jmp short loc_fffa63cc  ; jmp 0xfffa63cc

loc_fffa63c8:  ; not directly referenced
mov ecx, edi
shl eax, cl

loc_fffa63cc:  ; not directly referenced
inc esi
or dword [ebx + 0x1756], eax
add edi, 4
cmp esi, 5
jne loc_fffa6359  ; jne 0xfffa6359
mov eax, dword [ebx + 0x103f]
mov edx, dword [ebx + 0x1756]
mov dword [eax + 0x3a14], edx
mov al, byte [ebp - 0xb8]
and eax, 1
mov edi, eax
imul eax, dword [ebp - 0x70], 0x2a
shl edi, 0x19
add eax, ebx
and edi, 0xfeffffff
cmp word [eax + 0x2988], 2
jne short loc_fffa6459  ; jne 0xfffa6459

loc_fffa6415:  ; not directly referenced
mov eax, 1
mov edx, 2

loc_fffa641f:  ; not directly referenced
imul ecx, dword [ebp - 0x70], 0x2a
add ecx, ebx
mov word [ecx + 0x2988], dx
lea edx, [eax + 1]
dec eax
mov word [ecx + 0x3ccf], dx
mov al, byte [ebp - 0x48]
mov dl, 0x59
movzx esi, word [ebx + 0x1766]
cmovne edx, eax
cmp dword [ebp - 0x74], 0
mov al, 0x3f
cmove eax, edx
mov dword [ebp - 0x78], esi
mov byte [ebp - 0x48], al
xor esi, esi
jmp short loc_fffa646c  ; jmp 0xfffa646c

loc_fffa6459:  ; not directly referenced
cmp word [eax + 0x3ccf], 2
je short loc_fffa6415  ; je 0xfffa6415
xor eax, eax
mov edx, 1
jmp short loc_fffa641f  ; jmp 0xfffa641f

loc_fffa646c:  ; not directly referenced
movzx ecx, byte [ebp + esi - 0x49]
mov al, cl
mov byte [ebp - 0x70], cl
shr al, 1
movzx eax, al
add eax, dword [ebp - 0x78]
cdq
idiv ecx
mov edx, 5
lea ecx, [esi + esi*4]
cmp ax, 4
cmovbe eax, edx
cmp ax, 0x10
ja short loc_fffa649f  ; ja 0xfffa649f
mov dl, byte [ebp - 0x70]
cmp dl, byte [ebp + esi - 0x51]
jae short loc_fffa64a8  ; jae 0xfffa64a8

loc_fffa649f:  ; not directly referenced
shr ax, 1
movzx eax, ax
dec eax
jmp short loc_fffa64ae  ; jmp 0xfffa64ae

loc_fffa64a8:  ; not directly referenced
movzx eax, ax
add eax, 0xf

loc_fffa64ae:  ; not directly referenced
shl eax, cl
inc esi
add edi, eax
cmp esi, 4
jne short loc_fffa646c  ; jne 0xfffa646c
mov eax, dword [ebx + 0x103f]
mov ecx, dword [ebp - 0x7c]
add ecx, 0x18
movzx ecx, cx
mov dword [eax + 0x3a18], edi
mov dword [ebx + 0x175a], edi
imul eax, ecx, 0x64
sub ecx, 0xf
cdq
idiv ecx
call fcn_fffb2140  ; call 0xfffb2140
movzx esi, word [ebx + 0x1766]
movzx ecx, ax
imul esi, esi, 0x7d0
imul ecx, ecx, 0x7d0
mov eax, esi
cdq
mov dword [ebp - 0x70], esi
idiv ecx
movzx esi, word [ebx + 0x1067]
mov edi, esi
sub edi, dword [ebp - 0x7c]
sub edi, 0x18
movzx edi, di
movzx ecx, ax
mov eax, ecx
add ecx, 0x3e8
shl eax, 7
cdq
idiv ecx
mov dword [ebp - 0x78], eax
imul eax, edi, 0x64
sub edi, 0xf
cdq
idiv edi
call fcn_fffb2140  ; call 0xfffb2140
mov edi, eax
mov eax, 0x7080
cdq
and edi, 0xffff
idiv esi
imul edi, edi, 0x7d0
mov ecx, eax
mov eax, dword [ebp - 0x70]
cdq
and ecx, 0x1f
idiv edi
shl ecx, 0xc
movzx esi, ax
mov eax, 0x1f400
add esi, 0x3e8
cdq
idiv esi
or ecx, 0x80000
mov edx, dword [ebp - 0x78]
and edx, 0x3f
and eax, 0x3f
shl eax, 6
or ecx, eax
mov eax, dword [ebx + 0x103f]
or ecx, edx
mov dword [eax + 0x3a1c], ecx
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x2008]
and eax, 0xfffffc20
or eax, 0x316
mov dword [ebx + 0x1762], eax
mov dword [edx + 0x2008], eax
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x2000], 0
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x2004], 0
mov edx, dword [ebx + 0x103f]
mov al, byte [ebx + 0x3acb]
mov byte [edx + 0x42a0], al
mov edx, dword [ebx + 0x103f]
mov al, byte [ebx + 0x4e12]
mov byte [edx + 0x46a0], al
mov eax, dword [ebx + 0x103f]
mov edx, 0x96
mov dword [eax + 0x5f08], 0x115
mov eax, ebx
call fcn_fffb2d3a  ; call 0xfffb2d3a
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3644]
and eax, 0x8fffffff
or eax, 0x20000000
mov dword [edx + 0x3644], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3700]
and eax, 0xf8ffffff
or eax, 0x2000000
mov dword [edx + 0x3700], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3810]
and eax, 0xf8ffffff
or eax, 0x2000000
mov dword [edx + 0x3810], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3904]
and eax, 0xfc7fffff
or eax, 0x1000000
mov dword [edx + 0x3904], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3a04]
and eax, 0x8fffffff
or eax, 0x20000000
mov dword [edx + 0x3a04], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3a08]
and eax, 0xf8ffffff
or eax, 0x2000000
mov dword [edx + 0x3a08], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3a0c]
and eax, 0xf0ffffff
or eax, 0x2000000
mov dword [edx + 0x3a0c], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3a10]
and eax, 0xf87fffff
or eax, 0x1000000
mov dword [edx + 0x3a10], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x3a20]
and eax, 0xf8ffffff
or eax, 0x2000000
mov dword [edx + 0x3a20], eax
mov edx, dword [ebx + 0x103f]
mov eax, dword [ebx + 0x1762]
or eax, 0x20
mov dword [edx + 0x2008], eax
mov ecx, dword [ebx + 0x103f]
mov eax, dword [ebx + 0x1756]
mov esi, dword [ecx + 0x3a04]
mov edx, esi
shr edx, 9
sub edx, esi
and edx, 0x3f
shl edx, 4
and eax, 0xfffffc0f
or eax, edx
or ah, 4
mov dword [ebx + 0x1756], eax
mov dword [ecx + 0x3a14], eax
cmp byte [ebx + 0x1070], 1
je short loc_fffa677d  ; je 0xfffa677d

loc_fffa675b:  ; not directly referenced
cmp dword [ebp - 0x88], 0x4b0
je loc_fffa6954  ; je 0xfffa6954
cmp dword [ebp - 0x88], 0x546
sete al
jmp near loc_fffa6956  ; jmp 0xfffa6956

loc_fffa677d:  ; not directly referenced
cmp dword [ebp - 0xd4], 2
seta al
test byte [ebp - 0xa7], al
jne short loc_fffa67ad  ; jne 0xfffa67ad
cmp dword [ebp - 0x6c], HASWELL_FAMILY_ULT
sete al
or eax, dword [ebp - 0xa8]
cmp dword [ebp - 0xd4], 0
setne dl
test al, dl
je short loc_fffa675b  ; je 0xfffa675b

loc_fffa67ad:  ; not directly referenced
movzx edi, byte [ebx + 0x1748]
test edi, edi
sete al
or al, byte [ebp - 0xd5]
je loc_fffa6876  ; je 0xfffa6876
sub esp, 0xc
lea eax, [ebp - 0x58]
push eax
lea ecx, [ebp - 0x28]
mov edx, 0x17
mov eax, 1
call fcn_fffc8f0f  ; call 0xfffc8f0f
mov al, byte [ebp - 0x25]
add esp, 0x10
test al, al
js loc_fffa6876  ; js 0xfffa6876
or eax, 0xffffff80
mov byte [ebp - 0x25], al
mov al, byte [ebp - 0x28]
or eax, 1
cmp dword [ebx + 0x1749], 2
mov byte [ebp - 0x28], al
jne short loc_fffa680d  ; jne 0xfffa680d
and eax, 0xfffffff1
or eax, 8
mov byte [ebp - 0x28], al

loc_fffa680d:  ; not directly referenced
mov edx, dword [ebp - 0x28]
mov eax, 1
mov dword [ebp - 0xdc], edx
call fcn_fffc8e6f  ; call 0xfffc8e6f
test eax, eax
mov edx, dword [ebp - 0xdc]
js short loc_fffa6876  ; js 0xfffa6876
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov esi, dword [eax + 0x48]
and esi, 0xfffffffe
mov dword [esi + 0x5da0], edx
mov dword [esi + 0x5da4], 0x80000018
mov eax, 1
call fcn_fffc8e6f  ; call 0xfffc8e6f
mov eax, dword [esi + 0x5da4]
mov eax, dword [esi + 0x5da0]
mov eax, 0xa
call usleep
mov eax, dword [esi + 0x5da4]
mov eax, dword [esi + 0x5da0]

loc_fffa6876:  ; not directly referenced
cmp edi, 1
mov eax, 0x64
mov edx, 0x32
cmove eax, edx
cmp dword [ebp - 0x74], 1
jne short loc_fffa68a5  ; jne 0xfffa68a5
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x5880]
and al, 0x7f
mov dword [edx + 0x5880], eax
mov eax, 0x61

loc_fffa68a5:  ; not directly referenced
cmp dword [ebx + 0x1025], 0
jne loc_fffa675b  ; jne 0xfffa675b
dec edi
sete dl
or dl, byte [ebp - 0xd5]
je loc_fffa675b  ; je 0xfffa675b
xor esi, esi
mov dword [ebp - 0x74], eax

loc_fffa68c7:  ; not directly referenced
imul eax, esi, 0x1347
mov ecx, dword [ebp - 0xa0]
cmp dword [ecx + eax + 0x12be], 2
jne short loc_fffa6945  ; jne 0xfffa6945
mov edi, dword [ebp - 0xa4]
lea ecx, [edi + eax + 8]
mov edi, 0x64
movzx eax, word [ecx + 0x1a]
imul eax, dword [ebp - 0x74]
cdq
mov dword [ebp - 0x6c], eax
idiv edi
cmp dword [ecx + 0x1151], 2
mov word [ecx + 0x1a], ax
jne short loc_fffa691f  ; jne 0xfffa691f
movzx eax, word [ecx + 0x1167]
imul eax, dword [ebp - 0x74]
cdq
mov dword [ebp - 0x6c], eax
idiv edi
mov word [ecx + 0x1167], ax

loc_fffa691f:  ; not directly referenced
cmp dword [ecx + 0x124c], 2
jne short loc_fffa6945  ; jne 0xfffa6945
movzx eax, word [ecx + 0x1262]
mov edi, 0x64
imul eax, dword [ebp - 0x74]
cdq
mov dword [ebp - 0x6c], eax
idiv edi
mov word [ecx + 0x1262], ax

loc_fffa6945:  ; not directly referenced
inc esi
cmp esi, 2
je loc_fffa675b  ; je 0xfffa675b
jmp near loc_fffa68c7  ; jmp 0xfffa68c7

loc_fffa6954:  ; not directly referenced
mov al, 3

loc_fffa6956:  ; not directly referenced
mov edx, dword [ebx + 0x103f]
and eax, 3
lea ecx, [ebx + 0x2b29]
lea esi, [ebx + 0x16be]
mov dword [ebp - 0x74], ecx
mov dword [ebp - 0x6c], 0
mov dword [ebp - 0x78], esi
mov dword [edx + 0x58a4], eax

loc_fffa697e:  ; not directly referenced
mov edi, dword [ebp - 0x74]
cmp dword [edi - 0x1ad], 2
jne loc_fffa6f44  ; jne 0xfffa6f44
imul eax, dword [ebp - 0x6c], 0x1347
mov esi, dword [ebp - 0x78]
lea eax, [esi + eax + 0x12be]
mov dword [ebp - 0x88], eax
imul eax, dword [ebx + 0x1021], 0x2a
mov edi, dword [ebp - 0x88]
lea eax, [edi + eax + 8]
movzx ecx, word [eax + 8]
movzx edx, word [eax + 0x26]
lea esi, [ecx + edx + 4]
mov cx, word [eax + 0x10]
mov dl, cl
and edx, 0x1f
cmp cx, 0x1f
mov edi, edx
mov dl, 0x1f
cmovbe edx, edi
mov di, word [eax + 0x1a]
mov word [ebp - 0x70], di
mov ecx, edx
mov dl, byte [ebp - 0x70]
and ecx, 0x1f
and edx, 0x1f
cmp word [ebp - 0x70], 0x1f
mov edi, edx
mov dl, 0x1f
cmovbe edx, edi
and edx, 0x1f
shl edx, 5
or ecx, edx
mov dl, byte [eax + 0xc]
and edx, 0x3f
cmp word [eax + 0xc], 0x3f
mov edi, edx
mov dl, 0x3f
cmovbe edx, edi
and edx, 0x3f
shl edx, 0xa
or ecx, edx
mov dl, byte [eax + 0x24]
and edx, 0xf
cmp word [eax + 0x24], 0xf
mov edi, edx
mov dl, 0xf
cmovbe edx, edi
mov edi, 0x3f
and edx, 0xf
shl edx, 0x10
cmp esi, 0x3f
cmova esi, edi
mov di, word [eax + 0x1e]
and esi, 0x3f
or ecx, edx
shl esi, 0x14
mov edx, edi
or ecx, esi
and edx, 0xf
cmp di, 0xf
mov esi, edx
mov dl, 0xf
cmovbe edx, esi
and edx, 0xf
shl edx, 0x1a
or ecx, edx
cmp dword [ebx + 0x1749], 2
jne short loc_fffa6a83  ; jne 0xfffa6a83
movzx edx, word [ebp - 0x70]
movzx eax, word [eax + 0x1c]
sub eax, edx
mov edx, 3
cmp eax, 3
cmovle edx, eax
shl edx, 0x1e
or ecx, edx

loc_fffa6a83:  ; not directly referenced
mov eax, dword [ebp - 0x6c]
mov esi, dword [ebp - 0x88]
add eax, 0x10
shl eax, 0xa
add eax, dword [ebx + 0x103f]
mov dword [eax], ecx
mov dword [esi + 0x1a5], ecx
imul eax, dword [ebp - 0x6c], 0x1347
lea eax, [ebx + eax + 0x297c]
mov dword [ebp - 0x7c], eax
imul eax, dword [ebx + 0x1021], 0x2a
mov edi, dword [ebp - 0x7c]
lea eax, [edi + eax + 8]
mov edi, 0x1f
mov si, word [eax + 6]
mov ax, word [eax + 8]
mov word [ebp - 0x80], ax
mov cl, byte [ebp - 0x80]
movzx edx, word [ebp - 0x80]
and ecx, 0x1f
movzx eax, si
sub eax, edx
cmp word [ebp - 0x80], 0x1f
mov dl, 0x1f
mov dword [ebp - 0x70], eax
cmovbe edx, ecx
mov ecx, esi
and edi, edx
and ecx, 0x1f
shl edi, 5
cmp si, 0x1f
mov byte [ebp - 0x88], cl
mov cl, 0x1f
mov al, byte [ebp - 0x88]
cmovbe ecx, eax
and ecx, 0x1f
or edi, ecx
cmp dword [ebp - 0x70], 7
mov ecx, 7
cmovbe ecx, dword [ebp - 0x70]
and ecx, 7
or edi, 0x1400
shl ecx, 0xe
or edi, ecx
cmp dword [ebx + 0x1749], 2
jne short loc_fffa6bae  ; jne 0xfffa6bae
movzx esi, word [ebp - 0x80]
mov ecx, edi
or ecx, 0x2000000
cmp byte [ebx + 0x16bb], 0
cmovne edi, ecx
add edx, 0x1f
movzx ecx, word [ebx + 0x1766]
and edx, 0x1f
add ecx, ecx
and edi, 0xfffff01f
shl edx, 5
dec esi
or edi, edx
xor edx, edx
or edi, 0x800
lea eax, [ecx + 0xdab]
div ecx
mov edx, 7
sub esi, eax
lea eax, [ecx + 0x6d5]
cmp esi, 7
cmova esi, edx
xor edx, edx
div ecx
and esi, 7
and edi, 0xfe07fbff
shl esi, 0x16
mov ecx, 7
inc eax
cmp eax, 7
cmova eax, ecx
or edi, esi
and eax, 7
shl eax, 0x13
or edi, eax

loc_fffa6bae:  ; not directly referenced
mov esi, dword [ebp - 0x6c]
mov eax, dword [ebx + 0x103f]
shl esi, 0xa
mov ecx, dword [ebp - 0x7c]
mov dword [ebp - 0x70], esi
add esi, 0x4014
add eax, esi
mov dword [ebp - 0x88], esi
mov dword [eax], edi
mov dword [ecx + 0x1b5], edi
imul eax, dword [ebp - 0x6c], 0x1347
imul edx, dword [ebx + 0x1021], 0x2a
mov edi, dword [ebp - 0x78]
lea eax, [edx + eax + 0x12b0]
mov edx, dword [ebx + 0x1749]
cmp edx, 2
lea esi, [edi + eax + 0x16]
mov eax, dword [ebx + 0x16c6]
jne short loc_fffa6c1f  ; jne 0xfffa6c1f
cmp eax, 0x42b
mov ecx, 4
jbe short loc_fffa6c45  ; jbe 0xfffa6c45
cmp eax, 0x535
mov cl, 6
ja short loc_fffa6c45  ; ja 0xfffa6c45

loc_fffa6c18:  ; not directly referenced
mov ecx, 5
jmp short loc_fffa6c45  ; jmp 0xfffa6c45

loc_fffa6c1f:  ; not directly referenced
cmp eax, 0x42b
mov ecx, 3
jbe short loc_fffa6c45  ; jbe 0xfffa6c45
cmp eax, 0x640
mov cl, 4
jbe short loc_fffa6c45  ; jbe 0xfffa6c45
cmp eax, 0x74b
jbe short loc_fffa6c18  ; jbe 0xfffa6c18
cmp eax, 0x961
sbb ecx, ecx
add ecx, 7

loc_fffa6c45:  ; not directly referenced
cmp ecx, 0xf
mov eax, 0xf
mov di, word [esi + 0xa]
movzx esi, word [esi + 6]
cmovbe eax, ecx
and eax, 0xf
mov ecx, eax
or ecx, 0xc0000000
cmp edx, 2
cmovne eax, ecx
cmp di, 0xff
mov cl, 0xff
cmovbe ecx, edi
mov edi, dword [ebp - 0x78]
movzx ecx, cl
shl ecx, 4
or eax, ecx
xor ecx, ecx
cmp edx, 2
sete cl
add esi, 5
add ecx, 6
or ah, 0x40
and ecx, 0xf
mov edx, ecx
shl edx, 0xf
shl ecx, 0x13
or eax, edx
cmp esi, 0x1f
mov edx, 0x1f
cmovbe edx, esi
or eax, ecx
and edx, 0x1f
mov ecx, dword [ebp - 0x70]
shl edx, 0x17
mov esi, dword [ebp - 0x74]
or eax, edx
mov edx, dword [ebx + 0x103f]
or eax, 0x20000000
lea edx, [ecx + edx + 0x4004]
mov dword [edx], eax
mov dword [esi - 4], eax
imul eax, dword [ebp - 0x6c], 0x1347
imul edx, dword [ebx + 0x1021], 0x2a
lea eax, [edx + eax + 0x12b0]
lea edx, [edi + eax + 0x16]
movzx eax, word [edx + 0x28]
movzx ecx, word [edx + 8]
lea esi, [ecx + eax + 6]
mov eax, 0x3f
cmp esi, 0x3f
cmova esi, eax
movzx eax, word [edx + 6]
and esi, 0x3f
cmp dword [ebx + 0x1749], 2
je short loc_fffa6d19  ; je 0xfffa6d19
mov edi, ecx
sub edi, eax
mov eax, edi
add eax, 7
jmp short loc_fffa6d1e  ; jmp 0xfffa6d1e

loc_fffa6d19:  ; not directly referenced
mov eax, 8

loc_fffa6d1e:  ; not directly referenced
cmp eax, 0xf
mov edi, 0xf
movzx edx, word [edx + 0x26]
cmovbe edi, eax
and edi, 0xf
mov eax, edi
shl eax, 6
lea edx, [ecx + edx + 4]
shl edi, 0xa
or eax, esi
or eax, edi
cmp edx, 0x3f
mov ecx, 0x3f
mov edi, dword [ebp - 0x70]
cmova edx, ecx
or eax, 0xef0000
and edx, 0x3f
mov ecx, dword [ebx + 0x103f]
shl edx, 0x19
or eax, edx
mov edx, dword [ebp - 0x88]
add edx, ecx
mov esi, eax
or esi, 0x80000000
and eax, 0x7fffffff
mov edx, dword [edx]
shr edx, 5
and edx, 0x1f
cmp edx, 6
cmovl esi, eax
lea eax, [edi + ecx + 0x4008]
mov ecx, dword [ebp - 0x74]
mov dword [eax], esi
mov dword [ecx], esi
shr esi, 0x1f
inc esi
and esi, 3
mov ecx, esi
mov eax, esi
shl ecx, 4
shl eax, 6
or eax, ecx
lea edx, [esi*4]
or eax, edx
mov edx, dword [ebx + 0x103f]
or eax, esi
mov esi, dword [ebp - 0x78]
lea edx, [edi + edx + 0x40d0]
mov byte [edx], al
imul eax, dword [ebp - 0x6c], 0x1347
imul edx, dword [ebx + 0x1021], 0x2a
lea eax, [edx + eax + 0x12b0]
lea edi, [esi + eax + 0x16]
mov eax, dword [ebx + 0x1749]
mov dword [ebp - 0x7c], eax
mov eax, dword [ebx + 0x16c6]

push ebx
mov ebx, eax ; save eax first
push eax
call freq_sel
mov ecx, eax
add esp, 4
mov eax, ebx
pop ebx

cmp ecx, 0x3f
mov edx, 0x3f
cmova ecx, edx
and ecx, 0x3f
cmp dword [ebp - 0x7c], 2
jne short loc_fffa6e50  ; jne 0xfffa6e50
cmp eax, 0x536
sbb edx, edx
add edx, 6
jmp short loc_fffa6e6d  ; jmp 0xfffa6e6d

loc_fffa6e50:  ; not directly referenced
cmp eax, 0x640
mov edx, 7
jbe short loc_fffa6e6d  ; jbe 0xfffa6e6d
cmp eax, 0x74b
jbe short loc_fffa6e6d  ; jbe 0xfffa6e6d
cmp eax, 0x856
sbb edx, edx
add edx, 8

loc_fffa6e6d:  ; not directly referenced
cmp edx, 0xf
mov esi, 0xf
cmovbe esi, edx
mov edx, 4
and esi, 0xf
shl esi, 6
or esi, ecx
cmp eax, 0x320
jbe short loc_fffa6ec3  ; jbe 0xfffa6ec3
cmp eax, 0x42b
mov dl, 5
jbe short loc_fffa6ec3  ; jbe 0xfffa6ec3
cmp eax, 0x535
mov dl, 6
jbe short loc_fffa6ec3  ; jbe 0xfffa6ec3
cmp eax, 0x640
mov dl, 7
jbe short loc_fffa6ec3  ; jbe 0xfffa6ec3
cmp eax, 0x74b
mov dl, 8
jbe short loc_fffa6ec3  ; jbe 0xfffa6ec3
cmp eax, 0x855
mov dl, 0xa
jbe short loc_fffa6ec3  ; jbe 0xfffa6ec3
cmp eax, 0x961
sbb edx, edx
add edx, 0xc

loc_fffa6ec3:  ; not directly referenced
cmp edx, 0xf
mov ecx, 0xf
cmovbe ecx, edx
movzx edx, word [edi + 8]
and ecx, 0xf
shl ecx, 0xa
or ecx, esi
movzx esi, word [edi + 6]
sub esi, edx
cmp eax, 0x536
lea edi, [esi + 7]
lea edx, [esi + 8]
cmovb edx, edi
cmp dword [ebp - 0x7c], 2
movzx edi, word [ebx + 0x1766]
jne short loc_fffa6f0b  ; jne 0xfffa6f0b
add edi, edi
xor edx, edx
lea eax, [edi + 0x157b]
div edi
lea edx, [esi + eax + 6]

loc_fffa6f0b:  ; not directly referenced
cmp edx, 0x1f
mov eax, 0x1f
cmova edx, eax
and edx, 0x1f
mov eax, edx
mov esi, edx
shl eax, 0xe
shl esi, 0x13
or eax, ecx
shl edx, 0x18
or eax, esi
or eax, edx
mov ecx, dword [ebp - 0x70]
mov edx, dword [ebx + 0x103f]
mov esi, dword [ebp - 0x74]
lea edx, [ecx + edx + 0x400c]
mov dword [edx], eax
mov dword [esi + 4], eax

loc_fffa6f44:  ; not directly referenced
inc dword [ebp - 0x6c]
add dword [ebp - 0x74], 0x1347
cmp dword [ebp - 0x6c], 2
jne loc_fffa697e  ; jne 0xfffa697e
xor eax, eax
cmp byte [ebx + 0x3acb], 0
je short loc_fffa6f6d  ; je 0xfffa6f6d
cmp dword [ebx + 0x2a71], 2
sete al

loc_fffa6f6d:  ; not directly referenced
cmp byte [ebx + 0x4e12], 0
je short loc_fffa6f85  ; je 0xfffa6f85
mov dl, al
or edx, 2
cmp dword [ebx + 0x3db8], 2
cmove eax, edx

loc_fffa6f85:  ; not directly referenced
movzx eax, al
lea esi, [ebx + 0x2974]
xor edi, edi
mov dword [ebp - 0x70], eax
mov dword [ebp - 0x7c], esi

loc_fffa6f96:  ; not directly referenced
mov esi, dword [ebp - 0x70]
bt esi, edi
jae loc_fffa7126  ; jae 0xfffa7126
imul eax, edi, 0x1347
mov edx, dword [ebp - 0x7c]
lea esi, [edx + eax + 8]
mov eax, dword [esi + 0x121a]
mov cl, byte [esi + 0x114f]
cmp eax, 3
mov byte [ebp - 0x6c], cl
sete cl
cmp eax, 8
sete dl
xor eax, eax
or cl, dl
je short loc_fffa6fe8  ; je 0xfffa6fe8
mov eax, dword [ebp - 0xc8]
mov al, byte [esi + 0x1235]
mov word [ebp - 0xc8], ax
mov eax, 1

loc_fffa6fe8:  ; not directly referenced
mov edx, dword [esi + 0x1315]
cmp edx, 8
sete cl
cmp edx, 3
sete dl
or cl, dl
jne short loc_fffa7002  ; jne 0xfffa7002
test eax, eax
je short loc_fffa7020  ; je 0xfffa7020

loc_fffa7002:  ; not directly referenced
mov edx, dword [ebp - 0xc8]
mov cl, byte [esi + 0x1330]
mov dh, cl
cmp dl, 5
mov word [ebp - 0xc8], dx
mov al, dl
jne short loc_fffa7026  ; jne 0xfffa7026
jmp short loc_fffa7034  ; jmp 0xfffa7034

loc_fffa7020:  ; not directly referenced
mov byte [ebp - 0x74], 6
jmp short loc_fffa7042  ; jmp 0xfffa7042

loc_fffa7026:  ; not directly referenced
mov ecx, dword [ebp - 0xc8]
movzx edx, ch
cmp dl, 5
jne short loc_fffa7020  ; jne 0xfffa7020

loc_fffa7034:  ; not directly referenced
mov edx, dword [ebp - 0xc8]
cmp dh, al
je short loc_fffa7020  ; je 0xfffa7020
mov byte [ebp - 0x74], 7

loc_fffa7042:  ; not directly referenced
sub esp, 0xc
mov edx, edi
movzx ecx, byte [ebp - 0x6c]
push ecx
movsx eax, byte [ebp - 0x74]
mov dword [ebp - 0x6c], ecx
push 1
xor ecx, ecx
push 1
push eax
mov eax, ebx
push 8
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x20
cmp byte [ebp - 0x74], 7
jne loc_fffa7126  ; jne 0xfffa7126
mov eax, dword [esi + 0x1a9]
sub esp, 0xc
push dword [ebp - 0x6c]
mov dword [ebp - 0x74], eax
xor ecx, ecx
push 1
shr eax, 0xf
mov edx, edi
push 1
and eax, 0xf
inc eax
push eax
mov eax, ebx
push 0
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x14
mov eax, dword [ebp - 0x74]
push dword [ebp - 0x6c]
shr eax, 0x13
xor ecx, ecx
push 1
and eax, 0xf
mov edx, edi
push 1
inc eax
push eax
mov eax, ebx
push 1
call fcn_fffb3b9c  ; call 0xfffb3b9c
mov esi, dword [esi + 0x1b1]
add esp, 0x14
push dword [ebp - 0x6c]
mov eax, esi
xor ecx, ecx
push 1
shr eax, 0x13
mov edx, edi
push 1
and eax, 0x1f
inc eax
push eax
mov eax, ebx
push 4
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x14
mov eax, esi
push dword [ebp - 0x6c]
shr eax, 0x18
xor ecx, ecx
push 1
and eax, 0x1f
mov edx, edi
push 1
shr esi, 0xe
inc eax
push eax
mov eax, ebx
and esi, 0x1f
push 5
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x14
lea eax, [esi + 1]
push dword [ebp - 0x6c]
xor ecx, ecx
mov edx, edi
push 1
push 1
push eax
mov eax, ebx
push 0xe
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x20

loc_fffa7126:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffa6f96  ; jne 0xfffa6f96
mov dword [ebp - 0x6c], 0x4294
mov dword [ebp - 0x74], 0

loc_fffa713e:  ; not directly referenced
imul eax, dword [ebp - 0x74], 0x1347
mov esi, dword [ebp - 0x78]
cmp dword [esi + eax + 0x12be], 2
jne loc_fffa73da  ; jne 0xfffa73da
imul edx, dword [ebx + 0x1021], 0x2a
mov esi, 0x1ff
mov edi, 0x2800
lea eax, [eax + edx + 0x2960]
lea ecx, [ebx + eax + 0x24]
movzx eax, word [ecx + 0x12]
cmp word [ecx + 0x14], 0x1ff
cmovbe si, word [ecx + 0x14]
movzx ecx, ax
and esi, 0x1ff
imul eax, eax, 0x59
shl esi, 0x10
cdq
idiv edi
mov edx, 0x7f
cmp eax, 0x7f
cmovbe edx, eax
or ecx, esi
mov esi, dword [ebp - 0x6c]
mov eax, dword [ebx + 0x103f]
shl edx, 0x19
sub esi, 0x4294
or ecx, edx
mov dword [ebp - 0x70], esi
lea eax, [esi + eax + 0x4298]
mov dword [eax], ecx
cmp dword [ebx + 0x1749], 2
mov ecx, dword [ebx + 0x16c6]
jne short loc_fffa71e2  ; jne 0xfffa71e2
movzx esi, word [ebx + 0x1766]
mov eax, 0x57e40
add esi, esi
cdq
idiv esi
jmp short loc_fffa7215  ; jmp 0xfffa7215

loc_fffa71e2:  ; not directly referenced
cmp ecx, 0x640
mov eax, 0x100
jbe short loc_fffa7215  ; jbe 0xfffa7215
cmp ecx, 0x74b
mov al, 0x2b
jbe short loc_fffa7226  ; jbe 0xfffa7226
cmp ecx, 0x855
mov al, 0x56
jbe short loc_fffa7226  ; jbe 0xfffa7226
cmp ecx, 0x961
sbb eax, eax
and eax, 0xffffffd5
add eax, 0x1ab
jmp short loc_fffa7226  ; jmp 0xfffa7226

loc_fffa7215:  ; not directly referenced
cmp ecx, 0x320
mov edx, 4
jbe loc_fffa72b1  ; jbe 0xfffa72b1

loc_fffa7226:  ; not directly referenced
cmp ecx, 0x42b
jbe short loc_fffa72a5  ; jbe 0xfffa72a5
cmp ecx, 0x535
jbe short loc_fffa725d  ; jbe 0xfffa725d
cmp ecx, 0x640
jbe short loc_fffa72ac  ; jbe 0xfffa72ac
cmp ecx, 0x74b
jbe short loc_fffa72b8  ; jbe 0xfffa72b8
cmp ecx, 0x855
jbe short loc_fffa7289  ; jbe 0xfffa7289
cmp ecx, 0x960
mov edx, 0xe
ja short loc_fffa7282  ; ja 0xfffa7282
jmp short loc_fffa7290  ; jmp 0xfffa7290

loc_fffa725d:  ; not directly referenced
cmp ecx, 0x640
mov edx, 7
jbe short loc_fffa72b1  ; jbe 0xfffa72b1
cmp ecx, 0x74b
jbe short loc_fffa72bd  ; jbe 0xfffa72bd
cmp ecx, 0x855
jbe short loc_fffa7297  ; jbe 0xfffa7297
cmp ecx, 0x960
jbe short loc_fffa729e  ; jbe 0xfffa729e

loc_fffa7282:  ; not directly referenced
mov ecx, 0x14
jmp short loc_fffa72c2  ; jmp 0xfffa72c2

loc_fffa7289:  ; not directly referenced
mov edx, 0xb
jmp short loc_fffa7297  ; jmp 0xfffa7297

loc_fffa7290:  ; not directly referenced
mov edx, 0xc
jmp short loc_fffa729e  ; jmp 0xfffa729e

loc_fffa7297:  ; not directly referenced
mov ecx, 0x10
jmp short loc_fffa72c2  ; jmp 0xfffa72c2

loc_fffa729e:  ; not directly referenced
mov ecx, 0x12
jmp short loc_fffa72c2  ; jmp 0xfffa72c2

loc_fffa72a5:  ; not directly referenced
mov edx, 6
jmp short loc_fffa72b1  ; jmp 0xfffa72b1

loc_fffa72ac:  ; not directly referenced
mov edx, 8

loc_fffa72b1:  ; not directly referenced
mov ecx, 0xc
jmp short loc_fffa72c2  ; jmp 0xfffa72c2

loc_fffa72b8:  ; not directly referenced
mov edx, 0xa

loc_fffa72bd:  ; not directly referenced
mov ecx, 0xe

loc_fffa72c2:  ; not directly referenced
shl edx, 0xc
cmp eax, 0x3ff
mov esi, 0x3ff
mov edi, 0xf
cmovbe esi, eax
sub ecx, 8
and esi, 0x3ff
or dh, 2
shl esi, 0x10
cmp ecx, 0xf
mov eax, dword [ebx + 0x103f]
cmovbe edi, ecx
or edx, esi
shl edi, 0x1c
xor ecx, ecx
or edx, edi
mov edi, dword [ebp - 0x70]
lea eax, [edi + eax + 0x42a4]
mov dword [eax], edx
cmp dword [ebx + 0x1749], 2
mov esi, dword [ebx + 0x1005]
mov edx, dword [ebx + 0x16c6]
jne short loc_fffa7337  ; jne 0xfffa7337
movzx edi, word [ebx + 0x1766]
mov eax, 0x15f90
add edi, edi
cdq
idiv edi
cmp esi, HASWELL_FAMILY_ULT
jne short loc_fffa739d  ; jne 0xfffa739d
jmp short loc_fffa7377  ; jmp 0xfffa7377

loc_fffa7337:  ; not directly referenced
cmp edx, 0x640
mov eax, 0x40
jbe loc_fffa7810  ; jbe 0xfffa7810
cmp edx, 0x74b
mov al, 0x4b
jbe loc_fffa7810  ; jbe 0xfffa7810
cmp edx, 0x855
mov al, 0x56
jbe loc_fffa7810  ; jbe 0xfffa7810
cmp edx, 0x961
sbb eax, eax
and eax, 0xfffffff5
add eax, 0x6b
jmp near loc_fffa7810  ; jmp 0xfffa7810

loc_fffa7377:  ; not directly referenced
mov edx, 0x100
jmp short loc_fffa7383  ; jmp 0xfffa7383

loc_fffa737e:  ; not directly referenced
mov edx, 0x80

loc_fffa7383:  ; not directly referenced
cmp eax, 0x3ff
mov ecx, 0x3ff
cmovbe ecx, eax
and ecx, 0x3ff
shl ecx, 0xa
or ecx, edx
jmp short loc_fffa73ae  ; jmp 0xfffa73ae

loc_fffa739d:  ; not directly referenced
cmp eax, 0xff
mov edx, 0xff
mov cl, 0x80
cmovbe edx, eax
mov ch, dl

loc_fffa73ae:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
mov esi, dword [ebp - 0x70]
lea eax, [esi + eax + 0x4290]
mov dword [eax], ecx
mov eax, dword [ebp - 0x6c]
add eax, dword [ebx + 0x103f]
mov edx, dword [eax]
mov dl, 0xff
mov dword [eax], edx
mov eax, dword [ebp - 0x6c]
add eax, dword [ebx + 0x103f]
mov eax, dword [eax]

loc_fffa73da:  ; not directly referenced
inc dword [ebp - 0x74]
add dword [ebp - 0x6c], 0x400
cmp dword [ebp - 0x74], 2
jne loc_fffa713e  ; jne 0xfffa713e
mov edx, dword [ebx + 0x1005]
cmp edx, HASWELL_FAMILY_MOBILE
jne short loc_fffa740a  ; jne 0xfffa740a
cmp dword [ebx + 0x1001], 1
mov eax, 0x100030
je short loc_fffa7437  ; je 0xfffa7437

loc_fffa740a:  ; not directly referenced
cmp edx, HASWELL_FAMILY_ULT
mov eax, 0x100000
jne short loc_fffa7437  ; jne 0xfffa7437
cmp dword [ebx + 0x1749], 2
mov ax, 0x2000
jne short loc_fffa7437  ; jne 0xfffa7437
cmp byte [ebx + 0x16bb], 1
sbb eax, eax
and eax, 0x2000
add eax, 0x4100000

loc_fffa7437:  ; not directly referenced
mov edx, dword [ebx + 0x103f]
mov dword [edx + 0x4c20], eax
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4f8c], 0x553c3038
cmp byte [ebx + 0x1743], 0
je short loc_fffa7469  ; je 0xfffa7469
mov eax, dword [ebx + 0x103f]
mov byte [eax + 0x4c39], 1

loc_fffa7469:  ; not directly referenced
cmp dword [ebx + 0x1749], 2
jne short loc_fffa74b4  ; jne 0xfffa74b4
cmp dword [ebx + 0x297c], 2
jne short loc_fffa7493  ; jne 0xfffa7493
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x4010]
and eax, 0xfffffff0
or eax, 7
mov dword [edx + 0x4010], eax

loc_fffa7493:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffa74b4  ; jne 0xfffa74b4
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x4410]
and eax, 0xfffffff0
or eax, 7
mov dword [edx + 0x4410], eax

loc_fffa74b4:  ; not directly referenced
xor esi, esi
xor eax, eax
lea edi, [ebx + 0x2974]

loc_fffa74be:  ; not directly referenced
imul ecx, eax, 0x1347
mov dword [ebp + eax*4 - 0x28], 0
add ecx, edi
cmp dword [ecx + 8], 2
lea edx, [ecx + 8]
jne short loc_fffa7501  ; jne 0xfffa7501
cmp dword [edx + 0x1151], 2
jne short loc_fffa74ea  ; jne 0xfffa74ea
mov ecx, dword [edx + 0x1222]
mov dword [ebp + eax*4 - 0x28], ecx

loc_fffa74ea:  ; not directly referenced
cmp dword [edx + 0x124c], 2
jne short loc_fffa7501  ; jne 0xfffa7501
mov ecx, dword [ebp + eax*4 - 0x28]
add ecx, dword [edx + 0x131d]
mov dword [ebp + eax*4 - 0x28], ecx

loc_fffa7501:  ; not directly referenced
inc eax
cmp eax, 2
jne short loc_fffa74be  ; jne 0xfffa74be
mov eax, dword [ebp - 0x24]
mov ecx, dword [ebp - 0x28]
cmp eax, ecx
ja short loc_fffa752c  ; ja 0xfffa752c
mov edx, 4
mov dword [ebx + 0x2980], 0
mov dword [ebx + 0x3cc7], 1
jmp short loc_fffa7547  ; jmp 0xfffa7547

loc_fffa752c:  ; not directly referenced
mov edx, 1
mov dword [ebx + 0x2980], 1
mov dword [ebx + 0x3cc7], 0
mov eax, ecx

loc_fffa7547:  ; not directly referenced
mov ecx, eax
mov edi, 0xff
shr ecx, 8
cmp ecx, 0xff
cmovbe edi, ecx
add ecx, ecx
cmp ecx, 0xff
mov dword [ebp - 0x6c], edi
mov edi, 0xff
cmova ecx, edi
and edx, 0xfffffbcf
movzx ecx, cl
mov dword [ebp - 0x70], edx
shl ecx, 0x10
xor edx, edx
shl dword [ebp - 0x6c], 0x18
or dword [ebp - 0x6c], ecx
cmp dword [ebx + 0x1749], 2
sete dl
or dword [ebp - 0x70], 0x20
shl edx, 0xa
or dword [ebp - 0x70], edx
cmp byte [ebx + 0x1071], 0
mov edx, dword [ebp - 0x70]
je short loc_fffa75e4  ; je 0xfffa75e4
cmp word [ebx + 0x1072], 0x3fff
mov esi, 0x3fff
cmovbe si, word [ebx + 0x1072]
mov edi, 3
and esi, 0x3fff
mov cl, byte [ebx + 0x1074]
cmp byte [ebx + 0x1074], 3
cmovbe edi, ecx
and edi, 3
shl edi, 0x15
or esi, edi
or esi, 0x800000

loc_fffa75e4:  ; not directly referenced
cmp byte [ebx + 0x16b3], 0
je short loc_fffa7622  ; je 0xfffa7622
mov edi, dword [ebp - 0x24]
cmp dword [ebp - 0x28], edi
jne short loc_fffa761b  ; jne 0xfffa761b
call mrc_highest_bit
mov edi, dword [ebp - 0x70]
sub eax, 9
or edi, 0x40
and eax, 7
mov edx, edi
or esi, 0x800000
shl eax, 7
and edx, 0xfffffc7f
or edx, eax
jmp short loc_fffa7622  ; jmp 0xfffa7622

loc_fffa761b:  ; not directly referenced
mov byte [ebx + 0x16b3], 0

loc_fffa7622:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
lea ecx, [ebx + 0x16be]
mov dword [ebp - 0x74], 0x5004
mov dword [ebp - 0x70], ecx
mov dword [eax + 0x5024], esi
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x5000], edx
mov eax, dword [ebx + 0x103f]
mov edx, dword [ebp - 0x6c]
mov dword [ebp - 0x6c], 0
mov dword [eax + 0x5014], edx

loc_fffa7660:  ; not directly referenced
imul eax, dword [ebp - 0x6c], 0x1347
mov esi, dword [ebp - 0xa0]
cmp dword [esi + eax + 0x12be], 2
jne loc_fffa77e6  ; jne 0xfffa77e6
mov edi, dword [ebp - 0x70]
xor edx, edx
lea eax, [edi + eax + 0x12be]
cmp dword [eax + 0x1151], 2
jne short loc_fffa7696  ; jne 0xfffa7696
mov edx, dword [eax + 0x1222]

loc_fffa7696:  ; not directly referenced
cmp dword [eax + 0x124c], 2
lea ecx, [eax + 0x1151]
lea esi, [eax + 0x124c]
jne short loc_fffa76b3  ; jne 0xfffa76b3
cmp dword [eax + 0x131d], edx
ja short loc_fffa76b9  ; ja 0xfffa76b9

loc_fffa76b3:  ; not directly referenced
mov edx, ecx
xor eax, eax
jmp short loc_fffa76c2  ; jmp 0xfffa76c2

loc_fffa76b9:  ; not directly referenced
mov edx, esi
mov eax, 0x10000
mov esi, ecx

loc_fffa76c2:  ; not directly referenced
mov cl, byte [edx + 0xdd]
test cl, cl
mov byte [ebp - 0x78], cl
je short loc_fffa7715  ; je 0xfffa7715
cmp dword [edx], 2
jne short loc_fffa7715  ; jne 0xfffa7715
mov edi, dword [edx + 0xd1]
mov ecx, 0xff
shr edi, 8
cmp edi, 0xff
cmova edi, ecx
mov ecx, edi
mov al, cl
xor ecx, ecx
cmp byte [ebp - 0x78], 1
setne cl
and eax, 0xfff5ffff
mov edi, ecx
xor ecx, ecx
shl edi, 0x11
cmp byte [edx + 0xe1], 0x10
sete cl
or eax, edi
shl ecx, 0x13
or eax, ecx

loc_fffa7715:  ; not directly referenced
mov cl, byte [esi + 0xdd]
test cl, cl
mov byte [ebp - 0x78], cl
je short loc_fffa776a  ; je 0xfffa776a
cmp dword [esi], 2
jne short loc_fffa776a  ; jne 0xfffa776a
mov edi, dword [esi + 0xd1]
mov ecx, 0xff
shr edi, 8
cmp edi, 0xff
cmova edi, ecx
mov ecx, edi
mov ah, cl
xor ecx, ecx
cmp byte [ebp - 0x78], 1
setne cl
and eax, 0xffebffff
mov edi, ecx
xor ecx, ecx
shl edi, 0x12
cmp byte [esi + 0xe1], 0x10
sete cl
or eax, edi
mov esi, ecx
shl esi, 0x14
or eax, esi

loc_fffa776a:  ; not directly referenced
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffa7786  ; jne 0xfffa7786
lea ecx, [eax + eax]
and eax, 0xffefffff
and ecx, 0x100000
or eax, ecx

loc_fffa7786:  ; not directly referenced
mov ecx, eax
or ecx, 0x200000
cmp byte [ebx + 0x106b], 0
cmovne eax, ecx
mov ecx, eax
or ecx, 0x400000
cmp byte [ebx + 0x106c], 0
cmovne eax, ecx
mov ecx, dword [ebp - 0x74]
add ecx, dword [ebx + 0x103f]
mov dword [ecx], eax
cmp dword [ebx + 0x1749], 2
jne short loc_fffa77e6  ; jne 0xfffa77e6
xor eax, eax
cmp byte [edx + 0xe1], 0x20
mov edx, dword [ebp - 0x6c]
sete al
shl edx, 0xa
mov ecx, dword [ebx + 0x103f]
lea eax, [eax + eax*2 + 0x200d00]
lea edx, [ecx + edx + 0x4210]
mov dword [edx], eax

loc_fffa77e6:  ; not directly referenced
inc dword [ebp - 0x6c]
add dword [ebp - 0x74], 4
cmp dword [ebp - 0x6c], 2
jne loc_fffa7660  ; jne 0xfffa7660
xor edx, edx
jmp short loc_fffa7821  ; jmp 0xfffa7821

loc_fffa77fb:  ; not directly referenced
mov eax, ebx
call wait_5084
test eax, eax
mov edx, 0x11
jne short loc_fffa7821  ; jne 0xfffa7821
jmp near loc_fffa59f1  ; jmp 0xfffa59f1

loc_fffa7810:  ; not directly referenced
cmp esi, HASWELL_FAMILY_ULT
jne loc_fffa739d  ; jne 0xfffa739d
jmp near loc_fffa737e  ; jmp 0xfffa737e

loc_fffa7821:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, edx
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffa782b:
db 0x00

fcn_fffa7e71:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
pop ebp
ret

fcn_fffa7ecd:  ; not directly referenced
push ebp
xor ecx, ecx
mov edx, 0x38
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0xcc]
mov edi, dword [ebp + 8]
mov eax, edi
mov esi, dword [edi + 0x1005]
lea ebx, [edi + 0x16be]
mov dword [ebp - 0x90], ebx
mov ebx, dword [edi + 0x1001]
mov dword [ebp - 0x74], esi
mov dword [ebp - 0x7c], ebx
lea esi, [edi + 0x2974]
call fcn_fffc6438  ; call 0xfffc6438
mov dword [ebp - 0x8c], esi
mov dword [ebp - 0x6c], 0x4004
xor esi, esi

loc_fffa7f1e:  ; not directly referenced
imul eax, esi, 0x1347
mov ebx, dword [ebp - 0x90]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffa8131  ; jne 0xfffa8131
mov ebx, dword [ebp - 0x8c]
cmp byte [edi + 0x102e], 1
lea eax, [ebx + eax + 8]
mov dword [ebp - 0x70], eax
jne loc_fffa7fef  ; jne 0xfffa7fef
cmp dword [ebp - 0x7c], 2
setbe dl
cmp dword [ebp - 0x74], HASWELL_FAMILY_MOBILE
sete al
test dl, al
jne short loc_fffa7f88  ; jne 0xfffa7f88
cmp dword [ebp - 0x74], HASWELL_FAMILY_GT3E
sete al
cmp dword [ebp - 0x74], HASWELL_FAMILY_ULT
sete dl
or eax, edx
cmp dword [ebp - 0x7c], 0
sete dl
test al, dl
je short loc_fffa7fef  ; je 0xfffa7fef

loc_fffa7f88:  ; not directly referenced
mov ebx, dword [ebp - 0x6c]
add ebx, dword [edi + 0x103f]
mov cl, 6
mov eax, dword [ebx]
mov edx, eax
shr edx, 0xc
and edx, 7
cmp dl, 6
cmovb edx, ecx
and ah, 0x8f
and edx, 7
shl edx, 0xc
or eax, edx
mov edx, eax
shr edx, 0xf
and edx, 0xf
cmp dl, 6
cmovb edx, ecx
and eax, 0xfff87fff
and edx, 0xf
shl edx, 0xf
or eax, edx
mov edx, eax
shr edx, 0x13
and edx, 0xf
cmp dl, 6
cmovb edx, ecx
and eax, 0xff87ffff
and edx, 0xf
shl edx, 0x13
or eax, edx
mov dword [ebx], eax
mov ebx, dword [ebp - 0x70]
mov dword [ebx + 0x1a9], eax

loc_fffa7fef:  ; not directly referenced
cmp byte [edi + 0x102e], 1
jne loc_fffa8080  ; jne 0xfffa8080
jmp short loc_fffa8016  ; jmp 0xfffa8016

loc_fffa7ffe:  ; not directly referenced
rdrand eax
mov dword [ebp - 0x60], eax
pushfd
pop eax
mov dword [ebp - 0x64], eax
test byte [ebp - 0x64], 1
mov eax, edx
cmovne eax, dword [ebp - 0x60]
dec ebx
jmp short loc_fffa801f  ; jmp 0xfffa801f

loc_fffa8016:  ; not directly referenced
mov ebx, 0x186a0
xor eax, eax
xor edx, edx

loc_fffa801f:  ; not directly referenced
test eax, eax
sete cl
test ebx, ebx
setne byte [ebp - 0x78]
test byte [ebp - 0x78], cl
jne short loc_fffa7ffe  ; jne 0xfffa7ffe
or ebx, eax
jne short loc_fffa806a  ; jne 0xfffa806a
push edx
lea eax, [ebp - 0x60]
lea edx, [ebp - 0x65]
push eax
lea eax, [ebp - 0x68]
lea ecx, [ebp - 0x66]
push eax
lea eax, [ebp - 0x67]
push eax
lea eax, [ebp - 0x64]
call fcn_fffc8290  ; call 0xfffc8290
movzx eax, byte [ebp - 0x65]
add esp, 0x10
imul eax, eax, 0x3c
movzx edx, byte [ebp - 0x64]
add eax, edx
movzx edx, byte [ebp - 0x66]
imul edx, edx, 0xe10
add eax, edx

loc_fffa806a:  ; not directly referenced
movzx eax, ax
mov edx, dword [edi + 0x103f]
lea eax, [eax + eax + 1]
lea edx, [edx + esi*4 + 0x2000]
mov dword [edx], eax

loc_fffa8080:  ; not directly referenced
imul eax, dword [edi + 0x1021], 0x2a
mov ebx, dword [ebp - 0x70]
cmp word [ebx + eax + 0xc], 1
jne short loc_fffa80bc  ; jne 0xfffa80bc
mov eax, dword [edi + 0x103f]
mov ebx, dword [ebp - 0x6c]
mov cl, byte [edi + 0x106e]
lea edx, [ebx + eax + 0xc]
mov ebx, ecx
mov eax, dword [edx]
and ebx, 1
shr cl, 1
and eax, 0xfffffff0
and ecx, 7
or eax, ebx
add ecx, ecx
or eax, ecx
mov dword [edx], eax

loc_fffa80bc:  ; not directly referenced
cmp byte [edi + 0x106f], 0
jne short loc_fffa80e4  ; jne 0xfffa80e4
mov ebx, dword [ebp - 0x70]
mov edx, dword [ebp - 0x6c]
mov eax, dword [ebx + 0x1a9]
and eax, 0xdfffffff
mov dword [ebx + 0x1a9], eax
add edx, dword [edi + 0x103f]
mov dword [edx], eax

loc_fffa80e4:  ; not directly referenced
mov eax, dword [edi + 0x103f]
mov ebx, dword [ebp - 0x70]
lea eax, [eax + esi*8 + 0x48a8]
mov dword [eax], 0x3000
mov dl, byte [ebx + 0x114f]
mov eax, dword [edi + 0x103f]
mov ebx, dword [ebp - 0x6c]
lea eax, [ebx + eax + 0x29c]
mov byte [eax], dl
cmp byte [edi + 0x1740], 1
jne short loc_fffa8131  ; jne 0xfffa8131
mov eax, dword [edi + 0x103f]
lea edx, [eax + esi*4 + 0x5004]
mov eax, dword [edx]
or eax, 0x3000000
mov dword [edx], eax

loc_fffa8131:  ; not directly referenced
inc esi
add dword [ebp - 0x6c], 0x400
cmp esi, 2
jne loc_fffa7f1e  ; jne 0xfffa7f1e
xor ebx, ebx
cmp dword [edi + 0x1749], 2
sete bl
test byte [edi + 0x16b7], 1
mov dword [ebp - 0x84], ebx
je short loc_fffa8161  ; je 0xfffa8161
test ebx, ebx
je short loc_fffa816a  ; je 0xfffa816a

loc_fffa8161:  ; not directly referenced
xor edx, edx
mov eax, edi
call fcn_fffb348c  ; call 0xfffb348c

loc_fffa816a:  ; not directly referenced
cmp dword [ebp - 0x74], HASWELL_FAMILY_MOBILE
sete byte [ebp - 0x9c]
cmp dword [ebp - 0x74], HASWELL_FAMILY_GT3E
sete al
or al, byte [ebp - 0x9c]
jne short loc_fffa81a2  ; jne 0xfffa81a2

loc_fffa818a:  ; not directly referenced
lea esi, [edi + 0x2974]
mov dword [ebp - 0x6c], 0
mov dword [ebp - 0xa0], esi
jmp near loc_fffa82af  ; jmp 0xfffa82af

loc_fffa81a2:  ; not directly referenced
lea eax, [edi + 0x2974]
mov dword [ebp - 0x78], 0x3074
mov dword [ebp - 0x70], 0
mov dword [ebp - 0x98], eax

loc_fffa81bc:  ; not directly referenced
imul eax, dword [ebp - 0x70], 0x1347
mov ebx, dword [ebp - 0x90]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffa8296  ; jne 0xfffa8296
mov esi, dword [ebp - 0x98]
mov dword [ebp - 0x6c], 0
lea edx, [esi + eax + 8]
mov al, byte [edi + 0x1755]
mov byte [ebp - 0x94], al
jmp short loc_fffa8263  ; jmp 0xfffa8263

loc_fffa81f6:  ; not directly referenced
mov ecx, dword [ebp - 0x6c]
mov esi, 0xfffffff0
add ecx, 0x50
movzx ebx, byte [edx + ecx*4 + 7]
mov al, byte [edx + ecx*4 + 6]
shr al, 5
and ebx, 1
shl ebx, 3
or eax, ebx
or esi, eax
test ebx, ebx
mov bl, byte [edx + ecx*4 + 7]
cmovne eax, esi
shr bl, 1
movsx eax, al
mov esi, ebx
and esi, 7
mov dword [ebp - 0x88], esi
mov bl, byte [edx + ecx*4 + 7]
shr bl, 4
mov esi, 0xfffffff0
or esi, ebx
test bl, 8
mov cl, byte [edx + ecx*4 + 8]
cmovne ebx, esi
add eax, dword [ebp - 0x88]
and ecx, 7
cmp eax, 6
jg short loc_fffa8272  ; jg 0xfffa8272
movsx ebx, bl
inc dword [ebp - 0x6c]
add ebx, ecx
cmp ebx, 6
jg short loc_fffa8272  ; jg 0xfffa8272

loc_fffa8263:  ; not directly referenced
mov al, byte [ebp - 0x6c]
cmp byte [ebp - 0x94], al
ja short loc_fffa81f6  ; ja 0xfffa81f6
xor ecx, ecx
jmp short loc_fffa8274  ; jmp 0xfffa8274

loc_fffa8272:  ; not directly referenced
mov cl, 1

loc_fffa8274:  ; not directly referenced
mov al, byte [edx + 0x142]
and eax, 0xfffffffe
or eax, ecx
mov byte [edx + 0x142], al
mov eax, dword [ebp - 0x78]
add eax, dword [edi + 0x103f]
mov edx, dword [edx + 0x141]
mov dword [eax], edx

loc_fffa8296:  ; not directly referenced
inc dword [ebp - 0x70]
add dword [ebp - 0x78], 0x100
cmp dword [ebp - 0x70], 2
jne loc_fffa81bc  ; jne 0xfffa81bc
jmp near loc_fffa818a  ; jmp 0xfffa818a

loc_fffa82af:  ; not directly referenced
imul edx, dword [ebp - 0x6c], 0x1347
mov ebx, dword [ebp - 0x90]
mov dword [ebp - 0x78], edx
cmp dword [ebx + edx + 0x12be], 2
je short loc_fffa82d7  ; je 0xfffa82d7

loc_fffa82c9:  ; not directly referenced
inc dword [ebp - 0x6c]
cmp dword [ebp - 0x6c], 2
jne short loc_fffa82af  ; jne 0xfffa82af
jmp near loc_fffa83ac  ; jmp 0xfffa83ac

loc_fffa82d7:  ; not directly referenced
mov edx, dword [ebp - 0xa0]
mov esi, dword [ebp - 0x78]
mov ebx, dword [ebp - 0x6c]
mov byte [ebp - 0x70], 0
shl ebx, 8
mov dword [ebp - 0x98], ebx
lea eax, [edx + esi + 8]
jmp short loc_fffa836f  ; jmp 0xfffa836f

loc_fffa82f6:  ; not directly referenced
mov cl, byte [ebp - 0x88]
mov ebx, 1
shl ebx, cl
test byte [ebp - 0x94], bl
je short loc_fffa831a  ; je 0xfffa831a
mov bl, byte [esi + 0x24]
mov cl, byte [esi]
cmp byte [esi], bl
cmovae ebx, ecx
cmp dl, bl
cmovb edx, ebx

loc_fffa831a:  ; not directly referenced
inc dword [ebp - 0x88]
add esi, 9
cmp dword [ebp - 0x88], 4
jne short loc_fffa82f6  ; jne 0xfffa82f6
mov ecx, dword [ebp - 0x80]
mov bl, 7
shr dl, 3
add ecx, 0x50
sub ebx, edx
shr ebx, 1
and ebx, 3
mov dl, byte [eax + ecx*4 + 6]
and byte [eax + ecx*4 + 5], 0x7f
and edx, 0xfffffffc
or edx, ebx
mov byte [eax + ecx*4 + 6], dl
mov edx, dword [eax + ecx*4 + 5]
mov ecx, dword [ebp - 0x80]
mov ebx, dword [ebp - 0x98]
shl ecx, 9
inc byte [ebp - 0x70]
lea ecx, [ebx + ecx + 0x60]
add ecx, dword [edi + 0x103f]
mov dword [ecx], edx

loc_fffa836f:  ; not directly referenced
mov dl, byte [ebp - 0x70]
cmp dl, byte [edi + 0x1755]
jae loc_fffa82c9  ; jae 0xfffa82c9
mov ebx, dword [ebp - 0x78]
mov dword [ebp - 0x88], 0
movzx esi, dl
xor edx, edx
mov dword [ebp - 0x80], esi
lea esi, [eax + esi + 0x1106]
mov bl, byte [edi + ebx + 0x3acb]
mov byte [ebp - 0x94], bl
jmp near loc_fffa82f6  ; jmp 0xfffa82f6

loc_fffa83ac:  ; not directly referenced
movzx ecx, word [edi + 0x1766]
mov eax, ecx
shr ax, 1
movzx eax, ax
add eax, 0xb2c
cdq
idiv ecx
mov ecx, 7
cmp eax, 7
ja short loc_fffa83dc  ; ja 0xfffa83dc
xor cl, cl
cmp eax, 2
jbe short loc_fffa83dc  ; jbe 0xfffa83dc
cmp eax, 3
mov cl, 4
cmovne ecx, eax

loc_fffa83dc:  ; not directly referenced
and ecx, 7
xor eax, eax
cmp dword [ebp - 0x84], 0
cmove eax, ecx
xor ebx, ebx
lea esi, [ecx*8]
mov edx, esi
mov byte [ebp - 0x70], dl
lea ecx, [eax*8]
mov byte [ebp - 0x78], cl

loc_fffa8403:  ; not directly referenced
imul eax, ebx, 0x1347
mov esi, dword [ebp - 0x90]
cmp dword [esi + eax + 0x12be], 2
je short loc_fffa8424  ; je 0xfffa8424

loc_fffa8419:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffa8403  ; jne 0xfffa8403
jmp near loc_fffa84bd  ; jmp 0xfffa84bd

loc_fffa8424:  ; not directly referenced
mov esi, dword [ebp - 0x8c]
lea edx, [esi + eax + 8]
mov eax, ebx
shl eax, 8
mov dword [ebp - 0x6c], eax
xor eax, eax
jmp short loc_fffa84b0  ; jmp 0xfffa84b0

loc_fffa843a:  ; not directly referenced
cmp dword [ebp - 0x74], HASWELL_FAMILY_ULT
jne short loc_fffa8455  ; jne 0xfffa8455
movzx esi, al
add esi, 0x50
mov cl, byte [edx + esi*4 + 8]
and ecx, 0xffffffc7
or ecx, dword [ebp - 0x78]
jmp short loc_fffa8481  ; jmp 0xfffa8481

loc_fffa8455:  ; not directly referenced
cmp dword [ebp - 0x7c], 1
sete cl
test byte [ebp - 0x9c], cl
je short loc_fffa8471  ; je 0xfffa8471
movzx ecx, al
and byte [edx + ecx*4 + 0x148], 0xc7
jmp short loc_fffa8485  ; jmp 0xfffa8485

loc_fffa8471:  ; not directly referenced
movzx esi, al
add esi, 0x50
mov cl, byte [edx + esi*4 + 8]
and ecx, 0xffffffc7
or ecx, dword [ebp - 0x70]

loc_fffa8481:  ; not directly referenced
mov byte [edx + esi*4 + 8], cl

loc_fffa8485:  ; not directly referenced
movzx ecx, al
inc eax
mov esi, dword [edx + ecx*4 + 0x145]
shl ecx, 9
mov dword [ebp - 0x88], esi
mov esi, dword [ebp - 0x6c]
lea esi, [esi + ecx + 0x60]
mov ecx, dword [edi + 0x103f]
add esi, ecx
mov ecx, dword [ebp - 0x88]
mov dword [esi], ecx

loc_fffa84b0:  ; not directly referenced
cmp al, byte [edi + 0x1755]
jb short loc_fffa843a  ; jb 0xfffa843a
jmp near loc_fffa8419  ; jmp 0xfffa8419

loc_fffa84bd:  ; not directly referenced
cmp dword [ebp - 0x74], HASWELL_FAMILY_ULT
jne loc_fffa878d  ; jne 0xfffa878d
mov dword [ebp - 0x74], 0

loc_fffa84d1:  ; not directly referenced
imul eax, dword [ebp - 0x74], 0x1347
mov ebx, dword [ebp - 0x90]
cmp dword [ebx + eax + 0x12be], 2
je short loc_fffa84f7  ; je 0xfffa84f7

loc_fffa84e8:  ; not directly referenced
inc dword [ebp - 0x74]
cmp dword [ebp - 0x74], 2
je loc_fffa8667  ; je 0xfffa8667
jmp short loc_fffa84d1  ; jmp 0xfffa84d1

loc_fffa84f7:  ; not directly referenced
mov esi, dword [ebp - 0x8c]
mov dword [ebp - 0x80], 0
lea ebx, [esi + eax + 8]
mov al, byte [edi + eax + 0x3acb]
mov byte [ebp - 0x7c], al
mov dword [ebp - 0x6c], ebx
xor esi, esi

loc_fffa8517:  ; not directly referenced
mov cl, byte [ebp - 0x80]
mov eax, 1
shl eax, cl
test byte [ebp - 0x7c], al
je short loc_fffa8553  ; je 0xfffa8553
mov al, byte [edi + 0x1755]
mov byte [ebp - 0x70], al
xor eax, eax
jmp short loc_fffa854e  ; jmp 0xfffa854e

loc_fffa8533:  ; not directly referenced
mov ecx, dword [ebp - 0x6c]
mov dx, word [ecx + eax*2 + 0x26d]
mov ecx, esi
movzx ecx, cl
shr dx, 6
cmp cx, dx
cmovbe esi, edx
inc eax

loc_fffa854e:  ; not directly referenced
cmp byte [ebp - 0x70], al
ja short loc_fffa8533  ; ja 0xfffa8533

loc_fffa8553:  ; not directly referenced
inc dword [ebp - 0x80]
add dword [ebp - 0x6c], 0x12
cmp dword [ebp - 0x80], 4
jne short loc_fffa8517  ; jne 0xfffa8517
cmp dword [ebp - 0x84], 0
mov al, 1
je short loc_fffa8578  ; je 0xfffa8578
movzx ecx, word [edi + 0x1766]
lea eax, [ecx + 0x3f]
cdq
idiv ecx

loc_fffa8578:  ; not directly referenced
lea eax, [esi + eax*2 + 0xf]
mov byte [ebp - 0x70], al
mov eax, dword [ebp - 0x74]
mov byte [ebp - 0x6c], 0
shl eax, 8
add eax, 0x64
mov dword [ebp - 0x7c], eax
jmp near loc_fffa8653  ; jmp 0xfffa8653

loc_fffa8594:  ; not directly referenced
movzx esi, byte [ebp - 0x6c]
lea edx, [esi + 0x50]
mov al, byte [ebx + edx*4 + 8]
shr al, 6
and eax, 1
cmp al, 1
sbb byte [ebp - 0x70], 0xff
movzx ecx, byte [ebx + edx*4 + 7]
mov al, byte [ebx + edx*4 + 6]
shr al, 5
and ecx, 1
shl ecx, 3
or eax, ecx
mov dword [ebp - 0x80], ecx
mov cl, al
mov dl, byte [ebx + edx*4 + 7]
or ecx, 0xfffffff0
cmp dword [ebp - 0x80], 0
cmovne eax, ecx
shr dl, 1
and edx, 7
test byte [ebx + 0x144], 0x40
je short loc_fffa8602  ; je 0xfffa8602
lea edx, [esi + 0x58]
mov al, byte [ebx + edx*4 + 0xa]
movzx edx, byte [ebx + edx*4 + 0xb]
shr al, 5
and edx, 3
shl edx, 3
or eax, edx
mov dl, byte [ebp - 0x70]
cmp byte [ebp - 0x70], al
cmovae eax, edx
jmp short loc_fffa860d  ; jmp 0xfffa860d

loc_fffa8602:  ; not directly referenced
lea eax, [edx + eax + 0xe]
mov cl, 0x11
cmp al, 0x11
cmovl eax, ecx

loc_fffa860d:  ; not directly referenced
and eax, 0x1f
lea edx, [esi + 0x58]
mov cl, al
shl ecx, 5
shr al, 3
mov byte [ebp - 0x78], cl
mov cl, byte [ebx + edx*4 + 0xa]
and eax, 3
and ecx, 0x1f
or ecx, dword [ebp - 0x78]
mov byte [ebx + edx*4 + 0xa], cl
mov cl, byte [ebx + edx*4 + 0xb]
and ecx, 0xfffffffc
or ecx, eax
mov byte [ebx + edx*4 + 0xb], cl
mov eax, dword [ebx + edx*4 + 9]
mov edx, esi
inc byte [ebp - 0x6c]
shl edx, 9
add edx, dword [ebp - 0x7c]
add edx, dword [edi + 0x103f]
mov dword [edx], eax

loc_fffa8653:  ; not directly referenced
mov al, byte [ebp - 0x6c]
cmp al, byte [edi + 0x1755]
jb loc_fffa8594  ; jb 0xfffa8594
jmp near loc_fffa84e8  ; jmp 0xfffa84e8

loc_fffa8667:  ; not directly referenced
cmp byte [edi + 0x16b3], 0
je loc_fffa878d  ; je 0xfffa878d
mov eax, dword [edi + 0x103f]
mov ecx, dword [edi + 0x2b31]
mov dword [ebp - 0x80], 0
mov edx, dword [eax + 0x4024]
mov ebx, dword [eax + 0x40d0]
mov esi, dword [eax + 0x4ca4]
mov eax, ecx
and eax, 0x1f
mov dword [ebp - 0x70], edx
mov dword [ebp - 0x6c], eax
mov eax, ecx
shr eax, 5
mov dword [ebp - 0x7c], ebx
shr ecx, 0x1a
mov edx, dword [edi + 0x2b25]
mov ebx, dword [edi + 0x2b29]
and ecx, 3
and eax, 0x1f
mov dword [ebp - 0x74], ecx
shr edx, 0x1e
shr ebx, 0x1f
cmp dword [edi + 0x1749], 1
jne short loc_fffa86e5  ; jne 0xfffa86e5
movzx eax, al
xor ecx, ecx
add eax, edx
sub eax, ebx
cmp eax, 5
sete cl
mov dword [ebp - 0x80], ecx

loc_fffa86e5:  ; not directly referenced
mov ecx, esi
mov eax, 1
and ecx, 3
cmp cl, 2
jne short loc_fffa86fc  ; jne 0xfffa86fc
mov eax, esi
shr eax, 4
and eax, 7

loc_fffa86fc:  ; not directly referenced
mov esi, dword [ebp - 0x74]
add esi, dword [ebp - 0x6c]
add edx, esi
mov cl, byte [edi + 0x3acb]
add edx, edx
mov byte [ebp - 0x78], cl
not edx
add edx, 5
mov dword [ebp - 0x6c], edx
mov edx, ebx
sub edx, dword [ebp - 0x80]
lea edx, [edx + eax*4 + 0x7ffffffc]
xor eax, eax
mov dword [ebp - 0x74], edx
xor edx, edx

loc_fffa872a:  ; not directly referenced
mov cl, al
mov ebx, 1
shl ebx, cl
test byte [ebp - 0x78], bl
je short loc_fffa877b  ; je 0xfffa877b
lea ebx, [eax*8]
mov cl, bl
mov esi, dword [ebp - 0x70]
shr esi, cl
lea ecx, [eax + eax]
and esi, 0x3f
add esi, dword [ebp - 0x6c]
mov dword [ebp - 0x84], esi
mov esi, dword [ebp - 0x7c]
shr esi, cl
mov ecx, dword [ebp - 0x84]
and esi, 3
mov dword [ebp - 0x80], esi
mov esi, dword [ebp - 0x74]
sub esi, dword [ebp - 0x80]
lea esi, [ecx + esi*2]
mov cl, bl
and esi, 0xff
shl esi, cl
or edx, esi

loc_fffa877b:  ; not directly referenced
inc eax
cmp eax, 4
jne short loc_fffa872a  ; jne 0xfffa872a
mov eax, dword [edi + 0x1047]
mov dword [eax + 0xc04], edx

loc_fffa878d:  ; not directly referenced
mov eax, dword [edi + 0x103f]
mov dword [eax + 0x5f08], 0x14
cmp dword [edi + 0x297c], 2
jne short loc_fffa87e4  ; jne 0xfffa87e4
mov edx, dword [edi + 0x16c6]
mov eax, dword [edi + 0x2b31]
cmp edx, 0x74a
ja short loc_fffa87ce  ; ja 0xfffa87ce

loc_fffa87ba:  ; not directly referenced
mov edx, dword [edi + 0x103f]
mov dword [edx + 0x4014], eax
mov dword [edi + 0x2b31], eax
jmp short loc_fffa87e4  ; jmp 0xfffa87e4

loc_fffa87ce:  ; not directly referenced
and ah, 0xf3
or ah, 8
cmp edx, 0x854
jbe short loc_fffa87ba  ; jbe 0xfffa87ba
and ah, 0xcf
or ah, 0x20
jmp short loc_fffa87ba  ; jmp 0xfffa87ba

loc_fffa87e4:  ; not directly referenced
cmp dword [edi + 0x3cc3], 2
jne short loc_fffa8827  ; jne 0xfffa8827
mov edx, dword [edi + 0x16c6]
mov eax, dword [edi + 0x3e78]
cmp edx, 0x74a
jbe short loc_fffa8815  ; jbe 0xfffa8815
and ah, 0xf3
or ah, 8
cmp edx, 0x854
jbe short loc_fffa8815  ; jbe 0xfffa8815
and ah, 0xcf
or ah, 0x20

loc_fffa8815:  ; not directly referenced
mov edx, dword [edi + 0x103f]
mov dword [edx + 0x4414], eax
mov dword [edi + 0x3e78], eax

loc_fffa8827:  ; not directly referenced
mov eax, edi
call fcn_fffab1b6  ; call 0xfffab1b6
mov edx, dword [edi + 0x103f]
cmp byte [edi + 0x106d], 1
sbb eax, eax
and eax, 0x40000000
mov dword [edx + 0x501c], eax
mov eax, edi
call fcn_fffb2dca  ; call 0xfffb2dca
lea ecx, [edi + 0x102f]
mov edx, 0x39
mov eax, edi
call fcn_fffc6438  ; call 0xfffc6438
cmp byte [edi + 0x107d], 0
jne loc_fffa8fac  ; jne 0xfffa8fac
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0x40]
mov dword [ebp - 0x50], ref_fffc9f84  ; mov dword [ebp - 0x50], 0xfffc9f84
mov dword [ebp - 0x4c], ref_fffcb73c  ; mov dword [ebp - 0x4c], 0xfffcb73c
mov dword [ebp - 0x48], ref_fffcb78c  ; mov dword [ebp - 0x48], 0xfffcb78c
mov dword [ebp - 0x44], ref_fffcb7ec  ; mov dword [ebp - 0x44], 0xfffcb7ec
mov dword [ebp - 0xc4], 0
call mrc_setmem
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0x38]
call mrc_setmem
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0x30]
call mrc_setmem
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0x28]
call mrc_setmem
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0x20]
call mrc_setmem
mov ecx, 0xff
mov edx, 4
lea eax, [ebp - 0x58]
call mrc_setmem
xor ecx, ecx
mov edx, 4
lea eax, [ebp - 0x54]
call mrc_setmem
cmp dword [edi + 0x1749], 2
jne short loc_fffa8917  ; jne 0xfffa8917
mov word [ebp - 0x5c], 8
mov word [ebp - 0x5a], 1
jmp short loc_fffa8923  ; jmp 0xfffa8923

loc_fffa8917:  ; not directly referenced
mov word [ebp - 0x5c], 0x228
mov word [ebp - 0x5a], 7

loc_fffa8923:  ; not directly referenced
mov ebx, dword [edi + 0x1021]
mov dword [ebp - 0xc8], ebx
dec ebx
je loc_fffa8fac  ; je 0xfffa8fac
lea ebx, [ebp - 0x30]
lea esi, [ebp - 0x54]
lea eax, [ebp - 0x40]
lea edx, [ebp - 0x38]
mov dword [ebp - 0x6c], eax
mov dword [ebp - 0x80], edx
mov dword [ebp - 0x84], esi
mov dword [ebp - 0x78], ebx
lea esi, [ebp - 0x28]
mov dword [ebp - 0xa4], ebx
mov dword [ebp - 0x70], esi
mov dword [ebp - 0xa8], esi
mov ebx, dword [ebp - 0x80]
mov esi, dword [ebp - 0x6c]
lea eax, [ebp - 0x20]
lea edx, [ebp - 0x58]
mov dword [ebp - 0x7c], eax
mov dword [ebp - 0x9c], edx
mov dword [ebp - 0xb0], edx
mov dword [ebp - 0xac], eax
mov dword [ebp - 0xa0], ebx
mov dword [ebp - 0x98], esi
mov dword [ebp - 0x88], 0
mov byte [ebp - 0x74], 0xff

loc_fffa899e:  ; not directly referenced
imul eax, dword [ebp - 0x88], 0x1347
mov ebx, dword [ebp - 0x90]
mov dword [ebp - 0xc0], eax
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffa8d25  ; jne 0xfffa8d25
xor edx, edx
mov dword [ebp - 0xd0], eax

loc_fffa89ca:  ; not directly referenced
imul eax, edx, 0xfb
mov esi, dword [ebp - 0xd0]
lea eax, [eax + esi + 0x1150]
add eax, dword [ebp - 0x8c]
cmp dword [eax + 9], 2
lea ebx, [eax + 9]
jne loc_fffa8d1b  ; jne 0xfffa8d1b
mov ecx, dword [ebp - 0xc8]
mov eax, dword [edi + ecx*4 + 0x172c]
cmp eax, 0x546
je short loc_fffa8a25  ; je 0xfffa8a25
cmp eax, 0x5dc
je short loc_fffa8a2c  ; je 0xfffa8a2c
cmp eax, 0x4b0
setne cl
movzx eax, cl
movzx ecx, cl
lea eax, [eax + eax*2 + 1]
mov dword [ebp - 0x94], ecx
jmp short loc_fffa8a3b  ; jmp 0xfffa8a3b

loc_fffa8a25:  ; not directly referenced
mov eax, 2
jmp short loc_fffa8a31  ; jmp 0xfffa8a31

loc_fffa8a2c:  ; not directly referenced
mov eax, 3

loc_fffa8a31:  ; not directly referenced
mov dword [ebp - 0x94], 0

loc_fffa8a3b:  ; not directly referenced
movzx esi, byte [ebx + 0xbc]
and eax, 0xfffffe0f
movzx ecx, byte [ebx + 0xc9]
and esi, 1
shl esi, 4
and ecx, 0xf
shl ecx, 5
or eax, esi
movzx esi, byte [ebx + 0xe2]
or eax, ecx
and esi, 7
and ah, 0x81
movzx ecx, byte [ebx + 0xdd]
shl esi, 9
and ecx, 7
shl ecx, 0xc
or eax, esi
or eax, ecx
mov esi, dword [ebp - 0xc0]
mov ecx, dword [ebp - 0x8c]
and eax, 0xfffe7fff
movzx esi, byte [ecx + esi + 0xfd]
mov ecx, dword [edi + 0x16c6]
and esi, 3
shl esi, 0xf
or eax, esi
cmp ecx, 0x640
je short loc_fffa8aec  ; je 0xfffa8aec
ja short loc_fffa8ac2  ; ja 0xfffa8ac2
cmp ecx, 0x42b
je short loc_fffa8ad4  ; je 0xfffa8ad4
cmp ecx, 0x535
jne short loc_fffa8b10  ; jne 0xfffa8b10
jmp short loc_fffa8ae0  ; jmp 0xfffa8ae0

loc_fffa8ac2:  ; not directly referenced
cmp ecx, 0x74b
je short loc_fffa8af8  ; je 0xfffa8af8
cmp ecx, 0x855
jne short loc_fffa8b10  ; jne 0xfffa8b10
jmp short loc_fffa8b04  ; jmp 0xfffa8b04

loc_fffa8ad4:  ; not directly referenced
and eax, 0xffe1ffff
or eax, 0x60000
jmp short loc_fffa8b1a  ; jmp 0xfffa8b1a

loc_fffa8ae0:  ; not directly referenced
and eax, 0xffe1ffff
or eax, 0xa0000
jmp short loc_fffa8b1a  ; jmp 0xfffa8b1a

loc_fffa8aec:  ; not directly referenced
and eax, 0xffe1ffff
or eax, 0xe0000
jmp short loc_fffa8b1a  ; jmp 0xfffa8b1a

loc_fffa8af8:  ; not directly referenced
and eax, 0xffe1ffff
or eax, 0x120000
jmp short loc_fffa8b1a  ; jmp 0xfffa8b1a

loc_fffa8b04:  ; not directly referenced
and eax, 0xffe1ffff
or eax, 0x160000
jmp short loc_fffa8b1a  ; jmp 0xfffa8b1a

loc_fffa8b10:  ; not directly referenced
mov dword [ebp - 0x94], 1

loc_fffa8b1a:  ; not directly referenced
movzx ecx, byte [ebx + 0xe3]
and eax, 0xff1fffff
and ecx, 7
mov dword [ebp - 0xd4], 0
shl ecx, 0x15
mov dword [ebp - 0xb4], 0
or eax, ecx
mov ecx, dword [edi + 0x1749]
mov dword [ebp - 0xb8], ecx
mov ecx, eax
and ecx, 0xfffe7e0f
cmp dword [ebp - 0xb8], 2
cmove eax, ecx

loc_fffa8b60:  ; not directly referenced
mov bl, byte [ebp - 0xd4]
test bl, bl
mov byte [ebp - 0xb9], bl
jne short loc_fffa8b7f  ; jne 0xfffa8b7f
cmp dword [ebp - 0x94], 0
jne loc_fffa8d08  ; jne 0xfffa8d08
jmp short loc_fffa8b91  ; jmp 0xfffa8b91

loc_fffa8b7f:  ; not directly referenced
cmp dword [ebp - 0xb4], 0
jne loc_fffa8d08  ; jne 0xfffa8d08
and eax, 0xff0001ff

loc_fffa8b91:  ; not directly referenced
mov esi, dword [ebp - 0xd4]
xor ebx, ebx
mov si, word [ebp + esi*2 - 0x5c]
movzx ecx, si
mov word [ebp - 0xbc], si
dec ecx
mov dword [ebp - 0xcc], ecx
jmp near loc_fffa8cfb  ; jmp 0xfffa8cfb

loc_fffa8bb4:  ; not directly referenced
cmp dword [ebp - 0xb8], 2
jne loc_fffa8c5c  ; jne 0xfffa8c5c
mov esi, dword [ebp - 0xd4]
imul ecx, ebx, 0xc
add ecx, dword [ebp + esi*4 - 0x48]
cmp eax, dword [ecx]
jne short loc_fffa8c2e  ; jne 0xfffa8c2e

loc_fffa8bd2:  ; not directly referenced
mov esi, dword [ebp - 0x98]
mov bl, byte [ecx + 5]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xa0]
mov bl, byte [ecx + 6]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xa4]
mov bl, byte [ecx + 7]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xa8]
mov bl, byte [ecx + 8]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xac]
mov bl, byte [ecx + 9]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xb0]
mov bl, byte [ecx + 4]
mov byte [ebp - 0xb4], bl
mov byte [esi + edx], bl
mov ebx, dword [ebp - 0x8c]
cmp byte [ebx + 7], 1
jne short loc_fffa8c4e  ; jne 0xfffa8c4e
jmp short loc_fffa8c49  ; jmp 0xfffa8c49

loc_fffa8c2e:  ; not directly referenced
cmp byte [ebp - 0xb9], 1
jne loc_fffa8cfa  ; jne 0xfffa8cfa
cmp ebx, dword [ebp - 0xcc]
jne loc_fffa8cfa  ; jne 0xfffa8cfa
jmp short loc_fffa8bd2  ; jmp 0xfffa8bd2

loc_fffa8c49:  ; not directly referenced
mov cl, byte [ecx + 0xa]
jmp short loc_fffa8c51  ; jmp 0xfffa8c51

loc_fffa8c4e:  ; not directly referenced
mov cl, byte [ecx + 0xb]

loc_fffa8c51:  ; not directly referenced
mov esi, dword [ebp - 0x84]
mov byte [esi + edx], cl
jmp short loc_fffa8cc7  ; jmp 0xfffa8cc7

loc_fffa8c5c:  ; not directly referenced
mov esi, dword [ebp - 0xd4]
imul ecx, ebx, 0xb
add ecx, dword [ebp + esi*4 - 0x50]
cmp eax, dword [ecx]
jne short loc_fffa8ce5  ; jne 0xfffa8ce5

loc_fffa8c6d:  ; not directly referenced
mov esi, dword [ebp - 0x98]
mov bl, byte [ecx + 5]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xa0]
mov bl, byte [ecx + 6]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xa4]
mov bl, byte [ecx + 7]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xa8]
mov bl, byte [ecx + 8]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xac]
mov bl, byte [ecx + 9]
mov byte [esi + edx], bl
mov esi, dword [ebp - 0xb0]
mov bl, byte [ecx + 4]
mov byte [ebp - 0xb4], bl
mov byte [esi + edx], bl
mov ebx, dword [ebp - 0x84]
mov cl, byte [ecx + 0xa]
mov byte [ebx + edx], cl

loc_fffa8cc7:  ; not directly referenced
mov cl, byte [ebp - 0xb4]
mov bl, byte [ebp - 0x74]
cmp byte [ebp - 0x74], cl
mov dword [ebp - 0xb4], 1
cmovbe ecx, ebx
mov byte [ebp - 0x74], cl
jmp short loc_fffa8d08  ; jmp 0xfffa8d08

loc_fffa8ce5:  ; not directly referenced
cmp byte [ebp - 0xb9], 1
jne short loc_fffa8cfa  ; jne 0xfffa8cfa
cmp ebx, dword [ebp - 0xcc]
je loc_fffa8c6d  ; je 0xfffa8c6d

loc_fffa8cfa:  ; not directly referenced
inc ebx

loc_fffa8cfb:  ; not directly referenced
cmp word [ebp - 0xbc], bx
ja loc_fffa8bb4  ; ja 0xfffa8bb4

loc_fffa8d08:  ; not directly referenced
inc dword [ebp - 0xd4]
cmp dword [ebp - 0xd4], 2
jne loc_fffa8b60  ; jne 0xfffa8b60

loc_fffa8d1b:  ; not directly referenced
inc edx
cmp edx, 2
jne loc_fffa89ca  ; jne 0xfffa89ca

loc_fffa8d25:  ; not directly referenced
inc dword [ebp - 0x88]
add dword [ebp - 0x84], 2
add dword [ebp - 0x98], 4
add dword [ebp - 0xa0], 4
add dword [ebp - 0xa4], 4
add dword [ebp - 0xa8], 4
add dword [ebp - 0xac], 4
add dword [ebp - 0xb0], 2
cmp dword [ebp - 0x88], 2
jne loc_fffa899e  ; jne 0xfffa899e
xor ebx, ebx
xor edx, edx

loc_fffa8d6d:  ; not directly referenced
imul esi, edx, 0x1347
mov eax, dword [ebp - 0x90]
mov dword [ebp - 0x8c], esi
cmp dword [eax + esi + 0x12be], 2
jne loc_fffa8f57  ; jne 0xfffa8f57
xor eax, eax
mov dword [ebp - 0x88], esi

loc_fffa8d95:  ; not directly referenced
imul ecx, eax, 0xfb
mov esi, dword [ebp - 0x88]
lea ecx, [ecx + esi + 0x2400]
cmp dword [edi + ecx + 0x16cd], 2
jne loc_fffa8e97  ; jne 0xfffa8e97
mov ecx, dword [ebp - 0x9c]
mov cl, byte [ecx + eax]
mov byte [ebp - 0xba], cl
sub cl, byte [ebp - 0x74]
mov byte [ebp - 0x84], cl
je loc_fffa8e97  ; je 0xfffa8e97
mov esi, dword [ebp - 0x6c]
movzx ecx, byte [esi + eax]
inc ecx
mov dword [ebp - 0x94], ecx
mov cl, byte [ebp - 0x84]
sar dword [ebp - 0x94], cl
mov cl, byte [ebp - 0x94]
mov byte [esi + eax], cl
mov ecx, dword [ebp - 0x80]
movzx esi, byte [ecx + eax]
lea ecx, [esi + 1]
mov esi, dword [ebp - 0x80]
mov dword [ebp - 0x94], ecx
mov cl, byte [ebp - 0x84]
sar dword [ebp - 0x94], cl
mov cl, byte [ebp - 0x94]
mov byte [esi + eax], cl
mov ecx, dword [ebp - 0x78]
movzx esi, byte [ecx + eax]
lea ecx, [esi + 1]
mov esi, dword [ebp - 0x78]
mov dword [ebp - 0x94], ecx
mov cl, byte [ebp - 0x84]
sar dword [ebp - 0x94], cl
mov cl, byte [ebp - 0x94]
mov byte [esi + eax], cl
mov ecx, dword [ebp - 0x70]
movzx esi, byte [ecx + eax]
lea ecx, [esi + 1]
mov esi, dword [ebp - 0x70]
mov dword [ebp - 0x94], ecx
mov cl, byte [ebp - 0x84]
sar dword [ebp - 0x94], cl
mov cl, byte [ebp - 0x94]
mov byte [esi + eax], cl
mov ecx, dword [ebp - 0x7c]
movzx esi, byte [ecx + eax]
lea ecx, [esi + 1]
mov esi, dword [ebp - 0x7c]
mov dword [ebp - 0x94], ecx
mov cl, byte [ebp - 0x84]
sar dword [ebp - 0x94], cl
mov cl, byte [ebp - 0x94]
mov byte [esi + eax], cl

loc_fffa8e97:  ; not directly referenced
inc eax
cmp eax, 2
jne loc_fffa8d95  ; jne 0xfffa8d95
mov eax, dword [ebp - 0x8c]
cmp dword [edi + eax + 0x2a71], 1
ja short loc_fffa8ec0  ; ja 0xfffa8ec0
mov al, byte [ebp + edx*2 - 0x54]
mov cl, byte [ebp + edx*2 - 0x53]
cmp cl, al
cmovae eax, ecx
jmp short loc_fffa8ee8  ; jmp 0xfffa8ee8

loc_fffa8ec0:  ; not directly referenced
movzx ecx, byte [ebp + edx*2 - 0x54]
movzx eax, byte [ebp + edx*2 - 0x53]
cmp cl, al
je short loc_fffa8ef3  ; je 0xfffa8ef3
lea eax, [ecx + eax + 1]
sar eax, 1
cmp al, 0xf7
ja short loc_fffa8eee  ; ja 0xfffa8eee
test al, 7
mov byte [ebp + edx*2 - 0x54], al
je short loc_fffa8ef3  ; je 0xfffa8ef3
and eax, 0xf8
add eax, 8

loc_fffa8ee8:  ; not directly referenced
mov byte [ebp + edx*2 - 0x54], al
jmp short loc_fffa8ef3  ; jmp 0xfffa8ef3

loc_fffa8eee:  ; not directly referenced
mov byte [ebp + edx*2 - 0x54], 0xf8

loc_fffa8ef3:  ; not directly referenced
mov eax, dword [edi + 0x103f]
mov esi, dword [ebp - 0x6c]
lea eax, [ebx + eax + 0x42f8]
mov ecx, dword [esi]
mov dword [eax], ecx
mov eax, dword [ebp - 0x80]
mov esi, dword [ebp - 0x78]
mov ecx, dword [eax]
mov eax, dword [edi + 0x103f]
lea eax, [ebx + eax + 0x42fc]
mov dword [eax], ecx
mov eax, dword [edi + 0x103f]
mov ecx, dword [esi]
mov esi, dword [ebp - 0x7c]
lea eax, [ebx + eax + 0x42f4]
mov dword [eax], ecx
mov eax, dword [ebp - 0x70]
mov ecx, dword [eax]
mov eax, dword [edi + 0x103f]
lea eax, [ebx + eax + 0x42f0]
mov dword [eax], ecx
mov eax, dword [edi + 0x103f]
mov ecx, dword [esi]
lea eax, [ebx + eax + 0x42ec]
mov dword [eax], ecx

loc_fffa8f57:  ; not directly referenced
inc edx
add dword [ebp - 0x6c], 4
add ebx, 0x400
add dword [ebp - 0x80], 4
add dword [ebp - 0x78], 4
add dword [ebp - 0x70], 4
add dword [ebp - 0x7c], 4
add dword [ebp - 0x9c], 2
cmp edx, 2
jne loc_fffa8d6d  ; jne 0xfffa8d6d
mov al, byte [ebp - 0x52]
mov ebx, dword [ebp - 0xc4]
movzx edx, byte [ebp - 0x74]
mov bl, byte [ebp - 0x54]
mov bh, al
mov eax, dword [edi + 0x103f]
mov dword [eax + 0x5888], ebx
mov eax, dword [edi + 0x103f]
mov dword [eax + 0x5884], edx

loc_fffa8fac:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa8fb6:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x2c]
mov edi, dword [ebp + 8]
cmp dword [edi + 0x1749], 2
jne short loc_fffa9029  ; jne 0xfffa9029
jmp short loc_fffa901a  ; jmp 0xfffa901a

loc_fffa8fce:  ; not directly referenced
mov edx, dword [ebp - 0x2c]
mov cl, bl
mov eax, 1
shl eax, cl
test byte [edi + edx + 0x3acb], al
je short loc_fffa900c  ; je 0xfffa900c
push eax
lea ecx, [ebp - 0x1c]
mov edx, esi
push eax
mov eax, edi
push ecx
mov ecx, ebx
push 5
call fcn_fffb8e54  ; call 0xfffb8e54
pop eax
pop edx
lea eax, [ebp - 0x1c]
mov ecx, ebx
push eax
mov edx, esi
mov eax, edi
push 8
call fcn_fffb8e54  ; call 0xfffb8e54
add esp, 0x10

loc_fffa900c:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffa8fce  ; jne 0xfffa8fce
inc esi
cmp esi, 2
jne short loc_fffa901c  ; jne 0xfffa901c
jmp short loc_fffa9029  ; jmp 0xfffa9029

loc_fffa901a:  ; not directly referenced
xor esi, esi

loc_fffa901c:  ; not directly referenced
imul edx, esi, 0x1347
xor ebx, ebx
mov dword [ebp - 0x2c], edx
jmp short loc_fffa8fce  ; jmp 0xfffa8fce

loc_fffa9029:  ; not directly referenced
mov edx, dword [edi + 0x103f]
mov eax, dword [edx + 0x5030]
or al, 0x89
mov dword [edx + 0x5030], eax
mov eax, dword [edi + 0x103f]
mov dword [eax + 0x50fc], 0x8f
cmp byte [edi + 0x102f], 0
je loc_fffa913e  ; je 0xfffa913e

push dword [edi + 0x103b]
call frag_fffa9029
add esp, 4

mov ecx, dword [edi + 0x103f]
movzx edx, byte [edi + 0x107c]
and edx, 1
shl edx, 5
mov eax, dword [ecx + 0x5880]
and eax, 0xffffffdf
or eax, edx
mov dword [ecx + 0x5880], eax

loc_fffa913e:  ; not directly referenced
mov edx, dword [edi + 0x103f]
add edx, 0x5030

loc_fffa914a:  ; not directly referenced
mov eax, dword [edx]
test al, 0x20
je short loc_fffa914a  ; je 0xfffa914a
xor eax, eax
mov edx, 0x140000a0
mov ecx, eax
and ecx, 0xe00fffff
or ecx, 0x5a00000
and ecx, 0xfff00fff
or ecx, 0x24000
and ecx, 0xfffff00f
mov eax, ecx
push ecx
or eax, 0x4f
push ecx
push edx
mov edx, 0x5d10
push eax
mov eax, edi
call MCHBAR_WRITE64
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa9196:
push ebp
test eax, eax
mov ebp, esp
je short loc_fffa91ad  ; je 0xfffa91ad
pop ebp
mov ecx, 4
mov edx, ref_fffcb7f8  ; mov edx, 0xfffcb7f8
jmp mrc_memcpy

loc_fffa91ad:
pop ebp
ret

fcn_fffa91af:
push ebp
mov ecx, 0xc
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x48]
mov esi, ref_fffc9f54  ; mov esi, 0xfffc9f54
push ebx
lea esp, [esp - 0x8c]
mov dword [ebp - 0x84], edx
add edx, 0xdf
mov dword [ebp - 0x80], eax
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov dword [ebp - 0x70], 1
mov cl, byte [ebp - 0x80]
mov dword [ebp - 0x88], edx
mov dword [ebp - 0x6c], 0
shl dword [ebp - 0x70], cl
mov byte [ebp - 0x5e], 0
mov byte [ebp - 0x71], 0

loc_fffa91fc:
imul eax, dword [ebp - 0x6c], 0x2fa
add eax, dword [ebp - 0x88]
cmp dword [eax + 5], 2
lea esi, [eax + 5]
mov dword [ebp - 0x8c], esi
jne loc_fffa945f  ; jne 0xfffa945f
mov dword [ebp - 0x68], 0

loc_fffa9223:
imul eax, dword [ebp - 0x68], 0x14f
add eax, dword [ebp - 0x8c]
cmp dword [eax + 8], 1
lea edi, [eax + 8]
ja loc_fffa9452  ; ja 0xfffa9452
cmp byte [edi + 0x14e], 0
je loc_fffa944f  ; je 0xfffa944f
add eax, 0x2c
mov byte [ebp - 0x5d], 0
mov dword [ebp - 0x5c], eax
xor eax, eax
jmp near loc_fffa9437  ; jmp 0xfffa9437

loc_fffa925b:
movzx edx, byte [ebp - 0x5d]
lea eax, [ebp - 0x48]
imul edx, edx, 6
add edx, eax
movzx eax, byte [edx + 4]
test dword [ebp - 0x70], eax
je loc_fffa942b  ; je 0xfffa942b
mov esi, dword [ebp - 0x84]
xor eax, eax
movzx ebx, byte [edx + 5]
mov ecx, dword [esi + 0x49]
bt ebx, ecx
jae loc_fffa9434  ; jae 0xfffa9434
mov si, word [edx + 2]
mov bx, word [edx]
mov word [ebp - 0x76], si
mov eax, dword [ebp - 0x5c]
movzx esi, bx
add eax, esi
mov dword [ebp - 0x64], esi
setne cl
cmp bx, 0xff
movzx edx, byte [edi + 0x14e]
mov dword [ebp - 0x7c], eax
setbe al
test cl, al
je loc_fffa942f  ; je 0xfffa942f
mov si, word [ebp - 0x76]
inc esi
sub esi, ebx
movzx eax, si
add eax, dword [ebp - 0x64]
cmp eax, 0xff
mov word [ebp - 0x60], si
jg loc_fffa942f  ; jg 0xfffa942f
mov esi, dword [ebp - 0x7c]
mov eax, 1
mov dword [ebp - 0x90], edx
jmp near loc_fffa9386  ; jmp 0xfffa9386

loc_fffa92ee:
mov eax, ebx
mov dl, byte [ebp - 0x5e]
sub eax, ecx
add ax, word [ebp - 0x92]
movzx ecx, byte [ebp - 0x5e]
mov word [ebp - 0x74], ax
shr ax, 8
cmp ax, cx
cmovne edx, eax
setne al
movzx eax, al
movzx ecx, byte [ebp - 0x74]
dec eax
mov byte [ebp - 0x5e], dl
mov word [ebp - 0x74], cx
jne short loc_fffa9348  ; jne 0xfffa9348
cmp dl, 1
lea eax, [ebp - 0x4c]
lea ecx, [ebp - 0x4d]
mov byte [ebp - 0x4d], 0
sbb edx, edx
sub esp, 0xc
push eax
and edx, 0xfffffffe
mov eax, 5
add edx, 0x6e
call do_smbus_op
add esp, 0x10

loc_fffa9348:
sub esp, 0xc
lea eax, [ebp - 0x4c]
push eax
movzx edx, word [ebp - 0x74]
lea ecx, [ebp - 0x4d]
shl edx, 8
mov eax, 4
or edx, dword [ebp - 0x90]
call do_smbus_op
mov al, byte [ebp - 0x4d]
add esp, 0x10
cmp dword [ebp - 0x4c], 0
mov byte [esi], al
jne loc_fffa9477  ; jne 0xfffa9477
xor eax, eax

loc_fffa937d:
inc esi
test eax, eax
jne loc_fffa942f  ; jne 0xfffa942f

loc_fffa9386:
mov ecx, dword [ebp - 0x7c]
mov edx, dword [ebp - 0x60]
add edx, ecx
mov word [ebp - 0x92], si
mov word [ebp - 0x74], dx
cmp word [ebp - 0x74], si
jne loc_fffa92ee  ; jne 0xfffa92ee
test eax, eax
je short loc_fffa93cc  ; je 0xfffa93cc
jmp near loc_fffa942f  ; jmp 0xfffa942f

loc_fffa93ac:
mov ecx, ebx
mov edx, ebx
and ecx, 7
mov esi, 1
shr dx, 3
inc ebx
shl esi, cl
movzx edx, dx
mov dword [ebp - 0x7c], esi
mov cl, byte [ebp - 0x7c]
or byte [edi + edx + 4], cl

loc_fffa93cc:
cmp bx, word [ebp - 0x76]
jbe short loc_fffa93ac  ; jbe 0xfffa93ac
cmp dword [ebp - 0x80], 0
jne short loc_fffa9434  ; jne 0xfffa9434
mov esi, dword [ebp - 0x5c]
mov dl, byte [esi + 2]
cmp dl, 0xb
je short loc_fffa93e8  ; je 0xfffa93e8
cmp dl, 0xf1
jne short loc_fffa944f  ; jne 0xfffa944f

loc_fffa93e8:
cmp dword [ebp - 0x64], 0xb0
jne short loc_fffa9434  ; jne 0xfffa9434
mov esi, dword [ebp - 0x5c]
cmp word [esi + 0xb0], 0x4a0c
je short loc_fffa9418  ; je 0xfffa9418

loc_fffa93ff:
mov word [edi + 0xd4], 0
mov byte [edi + 0xd6], 0
mov byte [edi + 0xd7], 0
jmp short loc_fffa944f  ; jmp 0xfffa944f

loc_fffa9418:
mov esi, dword [ebp - 0x5c]
mov dl, byte [esi + 0xb3]
and edx, 0xfffffffe
cmp dl, 0x12
jne short loc_fffa93ff  ; jne 0xfffa93ff
jmp short loc_fffa9434  ; jmp 0xfffa9434

loc_fffa942b:
xor eax, eax
jmp short loc_fffa9434  ; jmp 0xfffa9434

loc_fffa942f:
mov eax, 1

loc_fffa9434:
inc byte [ebp - 0x5d]

loc_fffa9437:
cmp byte [ebp - 0x5d], 7
setbe cl
test eax, eax
sete dl
test cl, dl
jne loc_fffa925b  ; jne 0xfffa925b
test eax, eax
jne short loc_fffa9452  ; jne 0xfffa9452

loc_fffa944f:
inc byte [ebp - 0x71]

loc_fffa9452:
inc dword [ebp - 0x68]
cmp dword [ebp - 0x68], 2
jne loc_fffa9223  ; jne 0xfffa9223

loc_fffa945f:
inc dword [ebp - 0x6c]
cmp dword [ebp - 0x6c], 2
jne loc_fffa91fc  ; jne 0xfffa91fc
cmp byte [ebp - 0x71], 1
sbb eax, eax
and eax, 0x16
jmp short loc_fffa9484  ; jmp 0xfffa9484

loc_fffa9477:
mov byte [esi], 0
mov eax, 1
jmp near loc_fffa937d  ; jmp 0xfffa937d

loc_fffa9484:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa948c:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
push edi
push esi
push ebx
push ecx
mov eax, dword [ebp + 8]
add eax, 0x14

loc_fffa949b:  ; not directly referenced
lea ecx, [edx*4 + ref_fffcb80c]  ; lea ecx, [edx*4 - 0x347f4]
mov dword [ebp - 0x10], ecx
movzx ecx, word [edx*4 + ref_fffcb80c]  ; movzx ecx, word [edx*4 - 0x347f4]
sub ecx, eax
jmp short loc_fffa94c1  ; jmp 0xfffa94c1

loc_fffa94b1:  ; not directly referenced
mov edi, dword [ebp + 8]
mov esi, dword [eax]
add eax, 4
add ebx, dword [edi + 0x103f]
mov dword [ebx], esi

loc_fffa94c1:  ; not directly referenced
mov edi, dword [ebp - 0x10]
lea ebx, [eax + ecx]
movzx esi, word [edi + 2]
cmp ebx, esi
jbe short loc_fffa94b1  ; jbe 0xfffa94b1
inc edx
cmp edx, 0x5d
jne short loc_fffa949b  ; jne 0xfffa949b
pop edx
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffa94dd:  ; not directly referenced
push ebp
xor eax, eax
mov ecx, 0xb
mov ebp, esp
mov edx, 7
push edi
push esi
lea edi, [ebp - 0x1f4]
push ebx
lea esp, [esp - 0x27c]
mov esi, dword [ebp + 8]
rep stosd  ; rep stosd dword es:[edi], eax
lea ebx, [esi + 0x16be]
mov dword [ebp - 0x264], ebx
mov bl, byte [esi + 0x176a]
mov cl, 1
mov byte [ebp - 0x240], bl
lea eax, [ebp - 0x217]
mov ebx, dword [esi + 0x1021]
mov word [ebp - 0x1e6], 0x3ff
mov word [ebp - 0x1ca], 1
mov word [ebp - 0x1ff], 0x20
mov dword [ebp - 0x1fd], 0
mov dword [ebp - 0x1f9], 9
mov byte [ebp - 0x1f5], 0
mov dword [ebp - 0x248], ebx
movzx edi, byte [esi + 0x176b]
call mrc_setmem
mov eax, dword [esi + 0x1005]
cmp eax, HASWELL_FAMILY_ULT
je short loc_fffa95ba  ; je 0xfffa95ba
cmp eax, HASWELL_FAMILY_GT3E
jne short loc_fffa9594  ; jne 0xfffa9594
mov dword [ebp - 0x250], 0x14
mov ebx, 0x19
jmp short loc_fffa95c9  ; jmp 0xfffa95c9

loc_fffa9594:  ; not directly referenced
cmp dword [esi + 0x1001], 2
sbb ebx, ebx
and ebx, 4
add ebx, 0x10
cmp dword [esi + 0x1001], 2
mov dword [ebp - 0x250], ebx
sbb ebx, ebx
and ebx, 4
add ebx, 0x15
jmp short loc_fffa95c9  ; jmp 0xfffa95c9

loc_fffa95ba:  ; not directly referenced
mov dword [ebp - 0x250], 0x12
mov ebx, 0x17

loc_fffa95c9:  ; not directly referenced
push 8
mov eax, edi
and ebx, 0x3f
push 0
movzx edx, al
lea eax, [ebp - 0x1ff]
push 0
shl ebx, 0x10
mov ecx, 2
push eax
lea eax, [ebp - 0x1f4]
push 0
push eax
mov eax, esi
push 7
push 2
call fcn_fffb2650  ; call 0xfffb2650
add esp, 0x20
mov dword [ebp - 0x23c], 0
mov dword [ebp - 0x24c], ebx

loc_fffa960d:  ; not directly referenced
imul eax, dword [ebp - 0x23c], 0x1347
mov ebx, dword [ebp - 0x264]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffa96c7  ; jne 0xfffa96c7
mov edi, dword [ebp - 0x23c]
lea ebx, [esi + eax + 0x297c]
shl edi, 8
xor eax, eax
mov dword [ebp - 0x238], edi
add edi, 0x64
mov dword [ebp - 0x244], edi
jmp short loc_fffa9669  ; jmp 0xfffa9669

loc_fffa964e:  ; not directly referenced
movzx edi, al
inc eax
mov edx, dword [ebx + edi*4 + 0x169]
shl edi, 9
add edi, dword [ebp - 0x244]
add ecx, edi
or edx, 0x40
mov dword [ecx], edx

loc_fffa9669:  ; not directly referenced
cmp al, byte [esi + 0x1755]
mov ecx, dword [esi + 0x103f]
jb short loc_fffa964e  ; jb 0xfffa964e
mov eax, dword [ebp - 0x238]
mov edi, dword [ebx + 0x141]
add eax, 0x3074
cmp dword [esi + 0x1749], 2
jne short loc_fffa969b  ; jne 0xfffa969b
add ecx, eax
and edi, 0xefffffff
mov dword [ecx], edi

loc_fffa969b:  ; not directly referenced
add eax, dword [esi + 0x103f]
or edi, 0x1000004
mov edx, dword [ebp - 0x23c]
shl edx, 0xa
mov dword [eax], edi
mov eax, dword [esi + 0x103f]
lea eax, [edx + eax + 0x4028]
mov edx, dword [ebp - 0x24c]
mov dword [eax], edx

loc_fffa96c7:  ; not directly referenced
inc dword [ebp - 0x23c]
cmp dword [ebp - 0x23c], 2
jne loc_fffa960d  ; jne 0xfffa960d
imul edi, dword [ebp - 0x248], 0x2a
mov dword [ebp - 0x23c], 0
movzx ebx, byte [ebp - 0x240]
mov dword [ebp - 0x270], edi
mov dword [ebp - 0x27c], ebx

loc_fffa96fe:  ; not directly referenced
mov ebx, dword [ebp - 0x27c]
mov ecx, dword [ebp - 0x23c]
mov al, byte [ebp - 0x23c]
bt ebx, ecx
mov byte [ebp - 0x272], al
jb short loc_fffa974a  ; jb 0xfffa974a

loc_fffa971b:  ; not directly referenced
inc dword [ebp - 0x23c]
cmp dword [ebp - 0x23c], 4
jne short loc_fffa96fe  ; jne 0xfffa96fe
lea ebx, [esi + 0x2974]
mov eax, 0x3074
mov dword [ebp - 0x240], 0
mov dword [ebp - 0x24c], ebx
jmp near loc_fffaa18f  ; jmp 0xfffaa18f

loc_fffa974a:  ; not directly referenced
mov cl, byte [ebp - 0x23c]
mov eax, 1
xor edi, edi
mov byte [ebp - 0x238], 0
shl eax, cl
movzx ebx, al
mov byte [ebp - 0x24c], al
mov dword [ebp - 0x248], ebx
lea ebx, [esi + 0x2974]
mov dword [ebp - 0x254], ebx

loc_fffa977b:  ; not directly referenced
mov ecx, dword [ebp - 0x248]
mov edx, edi
mov eax, esi
call fcn_fffc41bb  ; call 0xfffc41bb
or byte [ebp - 0x238], al
mov bl, byte [ebp - 0x24c]
imul eax, edi, 0x1347
test byte [esi + eax + 0x3acb], bl
je loc_fffa9885  ; je 0xfffa9885
mov ebx, dword [ebp - 0x254]
mov dl, 0
lea ecx, [ebx + eax + 8]
mov eax, dword [ebp - 0x23c]
mov byte [ecx + eax + 0x10cd], 0
mov al, byte [esi + 0x16d6]
cmp al, 1
cmovbe eax, edx
cmp dword [esi + 0x1749], 2
jne short loc_fffa982b  ; jne 0xfffa982b
movzx edx, word [esi + 0x1766]
mov ebx, dword [ebp - 0x270]
add edx, edx
cmp al, 5
mov dword [ebp - 0x240], edx
movzx edx, al
mov eax, dword [ebp - 0x240]
movzx ebx, word [ecx + ebx + 0xe]
mov dword [ebp - 0x244], ebx
mov ebx, 4
cmovae ebx, edx
add eax, 0x157b
xor edx, edx
div dword [ebp - 0x240]
mov edx, dword [ebp - 0x244]
add eax, dword [ebp - 0x250]
lea eax, [eax + edx*2 + 1]
add ebx, eax
jmp short loc_fffa9859  ; jmp 0xfffa9859

loc_fffa982b:  ; not directly referenced
mov ebx, dword [ebp - 0x270]
cmp al, 5
mov edx, 4
movzx ebx, word [ecx + ebx + 0xe]
mov dword [ebp - 0x244], ebx
movzx ebx, al
mov eax, dword [ebp - 0x244]
cmovae edx, ebx
add edx, dword [ebp - 0x250]
lea ebx, [edx + eax*2 + 5]

loc_fffa9859:  ; not directly referenced
cmp ebx, 0x3f
mov eax, 0x3f
mov edx, edi
cmovbe eax, ebx
mov ebx, dword [ebp - 0x23c]
shl edx, 0xa
lea edx, [ebx + edx + 0x4024]
add edx, dword [esi + 0x103f]
mov byte [edx], al
mov byte [ecx + ebx + 0x10d1], al

loc_fffa9885:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffa977b  ; jne 0xfffa977b
movzx ebx, byte [ebp - 0x238]
mov di, 0x118
mov dword [ebp - 0x268], ebx
jmp near loc_fffa9bae  ; jmp 0xfffa9bae

loc_fffa98a5:  ; not directly referenced
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x24c]
test byte [esi + eax + 0x3acb], dl
jne short loc_fffa98e8  ; jne 0xfffa98e8

loc_fffa98ba:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffa98a5  ; jne 0xfffa98a5
jmp short loc_fffa98ff  ; jmp 0xfffa98ff

loc_fffa98c2:  ; not directly referenced
push eax
movzx eax, byte [ebp - 0x238]
mov ecx, dword [ebp - 0x23c]
push edi
mov edx, ebx
push 0
push eax
mov eax, esi
call fcn_fffb0168  ; call 0xfffb0168
inc byte [ebp - 0x238]
add esp, 0x10
jmp short loc_fffa98ef  ; jmp 0xfffa98ef

loc_fffa98e8:  ; not directly referenced
mov byte [ebp - 0x238], 0

loc_fffa98ef:  ; not directly referenced
mov cl, byte [ebp - 0x238]
cmp cl, byte [esi + 0x1755]
jb short loc_fffa98c2  ; jb 0xfffa98c2
jmp short loc_fffa98ba  ; jmp 0xfffa98ba

loc_fffa98ff:  ; not directly referenced
push eax
lea ebx, [ebp - 0x217]
xor ecx, ecx
push 0
mov edx, dword [ebp - 0x268]
mov eax, esi
push 1
push ebx
lea ebx, [ebp - 0x60]
call fcn_fffb21f3  ; call 0xfffb21f3
lea eax, [ebp - 0x180]
lea edx, [ebp - 0x1c8]
lea ecx, [ebp - 0xf0]
mov dword [ebp - 0x284], eax
mov dword [ebp - 0x244], edx
mov dword [ebp - 0x238], ecx
lea eax, [ebp - 0xa8]
lea ecx, [edi - 8]
mov dword [ebp - 0x258], esi
lea edx, [ebp - 0x138]
mov dword [ebp - 0x240], ebx
mov dword [ebp - 0x248], eax
add esp, 0x10
mov dword [ebp - 0x254], 0x54
mov dword [ebp - 0x26c], ecx

loc_fffa9975:  ; not directly referenced
mov eax, dword [ebp - 0x258]
mov bl, byte [ebp - 0x24c]
test byte [eax + 0x3acb], bl
je short loc_fffa99a8  ; je 0xfffa99a8
mov cl, byte [esi + 0x1755]
mov ebx, dword [ebp - 0x254]
mov byte [ebp - 0x271], cl
mov dword [ebp - 0x25c], ebx
xor eax, eax
jmp near loc_fffa9b92  ; jmp 0xfffa9b92

loc_fffa99a8:  ; not directly referenced
add dword [ebp - 0x258], 0x1347
add dword [ebp - 0x254], 0x100
add dword [ebp - 0x284], 0x24
add dword [ebp - 0x244], 0x24
add dword [ebp - 0x238], 0x24
add edx, 0x24
add dword [ebp - 0x240], 0x24
add dword [ebp - 0x248], 0x24
cmp dword [ebp - 0x254], 0x254
jne short loc_fffa9975  ; jne 0xfffa9975
jmp near loc_fffa9ba3  ; jmp 0xfffa9ba3

loc_fffa99f3:  ; not directly referenced
mov ecx, dword [ebp - 0x25c]
add ecx, dword [esi + 0x103f]
mov ecx, dword [ecx]
cmp ecx, 0x1f
seta cl
cmp di, 0x118
movzx ecx, cl
jne loc_fffa9ab3  ; jne 0xfffa9ab3
test ecx, ecx
je short loc_fffa9a66  ; je 0xfffa9a66
mov ecx, dword [ebp - 0x284]
mov ebx, dword [ebp - 0x244]
mov dword [edx + eax*4], 0x118
mov dword [ecx + eax*4], 0x118
mov ecx, dword [ebp - 0x238]
mov dword [ebx + eax*4], 0x118
mov ebx, dword [ebp - 0x240]
mov dword [ecx + eax*4], 0x118
mov ecx, dword [ebp - 0x248]
mov dword [ebx + eax*4], 0x118
mov dword [ecx + eax*4], 0x118
jmp near loc_fffa9b87  ; jmp 0xfffa9b87

loc_fffa9a66:  ; not directly referenced
mov ebx, dword [ebp - 0x284]
mov ecx, dword [ebp - 0x244]
mov dword [edx + eax*4], 0xfffffff8
mov dword [ebx + eax*4], 0xfffffff8
mov ebx, dword [ebp - 0x238]
mov dword [ecx + eax*4], 0xfffffff8
mov ecx, dword [ebp - 0x240]
mov dword [ebx + eax*4], 0xfffffff8
mov ebx, dword [ebp - 0x248]
mov dword [ecx + eax*4], 0xfffffff8
mov dword [ebx + eax*4], 0xfffffff8
jmp near loc_fffa9b87  ; jmp 0xfffa9b87

loc_fffa9ab3:  ; not directly referenced
test ecx, ecx
je loc_fffa9b87  ; je 0xfffa9b87
mov ecx, dword [ebp - 0x284]
mov ebx, dword [ebp - 0x26c]
cmp dword [ecx + eax*4], ebx
jne short loc_fffa9acf  ; jne 0xfffa9acf
mov dword [ecx + eax*4], edi

loc_fffa9acf:  ; not directly referenced
mov ecx, dword [ebp - 0x238]
mov ebx, dword [ebp - 0x26c]
cmp dword [ecx + eax*4], ebx
jne short loc_fffa9ae5  ; jne 0xfffa9ae5
mov dword [ecx + eax*4], edi
jmp short loc_fffa9af1  ; jmp 0xfffa9af1

loc_fffa9ae5:  ; not directly referenced
mov ecx, dword [ebp - 0x238]
mov dword [edx + eax*4], edi
mov dword [ecx + eax*4], edi

loc_fffa9af1:  ; not directly referenced
cmp edi, 0x190
jne short loc_fffa9b48  ; jne 0xfffa9b48
mov ebx, dword [ebp - 0x244]
cmp dword [ebx + eax*4], 0x118
jne short loc_fffa9b48  ; jne 0xfffa9b48
mov ecx, dword [ebp - 0x284]
mov ecx, dword [ecx + eax*4]
cmp ecx, 0x190
mov dword [ebp - 0x260], ecx
je short loc_fffa9b48  ; je 0xfffa9b48
mov ecx, dword [ebp - 0x244]
mov ebx, dword [edx + eax*4]
add ebx, 0xffffffffffffff80
mov dword [ecx + eax*4], ebx
mov ecx, dword [ebp - 0x248]
mov dword [ecx + eax*4], ebx
mov ebx, dword [ebp - 0x240]
mov ecx, dword [ebp - 0x260]
mov dword [ebx + eax*4], ecx
jmp short loc_fffa9b87  ; jmp 0xfffa9b87

loc_fffa9b48:  ; not directly referenced
mov ebx, dword [edx + eax*4]
mov ecx, edi
sub ecx, ebx
mov dword [ebp - 0x260], ebx
mov ebx, dword [ebp - 0x240]
mov dword [ebp - 0x278], ecx
mov ecx, dword [ebx + eax*4]
mov ebx, dword [ebp - 0x248]
sub ecx, dword [ebx + eax*4]
cmp dword [ebp - 0x278], ecx
jle short loc_fffa9b87  ; jle 0xfffa9b87
mov ecx, dword [ebp - 0x260]
mov dword [ebx + eax*4], ecx
mov ebx, dword [ebp - 0x240]
mov dword [ebx + eax*4], edi

loc_fffa9b87:  ; not directly referenced
inc eax
add dword [ebp - 0x25c], 0x200

loc_fffa9b92:  ; not directly referenced
cmp byte [ebp - 0x271], al
ja loc_fffa99f3  ; ja 0xfffa99f3
jmp near loc_fffa99a8  ; jmp 0xfffa99a8

loc_fffa9ba3:  ; not directly referenced
add edi, 8
cmp edi, 0x198
je short loc_fffa9bb5  ; je 0xfffa9bb5

loc_fffa9bae:  ; not directly referenced
xor ebx, ebx
jmp near loc_fffa98a5  ; jmp 0xfffa98a5

loc_fffa9bb5:  ; not directly referenced
lea ebx, [esi + 0x2974]
mov dword [ebp - 0x254], ebx
imul ebx, dword [ebp - 0x23c], 9
xor edi, edi
mov dword [ebp - 0x258], ebx

loc_fffa9bd0:  ; not directly referenced
imul eax, edi, 0x1347
mov bl, byte [ebp - 0x24c]
test byte [esi + eax + 0x3acb], bl
jne short loc_fffa9bf1  ; jne 0xfffa9bf1

loc_fffa9be5:  ; not directly referenced
inc edi
cmp edi, 2
je loc_fffa9ccf  ; je 0xfffa9ccf
jmp short loc_fffa9bd0  ; jmp 0xfffa9bd0

loc_fffa9bf1:  ; not directly referenced
mov ebx, dword [ebp - 0x254]
mov byte [ebp - 0x26c], 0
lea eax, [ebx + eax + 8]
lea ebx, [edi + edi*8]
mov dword [ebp - 0x248], eax
mov dword [ebp - 0x244], ebx
jmp near loc_fffa9cb8  ; jmp 0xfffa9cb8

loc_fffa9c16:  ; not directly referenced
movzx ecx, byte [ebp - 0x26c]
mov eax, dword [ebp - 0x244]
add eax, ecx
mov ebx, dword [ebp + eax*4 - 0x60]
mov eax, dword [ebp + eax*4 - 0xa8]
mov dword [ebp - 0x238], ebx
add ebx, eax
mov dword [ebp - 0x240], eax
mov eax, ebx
cdq
mov dword [ebp - 0x25c], ebx
mov ebx, 2
idiv ebx
mov edx, dword [ebp - 0x238]
sub edx, dword [ebp - 0x240]
cmp eax, 0x198
mov dword [ebp - 0x260], eax
jle short loc_fffa9c71  ; jle 0xfffa9c71

loc_fffa9c67:  ; not directly referenced
mov eax, 7
jmp near loc_fffaa6a7  ; jmp 0xfffaa6a7

loc_fffa9c71:  ; not directly referenced
sub edx, 0x21
cmp edx, 0x3e
ja short loc_fffa9c67  ; ja 0xfffa9c67
mov ebx, dword [ebp - 0x258]
mov eax, dword [ebp - 0x248]
mov edx, dword [ebp - 0x260]
lea ebx, [ecx + ebx + 0x130]
mov word [eax + ebx*2 + 0xd], dx
mov edx, edi
push eax
mov eax, esi
push 0
push 0xff
push ecx
mov ecx, dword [ebp - 0x23c]
call fcn_fffb0168  ; call 0xfffb0168
inc byte [ebp - 0x26c]
add esp, 0x10

loc_fffa9cb8:  ; not directly referenced
mov bl, byte [ebp - 0x26c]
cmp bl, byte [esi + 0x1755]
jb loc_fffa9c16  ; jb 0xfffa9c16
jmp near loc_fffa9be5  ; jmp 0xfffa9be5

loc_fffa9ccf:  ; not directly referenced
movzx ecx, byte [esi + 0x1755]
mov eax, 1
mov word [ebp - 0x220], 0x1ff
mov word [ebp - 0x21e], 0x1ff
shl eax, cl
dec eax
mov word [ebp - 0x248], ax
mov al, byte [ebp - 0x272]
shr al, 1
lea edx, [eax + eax]
movzx edx, dl
movzx eax, al
mov dword [ebp - 0x240], edx
add eax, 0x4028
inc edx
mov dword [ebp - 0x254], edx
mov dword [ebp - 0x25c], eax
jmp near loc_fffa9ed7  ; jmp 0xfffa9ed7

loc_fffa9d25:  ; not directly referenced
push ebx
lea eax, [ebp - 0x217]
xor ecx, ecx
push 0
mov edx, dword [ebp - 0x268]
xor ebx, ebx
push 1
push eax
mov eax, esi
call fcn_fffb21f3  ; call 0xfffb21f3
add esp, 0x10

loc_fffa9d45:  ; not directly referenced
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x24c]
mov word [ebp + ebx*2 - 0x220], 0
test byte [esi + eax + 0x3acb], dl
je loc_fffa9ecd  ; je 0xfffa9ecd
lea eax, [esi + eax + 0x297c]
mov dword [ebp - 0x238], eax
mov al, byte [esi + 0x1755]
xor ecx, ecx
mov byte [ebp - 0x244], al
mov eax, ebx
shl eax, 8
mov edx, 1
add eax, 0x54
jmp short loc_fffa9db9  ; jmp 0xfffa9db9

loc_fffa9d92:  ; not directly referenced
mov edi, dword [esi + 0x103f]
add edi, eax
mov edi, dword [edi]
and edi, 0x1ff
cmp edi, 0x1f
jle short loc_fffa9db3  ; jle 0xfffa9db3
mov edi, edx
shl edi, cl
or word [ebp + ebx*2 - 0x220], di

loc_fffa9db3:  ; not directly referenced
inc ecx
add eax, 0x200

loc_fffa9db9:  ; not directly referenced
cmp byte [ebp - 0x244], cl
ja short loc_fffa9d92  ; ja 0xfffa9d92
mov dx, word [ebp + ebx*2 - 0x220]
mov ecx, dword [ebp - 0x248]
xor edi, edi
cmp dx, cx
mov word [ebp - 0x244], dx
jne loc_fffa9ea5  ; jne 0xfffa9ea5
mov eax, dword [ebp - 0x238]
mov ecx, dword [ebp - 0x23c]
mov dl, byte [eax + ecx + 0x10cd]
cmp dl, 0xd
ja loc_fffa9ea5  ; ja 0xfffa9ea5
mov edi, dword [ebp - 0x254]
add edx, 2
mov byte [eax + ecx + 0x10cd], dl
mov edx, eax
movzx eax, byte [eax + edi + 0x10cd]
mov edi, dword [ebp - 0x240]
shl eax, 4
add al, byte [edx + edi + 0x10cd]
movzx edx, al
mov eax, ebx
shl eax, 0xa
add eax, dword [ebp - 0x25c]
add eax, dword [esi + 0x103f]
mov byte [eax], dl
jmp near loc_fffa9ecd  ; jmp 0xfffa9ecd

loc_fffa9e42:  ; not directly referenced
mov eax, edi
mov edx, dword [ebp - 0x244]
movzx eax, al
bt edx, edi
mov dword [ebp - 0x26c], eax
jae short loc_fffa9ea2  ; jae 0xfffa9ea2
mov ecx, dword [ebp - 0x258]
lea edx, [eax + ecx + 0x130]
mov ecx, dword [ebp - 0x238]
mov ax, word [ecx + edx*2 + 0xd]
cmp ax, 0x7f
jbe loc_fffa9c67  ; jbe 0xfffa9c67
add eax, 0xffffffffffffff80
mov word [ecx + edx*2 + 0xd], ax
mov edx, ebx
push ecx
mov eax, esi
mov ecx, dword [ebp - 0x23c]
push 0
push 0xff
push dword [ebp - 0x26c]
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10

loc_fffa9ea2:  ; not directly referenced
inc edi
jmp short loc_fffa9ebf  ; jmp 0xfffa9ebf

loc_fffa9ea5:  ; not directly referenced
imul edx, dword [ebp - 0x23c], 9
movzx eax, word [ebp - 0x244]
mov dword [ebp - 0x258], edx
mov dword [ebp - 0x244], eax

loc_fffa9ebf:  ; not directly referenced
mov ecx, edi
cmp cl, byte [esi + 0x1755]
jb loc_fffa9e42  ; jb 0xfffa9e42

loc_fffa9ecd:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffa9d45  ; jne 0xfffa9d45

loc_fffa9ed7:  ; not directly referenced
cmp word [ebp - 0x220], 0
jne loc_fffa9d25  ; jne 0xfffa9d25
cmp word [ebp - 0x21e], 0
jne loc_fffa9d25  ; jne 0xfffa9d25
lea edi, [esi + 0x16be]
mov dword [ebp - 0x240], edi
imul edi, dword [ebp - 0x23c], 9
xor ebx, ebx
mov dword [ebp - 0x244], edi

loc_fffa9f0e:  ; not directly referenced
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x24c]
test byte [esi + eax + 0x3acb], dl
jne short loc_fffa9f2b  ; jne 0xfffa9f2b

loc_fffa9f23:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffa9f0e  ; jne 0xfffa9f0e
jmp short loc_fffa9f8c  ; jmp 0xfffa9f8c

loc_fffa9f2b:  ; not directly referenced
mov ecx, dword [ebp - 0x240]
mov byte [ebp - 0x238], 0
lea edi, [ecx + eax + 0x12be]
jmp short loc_fffa9f7c  ; jmp 0xfffa9f7c

loc_fffa9f41:  ; not directly referenced
movzx eax, byte [ebp - 0x238]
mov ecx, dword [ebp - 0x244]
lea edx, [eax + ecx + 0x130]
mov ecx, dword [ebp - 0x23c]
add word [edi + edx*2 + 0xd], 0x40
push edx
mov edx, ebx
push 0
push 0xff
push eax
mov eax, esi
call fcn_fffb0168  ; call 0xfffb0168
inc byte [ebp - 0x238]
add esp, 0x10

loc_fffa9f7c:  ; not directly referenced
mov al, byte [ebp - 0x238]
cmp al, byte [esi + 0x1755]
jb short loc_fffa9f41  ; jb 0xfffa9f41
jmp short loc_fffa9f23  ; jmp 0xfffa9f23

loc_fffa9f8c:  ; not directly referenced
imul ebx, dword [ebp - 0x23c], 9
mov word [ebp - 0x220], 0
mov word [ebp - 0x21e], 0
mov byte [ebp - 0x240], 0x40
mov dword [ebp - 0x25c], ebx

loc_fffa9fb2:  ; not directly referenced
push eax
lea edi, [ebp - 0x217]
xor ecx, ecx
push 0
mov edx, dword [ebp - 0x268]
mov eax, esi
push 1
xor ebx, ebx
push edi
mov edi, 1
call fcn_fffb21f3  ; call 0xfffb21f3
lea eax, [esi + 0x2974]
add esp, 0x10
mov dword [ebp - 0x258], eax

loc_fffa9fe3:  ; not directly referenced
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x24c]
test byte [esi + eax + 0x3acb], dl
je loc_fffaa0d4  ; je 0xfffaa0d4
mov ecx, dword [ebp - 0x258]
mov byte [ebp - 0x238], 0
lea eax, [ecx + eax + 8]
mov dword [ebp - 0x244], eax
mov eax, ebx
shl eax, 8
add eax, 0x54
mov dword [ebp - 0x254], eax
jmp near loc_fffaa0af  ; jmp 0xfffaa0af

loc_fffaa026:  ; not directly referenced
movzx eax, word [ebp + ebx*2 - 0x220]
mov dl, byte [ebp - 0x238]
bt eax, edx
mov word [ebp - 0x260], ax
movzx ecx, byte [ebp - 0x238]
jb short loc_fffaa0a9  ; jb 0xfffaa0a9
mov eax, ecx
shl eax, 9
add eax, dword [ebp - 0x254]
add eax, dword [esi + 0x103f]
mov eax, dword [eax]
cmp eax, 0x1f
jbe short loc_fffaa076  ; jbe 0xfffaa076
mov eax, 1
shl eax, cl
or eax, dword [ebp - 0x260]
mov word [ebp + ebx*2 - 0x220], ax
jmp short loc_fffaa0a9  ; jmp 0xfffaa0a9

loc_fffaa076:  ; not directly referenced
mov edx, dword [ebp - 0x25c]
lea eax, [ecx + edx + 0x130]
mov edx, dword [ebp - 0x244]
inc word [edx + eax*2 + 0xd]
mov edx, ebx
push eax
mov eax, esi
push 0
push 0xff
push ecx
mov ecx, dword [ebp - 0x23c]
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10

loc_fffaa0a9:  ; not directly referenced
inc byte [ebp - 0x238]

loc_fffaa0af:  ; not directly referenced
mov cl, byte [ebp - 0x238]
cmp cl, byte [esi + 0x1755]
jb loc_fffaa026  ; jb 0xfffaa026
mov eax, dword [ebp - 0x248]
cmp word [ebp + ebx*2 - 0x220], ax
mov al, 0
cmovne edi, eax

loc_fffaa0d4:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffa9fe3  ; jne 0xfffa9fe3
mov edx, edi
test dl, dl
jne short loc_fffaa0f5  ; jne 0xfffaa0f5
dec byte [ebp - 0x240]
jne loc_fffa9fb2  ; jne 0xfffa9fb2
jmp near loc_fffa9c67  ; jmp 0xfffa9c67

loc_fffaa0f5:  ; not directly referenced
lea edi, [esi + 0x2974]
mov dword [ebp - 0x240], edi
imul edi, dword [ebp - 0x23c], 9
xor ebx, ebx
mov dword [ebp - 0x248], edi

loc_fffaa110:  ; not directly referenced
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x24c]
test byte [esi + eax + 0x3acb], dl
jne short loc_fffaa131  ; jne 0xfffaa131

loc_fffaa125:  ; not directly referenced
inc ebx
cmp ebx, 2
je loc_fffa971b  ; je 0xfffa971b
jmp short loc_fffaa110  ; jmp 0xfffaa110

loc_fffaa131:  ; not directly referenced
mov ecx, dword [ebp - 0x240]
mov byte [ebp - 0x238], 0
lea edi, [ecx + eax + 8]
jmp short loc_fffaa17f  ; jmp 0xfffaa17f

loc_fffaa144:  ; not directly referenced
movzx eax, byte [ebp - 0x238]
mov ecx, dword [ebp - 0x248]
lea edx, [eax + ecx + 0x130]
sub word [edi + edx*2 + 0xd], 0x40
mov edx, ebx
push ecx
mov ecx, dword [ebp - 0x23c]
push 0
push 0xff
push eax
mov eax, esi
call fcn_fffb0168  ; call 0xfffb0168
inc byte [ebp - 0x238]
add esp, 0x10

loc_fffaa17f:  ; not directly referenced
mov al, byte [ebp - 0x238]
cmp al, byte [esi + 0x1755]
jb short loc_fffaa144  ; jb 0xfffaa144
jmp short loc_fffaa125  ; jmp 0xfffaa125

loc_fffaa18f:  ; not directly referenced
imul ecx, dword [ebp - 0x240], 0x1347
mov ebx, dword [ebp - 0x264]
cmp dword [ebx + ecx + 0x12be], 2
je short loc_fffaa1c2  ; je 0xfffaa1c2

loc_fffaa1a9:  ; not directly referenced
inc dword [ebp - 0x240]
add eax, 0x100
cmp dword [ebp - 0x240], 2
jne short loc_fffaa18f  ; jne 0xfffaa18f
jmp near loc_fffaa242  ; jmp 0xfffaa242

loc_fffaa1c2:  ; not directly referenced
mov edi, dword [ebp - 0x24c]
cmp dword [esi + 0x1749], 2
lea ebx, [edi + ecx + 8]
mov edi, dword [ebx + 0x141]
jne short loc_fffaa1eb  ; jne 0xfffaa1eb
mov ecx, dword [esi + 0x103f]
and edi, 0xefffffff
add ecx, eax
mov dword [ecx], edi

loc_fffaa1eb:  ; not directly referenced
mov ecx, dword [esi + 0x103f]
mov edi, dword [ebx + 0x141]
add ecx, eax
lea edx, [eax - 0x3010]
mov dword [ebp - 0x250], edx
mov dword [ecx], edi
xor ecx, ecx
jmp short loc_fffaa235  ; jmp 0xfffaa235

loc_fffaa20b:  ; not directly referenced
movzx edx, cl
inc ecx
mov edi, dword [ebx + edx*4 + 0x169]
mov dword [ebp - 0x23c], edi
mov edi, edx
shl edi, 9
add edi, dword [ebp - 0x250]
add edi, dword [esi + 0x103f]
mov edx, dword [ebp - 0x23c]
mov dword [edi], edx

loc_fffaa235:  ; not directly referenced
cmp cl, byte [esi + 0x1755]
jb short loc_fffaa20b  ; jb 0xfffaa20b
jmp near loc_fffaa1a9  ; jmp 0xfffaa1a9

loc_fffaa242:  ; not directly referenced
mov eax, esi
call wait_5030
mov dword [ebp - 0x250], esi
mov dword [ebp - 0x24c], 0

loc_fffaa259:  ; not directly referenced
imul ebx, dword [ebp - 0x24c], 0x1347
mov edi, dword [ebp - 0x264]
cmp dword [edi + ebx + 0x12be], 2
jne loc_fffaa68a  ; jne 0xfffaa68a
xor ecx, ecx
mov edx, 4
lea eax, [ebp - 0x21b]
mov word [ebp - 0x210], 0xf000
mov word [ebp - 0x20e], 0xf000
mov word [ebp - 0x20c], 0xf000
mov word [ebp - 0x20a], 0xf000
mov word [ebp - 0x208], 0x1000
mov word [ebp - 0x206], 0x1000
mov word [ebp - 0x204], 0x1000
mov word [ebp - 0x202], 0x1000
call mrc_setmem
mov edi, dword [ebp - 0x250]
mov eax, 2
cmp dword [edi + 0x297c], 2
jne loc_fffaa68a  ; jne 0xfffaa68a
lea edi, [esi + ebx + 0x297c]
xor ecx, ecx
mov dword [ebp - 0x238], edi
mov word [ebp - 0x248], 0x1000
mov word [ebp - 0x244], 0xf000

loc_fffaa30a:  ; not directly referenced
mov eax, 0xf
bt eax, ecx
jae loc_fffaa3d9  ; jae 0xfffaa3d9
mov ebx, dword [ebp - 0x250]
mov al, 1
shl eax, cl
test byte [ebx + 0x3acb], al
je loc_fffaa3d9  ; je 0xfffaa3d9
mov al, byte [esi + 0x1755]
mov dword [ebp - 0x23c], 0
mov byte [ebp - 0x240], al
jmp short loc_fffaa38f  ; jmp 0xfffaa38f

loc_fffaa346:  ; not directly referenced
movzx ebx, byte [edi + ecx + 0x10cd]
mov edx, dword [ebp - 0x23c]
mov eax, dword [ebp - 0x238]
imul ebx, ebx, 0xffffffffffffffc0
add bx, word [eax + edx*2 + 0x26d]
cmp word [ebp + ecx*2 - 0x210], bx
jge short loc_fffaa377  ; jge 0xfffaa377
mov word [ebp + ecx*2 - 0x210], bx

loc_fffaa377:  ; not directly referenced
cmp word [ebp + ecx*2 - 0x208], bx
jle short loc_fffaa389  ; jle 0xfffaa389
mov word [ebp + ecx*2 - 0x208], bx

loc_fffaa389:  ; not directly referenced
inc dword [ebp - 0x23c]

loc_fffaa38f:  ; not directly referenced
mov dl, byte [ebp - 0x23c]
cmp byte [ebp - 0x240], dl
ja short loc_fffaa346  ; ja 0xfffaa346
mov bx, word [ebp + ecx*2 - 0x210]
cmp word [ebp - 0x244], bx
cmovge bx, word [ebp - 0x244]
mov word [ebp - 0x244], bx
mov bx, word [ebp + ecx*2 - 0x208]
cmp word [ebp - 0x248], bx
cmovle bx, word [ebp - 0x248]
mov word [ebp - 0x248], bx

loc_fffaa3d9:  ; not directly referenced
inc ecx
add dword [ebp - 0x238], 0x12
cmp ecx, 4
jne loc_fffaa30a  ; jne 0xfffaa30a
movsx edx, word [ebp - 0x244]
mov cl, 2
movsx eax, word [ebp - 0x248]
mov byte [ebp - 0x23c], 0
add eax, edx
cdq
idiv ecx
mov cl, 0x40
neg eax
add eax, 0x160
cdq
idiv ecx
movsx bx, al
shl ebx, 6
mov dword [ebp - 0x254], eax
mov word [ebp - 0x240], bx
mov byte [ebp - 0x244], al
xor ebx, ebx

loc_fffaa42e:  ; not directly referenced
mov eax, 0xf
bt eax, ebx
jae loc_fffaa586  ; jae 0xfffaa586
mov edx, dword [ebp - 0x250]
mov cl, bl
mov al, 1
shl eax, cl
test byte [edx + 0x3acb], al
je loc_fffaa586  ; je 0xfffaa586
mov eax, dword [ebp - 0x240]
add ax, word [ebp + ebx*2 - 0x208]
mov cl, byte [ebp - 0x244]
cmp ax, 0x3f
mov byte [ebx + ebp - 0x21b], cl
jg short loc_fffaa48f  ; jg 0xfffaa48f
movsx edx, ax
mov eax, 0x7f
sub eax, edx
sar eax, 6
add eax, dword [ebp - 0x254]
mov byte [ebx + ebp - 0x21b], al

loc_fffaa48f:  ; not directly referenced
mov dl, byte [ebx + ebp - 0x21b]
movsx ax, dl
shl eax, 6
add ax, word [ebp + ebx*2 - 0x210]
cwde
cmp eax, 0x1bf
jle short loc_fffaa4be  ; jle 0xfffaa4be
sub eax, 0x180
sar eax, 6
sub edx, eax
mov byte [ebx + ebp - 0x21b], dl

loc_fffaa4be:  ; not directly referenced
mov al, byte [ebx + ebp - 0x21b]
mov byte [ebp - 0x238], 0
movsx edx, al
mov dword [ebp - 0x248], edx
mov ecx, dword [ebp - 0x248]
movsx edx, byte [ebp - 0x23c]
sub ecx, edx
mov edx, ecx
lea ecx, [eax - 0xe]
cmp edx, 0xf
mov dl, byte [ebp - 0x23c]
cmovge edx, ecx
movsx ecx, dl
mov byte [ebp - 0x23c], dl
mov edx, dword [ebp - 0x248]
sub edx, ecx
lea ecx, [eax - 1]
test edx, edx
mov dl, byte [ebp - 0x23c]
cmovle edx, ecx
sub al, byte [edi + ebx + 0x10cd]
cbw
shl eax, 6
lea ecx, [ebx + ebx*8]
mov byte [ebp - 0x23c], dl
mov word [ebp - 0x248], ax
mov dword [ebp - 0x258], ecx
jmp short loc_fffaa578  ; jmp 0xfffaa578

loc_fffaa538:  ; not directly referenced
movzx eax, byte [ebp - 0x238]
mov ecx, dword [ebp - 0x258]
lea edx, [eax + ecx + 0x130]
mov ecx, dword [ebp - 0x248]
add word [edi + edx*2 + 0xd], cx
mov ecx, ebx
push edx
mov edx, dword [ebp - 0x24c]
push 0
push 0xff
push eax
mov eax, esi
call fcn_fffb0168  ; call 0xfffb0168
inc byte [ebp - 0x238]
add esp, 0x10

loc_fffaa578:  ; not directly referenced
mov al, byte [ebp - 0x238]
cmp al, byte [esi + 0x1755]
jb short loc_fffaa538  ; jb 0xfffaa538

loc_fffaa586:  ; not directly referenced
inc ebx
cmp ebx, 4
jne loc_fffaa42e  ; jne 0xfffaa42e
mov eax, dword [ebp - 0x24c]
shl eax, 0xa
add eax, 0x4028
mov dword [ebp - 0x240], eax
add eax, dword [esi + 0x103f]
cmp byte [ebp - 0x23c], 0
mov ebx, dword [eax]
jge short loc_fffaa5d9  ; jge 0xfffaa5d9
mov edx, ebx
mov cl, byte [ebp - 0x23c]
shr edx, 0x10
neg ecx
and edx, 0x3f
mov eax, 7
movzx ecx, cl
cmp edx, ecx
mov edx, 0
cmovge eax, edx
jmp short loc_fffaa5f9  ; jmp 0xfffaa5f9

loc_fffaa5d9:  ; not directly referenced
jne short loc_fffaa5df  ; jne 0xfffaa5df

loc_fffaa5db:  ; not directly referenced
xor eax, eax
jmp short loc_fffaa5f9  ; jmp 0xfffaa5f9

loc_fffaa5df:  ; not directly referenced
movsx edx, byte [ebp - 0x23c]
mov eax, ebx
shr eax, 0x10
not eax
and eax, 0x3f
cmp edx, eax
jle short loc_fffaa5db  ; jle 0xfffaa5db
mov eax, 7

loc_fffaa5f9:  ; not directly referenced
mov edx, ebx
and ebx, 0xffc00000
shr edx, 0x10
add edx, dword [ebp - 0x23c]
and edx, 0x3f
mov ecx, edx
mov dword [edi + 0x10d5], edx
shl ecx, 0x10
xor edx, edx
or ebx, ecx
mov dword [ebp - 0x248], ebx

loc_fffaa622:  ; not directly referenced
mov ecx, 0xf
bt ecx, edx
jae short loc_fffaa657  ; jae 0xfffaa657
mov cl, dl
mov ebx, 1
shl ebx, cl
mov ecx, dword [ebp - 0x250]
test byte [ecx + 0x3acb], bl
je short loc_fffaa657  ; je 0xfffaa657
mov cl, byte [edx + ebp - 0x21b]
sub ecx, dword [ebp - 0x23c]
mov byte [edi + edx + 0x10cd], cl

loc_fffaa657:  ; not directly referenced
lea ecx, [edx*4]
mov bl, byte [edi + edx + 0x10cd]
and ebx, 0xf
inc edx
shl ebx, cl
or dword [ebp - 0x248], ebx
cmp edx, 4
jne short loc_fffaa622  ; jne 0xfffaa622
mov edx, dword [ebp - 0x240]
add edx, dword [esi + 0x103f]
mov ebx, dword [ebp - 0x248]
mov dword [edx], ebx

loc_fffaa68a:  ; not directly referenced
inc dword [ebp - 0x24c]
add dword [ebp - 0x250], 0x1347
cmp dword [ebp - 0x24c], 2
jne loc_fffaa259  ; jne 0xfffaa259

loc_fffaa6a7:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffaa951:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
push ebx
lea esp, [esp - 0x1c]
mov byte [ebp - 0x19], dl
call mrc_get_timestamp
lea edi, [eax + 0x2710]
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x4800], 5

loc_fffaa97b:  ; not directly referenced
mov eax, dword [esi + 0x103f]
mov ebx, dword [eax + 0x4804]
mov edx, ebx
mov eax, ebx
shr edx, 0x10
shr eax, 0x10
and edx, 2
and eax, 1
or eax, edx
and al, byte [ebp - 0x19]
cmp al, byte [ebp - 0x19]
jne short loc_fffaa9a5  ; jne 0xfffaa9a5
xor eax, eax
jmp short loc_fffaa9b3  ; jmp 0xfffaa9b3

loc_fffaa9a5:  ; not directly referenced
call mrc_get_timestamp
cmp edi, eax
ja short loc_fffaa97b  ; ja 0xfffaa97b
mov eax, 0x11

loc_fffaa9b3:  ; not directly referenced
mov edx, ebx
and ebx, 1
and edx, 2
or ebx, edx
mov edx, 0x13
test byte [ebp - 0x19], bl
cmovne eax, edx
lea esp, [esp + 0x1c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffaa9d1:  ; not directly referenced
push ebp
xor ecx, ecx
mov edx, 0x2c
mov ebp, esp
push edi
push esi
lea eax, [ebp - 0x44]
push ebx
lea esp, [esp - 0x5c]
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x50], 0
mov byte [ebp - 0x4c], 0
mov byte [ebp - 0x4b], 0
mov byte [ebp - 0x4a], 1
mov byte [ebp - 0x49], 0
mov dword [ebp - 0x48], 0
mov byte [ebp - 0x56], 0
mov byte [ebp - 0x55], 0
call mrc_setmem
cmp byte [ebx + 0x1740], 1
je short loc_fffaaa2c  ; je 0xfffaaa2c
cmp byte [ebx + 0x16b8], 1
je short loc_fffaaa2c  ; je 0xfffaaa2c

loc_fffaaa25:  ; not directly referenced
xor esi, esi
jmp near loc_fffaaca7  ; jmp 0xfffaaca7

loc_fffaaa2c:  ; not directly referenced
push eax
lea ecx, [ebp - 0x55]
lea edx, [ebp - 0x56]
push eax
mov eax, ebx
mov word [ebp - 0x1a], 1
push 0
mov word [ebp - 0x1c], 1
xor esi, esi
push 1
lea edi, [ebp - 0x48]
call fcn_fffb1ee8  ; call 0xfffb1ee8
add esp, 0x10

loc_fffaaa53:  ; not directly referenced
imul eax, esi, 0x1347
cmp dword [ebx + eax + 0x297c], 2
jne loc_fffaab48  ; jne 0xfffaab48
push eax
lea eax, [ebp - 0x50]
lea ecx, [ebp - 0x44]
push edi
mov edx, esi
push eax
lea eax, [ebp - 0x4c]
push eax
lea eax, [ebp - 0x20]
push eax
lea eax, [ebp - 0x30]
push eax
lea eax, [ebp - 0x34]
push eax
mov eax, ebx
push 0
call fcn_fffc3d24  ; call 0xfffc3d24
xor edx, edx
add esp, 0x18
mov ecx, edx
mov eax, 0x1800
and ecx, 0xfffffc00
or eax, 0x28
mov edx, ecx
lea ecx, [esi*8 + 0x48a8]
or edx, 2
push edx
mov edx, ecx
push eax
mov eax, ebx
call MCHBAR_WRITE64
mov eax, dword [ebx + 0x1005]
add esp, 0x10
cmp eax, HASWELL_FAMILY_MOBILE
jne short loc_fffaaad2  ; jne 0xfffaaad2
cmp dword [ebx + 0x1001], 2
ja short loc_fffaaaf2  ; ja 0xfffaaaf2
jmp short loc_fffaab05  ; jmp 0xfffaab05

loc_fffaaad2:  ; not directly referenced
cmp eax, HASWELL_FAMILY_GT3E
jne short loc_fffaaae4  ; jne 0xfffaaae4

loc_fffaaad9:  ; not directly referenced
cmp dword [ebx + 0x1001], 0
jne short loc_fffaaaf2  ; jne 0xfffaaaf2
jmp short loc_fffaab05  ; jmp 0xfffaab05

loc_fffaaae4:  ; not directly referenced
cmp eax, HASWELL_FAMILY_ULT
je short loc_fffaaad9  ; je 0xfffaaad9
cmp eax, 0x306d0
jne short loc_fffaab05  ; jne 0xfffaab05

loc_fffaaaf2:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
lea eax, [eax + esi*4 + 0x4980]
mov dword [eax], 0

loc_fffaab05:  ; not directly referenced
lea edx, [ebp - 0x54]
mov eax, ebx
mov ecx, 1
mov dword [ebp - 0x54], 0
call fcn_fffb1cd8  ; call 0xfffb1cd8
imul edx, esi, 0x28
mov eax, dword [ebx + 0x103f]
lea eax, [edx + eax + 0x4808]
mov edx, dword [ebp - 0x54]
mov dword [eax], edx
mov edx, esi
shl edx, 0xa
mov eax, dword [ebx + 0x103f]
lea eax, [edx + eax + 0x4200]
mov dword [eax], 0x20

loc_fffaab48:  ; not directly referenced
inc esi
cmp esi, 2
jne loc_fffaaa53  ; jne 0xfffaaa53
lea eax, [ebx + 0x2974]
mov dword [ebp - 0x5c], 0
mov dword [ebp - 0x68], eax

loc_fffaab62:  ; not directly referenced
movzx eax, byte [ebx + 0x176a]
mov ecx, dword [ebp - 0x5c]
mov dl, byte [ebp - 0x5c]
bt eax, ecx
mov byte [ebp - 0x60], dl
jb short loc_fffaab87  ; jb 0xfffaab87

loc_fffaab77:  ; not directly referenced
inc dword [ebp - 0x5c]
cmp dword [ebp - 0x5c], 4
jne short loc_fffaab62  ; jne 0xfffaab62
xor esi, esi
jmp near loc_fffaac61  ; jmp 0xfffaac61

loc_fffaab87:  ; not directly referenced
mov cl, byte [ebp - 0x5c]
mov esi, 1
xor edx, edx
mov eax, ebx
shl esi, cl
and esi, 0xff
mov ecx, esi
call fcn_fffc41bb  ; call 0xfffc41bb
mov edi, eax
mov edx, 1
mov ecx, esi
mov eax, ebx
call fcn_fffc41bb  ; call 0xfffc41bb
mov dl, byte [ebp - 0x60]
or eax, edi
shr dl, 1
xor edi, edi
movzx edx, dl
imul edx, edx, 0xfb
movzx eax, al
mov dword [ebp - 0x64], edx
mov dword [ebp - 0x60], eax

loc_fffaabcd:  ; not directly referenced
mov word [ebp - 0x42], di
mov word [ebp - 0x3a], di
xor esi, esi

loc_fffaabd7:  ; not directly referenced
mov eax, dword [ebp - 0x60]
bt eax, esi
jae short loc_fffaac3c  ; jae 0xfffaac3c
imul eax, esi, 0x1347
mov edx, dword [ebp - 0x64]
mov ecx, dword [ebp - 0x68]
lea eax, [eax + edx + 0x1150]
lea eax, [ecx + eax + 9]
lea ecx, [ebp - 0x44]
mov dx, word [eax + 0xd5]
mov ax, word [eax + 0xd9]
dec edx
mov word [ebp - 0x38], dx
lea edx, [eax - 8]
mov word [ebp - 0x36], dx
shr ax, 3
mov edx, esi
movzx eax, ax
mov dword [ebp - 0x28], eax
push eax
lea eax, [ebp - 0x30]
push 0
push 0
push 0
push 0
push eax
lea eax, [ebp - 0x3c]
push 0
push eax
mov eax, ebx
call fcn_fffc3d24  ; call 0xfffc3d24
add esp, 0x20

loc_fffaac3c:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffaabd7  ; jne 0xfffaabd7
mov edx, dword [ebp - 0x60]
mov eax, ebx
call fcn_fffaa951  ; call 0xfffaa951
test eax, eax
mov esi, eax
jne short loc_fffaac61  ; jne 0xfffaac61
inc edi
cmp edi, 8
jne loc_fffaabcd  ; jne 0xfffaabcd
jmp near loc_fffaab77  ; jmp 0xfffaab77

loc_fffaac61:  ; not directly referenced
cmp dword [ebx + 0x297c], 2
jne short loc_fffaac7a  ; jne 0xfffaac7a
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x48a8], 0x3000

loc_fffaac7a:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffaac93  ; jne 0xfffaac93
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x48b0], 0x3000

loc_fffaac93:  ; not directly referenced
test esi, esi
je loc_fffaaa25  ; je 0xfffaaa25
mov edx, 0xdddc
mov eax, ebx
call rtc_wait  ; call 0xfffc83be

loc_fffaaca7:  ; not directly referenced
lea esp, [ebp - 0xc]
mov eax, esi
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffaacb1:  ; not directly referenced
push ebp
mov ecx, 4
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x54]
mov esi, ref_fffcb7fc  ; mov esi, 0xfffcb7fc
push ebx
lea esp, [esp - 0x8c]
mov ebx, dword [ebp + 8]
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
lea eax, [ebx + 0x2974]
mov dword [ebp - 0x60], 0
mov dword [ebp - 0x5c], 0
mov dword [ebp - 0x58], 0
xor esi, esi
mov dword [ebp - 0x84], 0
mov dword [ebp - 0x78], eax
jmp near loc_fffaad82  ; jmp 0xfffaad82

loc_fffaacff:  ; not directly referenced
imul eax, esi, 0x1347
mov edx, dword [ebp - 0x78]
lea eax, [edx + eax + 0x1254]
movzx edx, word [eax + 0xd9]
imul edx, dword [eax + 0xd5]
movzx ecx, byte [eax + 0xde]
shr edx, 0x14
mov dword [ebp - 0x74], ecx
cmp byte [eax + 0xdf], 0
mov ecx, 1
movzx edi, byte [eax + 0xdf]
cmove edi, ecx
imul edi, edx
movzx edx, byte [eax + 0xe3]
movzx eax, byte [eax + 0xe1]
imul eax, dword [ebp - 0x74]
imul eax, edi
movzx edx, word [ebp + edx*2 - 0x54]
cmp edx, eax
cmove ecx, dword [ebp - 0x84]
mov dword [ebp - 0x84], ecx
jmp short loc_fffaad78  ; jmp 0xfffaad78

loc_fffaad6e:  ; not directly referenced
mov dword [ebp - 0x84], 1

loc_fffaad78:  ; not directly referenced
inc esi
cmp esi, 2
je loc_fffaae09  ; je 0xfffaae09

loc_fffaad82:  ; not directly referenced
imul eax, esi, 0x1347
mov dl, byte [ebx + eax + 0x3acb]
mov byte [ebp - 0x6d], dl
and dl, 1
je short loc_fffaadfa  ; je 0xfffaadfa
mov ecx, dword [ebp - 0x78]
lea eax, [ecx + eax + 0x1159]
movzx edx, word [eax + 0xd9]
imul edx, dword [eax + 0xd5]
movzx edi, byte [eax + 0xde]
shr edx, 0x14
mov dword [ebp - 0x74], edi
movzx edi, byte [eax + 0xdf]
mov ecx, edi
and edi, 0xff
test cl, cl
jne short loc_fffaadd4  ; jne 0xfffaadd4
mov edi, 1

loc_fffaadd4:  ; not directly referenced
imul edx, edi
movzx edi, byte [eax + 0xe3]
movzx eax, byte [eax + 0xe1]
imul eax, dword [ebp - 0x74]
imul eax, edx
movzx edi, word [ebp + edi*2 - 0x54]
cmp edi, eax
je short loc_fffaadfa  ; je 0xfffaadfa
jmp near loc_fffaad6e  ; jmp 0xfffaad6e

loc_fffaadfa:  ; not directly referenced
test byte [ebp - 0x6d], 4
jne loc_fffaacff  ; jne 0xfffaacff
jmp near loc_fffaad78  ; jmp 0xfffaad78

loc_fffaae09:  ; not directly referenced
cmp dword [ebp - 0x84], 1
jne short loc_fffaae17  ; jne 0xfffaae17
jmp near loc_fffab1a2  ; jmp 0xfffab1a2

loc_fffaae17:  ; not directly referenced
cmp dword [ebx + 0x1005], HASWELL_FAMILY_MOBILE
jne short loc_fffaae30  ; jne 0xfffaae30
cmp dword [ebx + 0x1001], 1
jbe loc_fffab1ac  ; jbe 0xfffab1ac

loc_fffaae30:  ; not directly referenced
xor ecx, ecx
mov edx, 0x2c
lea eax, [ebp - 0x44]
call mrc_setmem
cmp byte [ebx + 0x1740], 1
jne short loc_fffaae92  ; jne 0xfffaae92
cmp dword [ebx + 0x297c], 2
jne short loc_fffaae6e  ; jne 0xfffaae6e
mov eax, dword [ebx + 0x103f]
mov edi, dword [eax + 0x5004]
mov edx, edi
mov dword [ebp - 0x80], edi
and edx, 0xfcffffff
mov dword [eax + 0x5004], edx

loc_fffaae6e:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffaae92  ; jne 0xfffaae92
mov eax, dword [ebx + 0x103f]
mov edx, dword [eax + 0x5008]
mov dword [ebp - 0x7c], edx
and edx, 0xfcffffff
mov dword [eax + 0x5008], edx

loc_fffaae92:  ; not directly referenced
mov dword [ebp - 0x28], 3
mov word [ebp - 0x1a], 0x20
mov word [ebp - 0x1c], 0x400
mov word [ebp - 0x36], 0x18
mov word [ebp - 0x42], 1
mov word [ebp - 0x3a], 1
mov edi, 0x4200
xor esi, esi

loc_fffaaebe:  ; not directly referenced
imul eax, esi, 0x1347
cmp dword [ebx + eax + 0x297c], 2
jne loc_fffaafc2  ; jne 0xfffaafc2
push eax
lea ecx, [ebp - 0x58]
lea eax, [ebp - 0x60]
push ecx
mov edx, esi
lea ecx, [ebp - 0x44]
push eax
lea eax, [ebp - 0x5c]
push eax
lea eax, [ebp - 0x20]
push eax
lea eax, [ebp - 0x30]
push eax
lea eax, [ebp - 0x34]
push eax
mov eax, ebx
push 0
call fcn_fffc3d24  ; call 0xfffc3d24
xor edx, edx
mov eax, 0x1800
mov ecx, edx
add esp, 0x20
and ecx, 0xfffffc00
mov edx, ecx
mov ecx, eax
and ecx, 0x8fffffff
or edx, 2
mov eax, ecx
mov ecx, dword [ebx + 0x1005]
or eax, 0x10000000
cmp ecx, HASWELL_FAMILY_MOBILE
jne short loc_fffaaf38  ; jne 0xfffaaf38
cmp dword [ebx + 0x1001], 2
jbe short loc_fffaaf59  ; jbe 0xfffaaf59
jmp short loc_fffaaf6a  ; jmp 0xfffaaf6a

loc_fffaaf38:  ; not directly referenced
cmp ecx, HASWELL_FAMILY_GT3E
jne short loc_fffaaf49  ; jne 0xfffaaf49

loc_fffaaf40:  ; not directly referenced
cmp dword [ebx + 0x1001], 0
jmp short loc_fffaaf57  ; jmp 0xfffaaf57

loc_fffaaf49:  ; not directly referenced
cmp ecx, HASWELL_FAMILY_ULT
je short loc_fffaaf40  ; je 0xfffaaf40
cmp ecx, 0x306d0

loc_fffaaf57:  ; not directly referenced
jne short loc_fffaaf6a  ; jne 0xfffaaf6a

loc_fffaaf59:  ; not directly referenced
mov ecx, eax
and ecx, 0xffe0ffff
mov eax, ecx
or eax, 0x10000
jmp short loc_fffaaf7d  ; jmp 0xfffaaf7d

loc_fffaaf6a:  ; not directly referenced
mov ecx, dword [ebx + 0x103f]
lea ecx, [ecx + esi*4 + 0x4980]
mov dword [ecx], 1

loc_fffaaf7d:  ; not directly referenced
push ecx
push ecx
lea ecx, [esi*8 + 0x48a8]
push edx
mov edx, ecx
push eax
mov eax, ebx
call MCHBAR_WRITE64
mov eax, dword [ebx + 0x103f]
and dword [ebp - 0x6c], 0xffff7f24
add eax, edi
or dword [ebp - 0x6c], 0x8092
mov edx, dword [ebp - 0x6c]
add esp, 0x10
mov dword [eax], 0x20
mov eax, dword [ebx + 0x103f]
lea eax, [edi + eax - 0x1c0]
mov dword [eax], edx

loc_fffaafc2:  ; not directly referenced
inc esi
add edi, 0x400
cmp esi, 2
jne loc_fffaaebe  ; jne 0xfffaaebe
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x6c], 0
mov dword [ebp - 0x8c], edi

loc_fffaafe5:  ; not directly referenced
movzx eax, byte [ebx + 0x176a]
mov ecx, dword [ebp - 0x6c]
bt eax, ecx
mov dl, byte [ebp - 0x6c]
jb short loc_fffab008  ; jb 0xfffab008

loc_fffaaff7:  ; not directly referenced
add dword [ebp - 0x6c], 2
cmp dword [ebp - 0x6c], 4
jne short loc_fffaafe5  ; jne 0xfffaafe5
xor esi, esi
jmp near loc_fffab127  ; jmp 0xfffab127

loc_fffab008:  ; not directly referenced
shr dl, 1
mov cl, byte [ebp - 0x6c]
movzx edx, dl
mov eax, 1
imul edx, edx, 0xfb
xor edi, edi
shl eax, cl
mov byte [ebp - 0x6d], 0
and eax, 0xff
mov dword [ebp - 0x88], edx
mov dword [ebp - 0x84], eax

loc_fffab034:  ; not directly referenced
mov edx, edi
mov ecx, dword [ebp - 0x84]
mov eax, ebx
call fcn_fffc41bb  ; call 0xfffc41bb
or byte [ebp - 0x6d], al
movzx edx, byte [ebp - 0x6d]
bt edx, edi
mov dword [ebp - 0x78], edx
jae loc_fffab109  ; jae 0xfffab109
imul eax, edi, 0x1347
mov ecx, dword [ebp - 0x88]
mov edx, dword [ebp - 0x8c]
lea eax, [eax + ecx + 0x1150]
lea ecx, [ebp - 0x30]
lea esi, [edx + eax + 9]
mov ax, word [esi + 0xd9]
mov dx, word [esi + 0xd5]
dec edx
mov word [ebp - 0x38], dx
lea edx, [eax - 0x100]
mov word [ebp - 0x36], dx
push edx
movzx eax, ah
mov edx, edi
push 0
mov dword [ebp - 0x74], eax
dec eax
push 0
mov dword [ebp - 0x28], eax
lea eax, [ebp - 0x3c]
push 0
push 0
push ecx
xor ecx, ecx
push 0
push eax
mov eax, ebx
call fcn_fffc3d24  ; call 0xfffc3d24
mov eax, dword [esi + 0xd5]
add esp, 0x20
imul edx, edi, 0x28
shr eax, 0xa
add edx, 0x4808
imul eax, dword [ebp - 0x74]
mov dword [ebp - 0x90], edx
dec eax
call mrc_highest_bit
mov edx, dword [ebp - 0x90]
mov ecx, dword [ebx + 0x103f]
add ecx, edx
and eax, 0x7f
mov esi, eax
or eax, 0x8000000
or esi, 0x400000
mov dword [ecx], esi
mov ecx, dword [ebx + 0x103f]
lea edx, [edx + ecx + 4]
mov dword [edx], eax

loc_fffab109:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffab034  ; jne 0xfffab034
mov edx, dword [ebp - 0x78]
mov eax, ebx
call fcn_fffaa951  ; call 0xfffaa951
test eax, eax
mov esi, eax
je loc_fffaaff7  ; je 0xfffaaff7

loc_fffab127:  ; not directly referenced
cmp byte [ebx + 0x1740], 1
jne short loc_fffab160  ; jne 0xfffab160
cmp dword [ebx + 0x297c], 2
jne short loc_fffab148  ; jne 0xfffab148
mov eax, dword [ebx + 0x103f]
mov edi, dword [ebp - 0x80]
mov dword [eax + 0x5004], edi

loc_fffab148:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffab160  ; jne 0xfffab160
mov eax, dword [ebx + 0x103f]
mov edx, dword [ebp - 0x7c]
mov dword [eax + 0x5008], edx

loc_fffab160:  ; not directly referenced
mov edx, 0x3c
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
cmp dword [ebx + 0x297c], 2
jne short loc_fffab185  ; jne 0xfffab185
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x48a8], 0x3000

loc_fffab185:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffab19e  ; jne 0xfffab19e
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x48b0], 0x3000

loc_fffab19e:  ; not directly referenced
test esi, esi
je short loc_fffab1ac  ; je 0xfffab1ac

loc_fffab1a2:  ; not directly referenced
mov dword [ebx + 0x174d], 1

loc_fffab1ac:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffab1b6:  ; not directly referenced
push ebp
mov ebp, esp
push esi
mov esi, 0x80
push ebx
mov dl, byte [eax + 0x106a]
movzx ecx, dl
test dl, dl
movzx edx, byte [eax + 0x1069]
cmovne esi, ecx
cmp dl, 6
sete bl
cmp dl, 1
setbe cl
or bl, cl
jne short loc_fffab1f8  ; jne 0xfffab1f8
xor edx, edx
cmp dword [eax + 0x1749], 2
setne dl
lea edx, [edx*4 + 2]

loc_fffab1f8:  ; not directly referenced
mov eax, dword [eax + 0x103f]
and edx, 0xf
shl edx, 0xc
or edx, esi
mov dword [eax + 0x4cb0], edx
pop ebx
pop esi
pop ebp
ret

fcn_fffab280:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x2c]
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x1c], 0
lea eax, [ebx + 8]
mov dword [ebp - 0x28], eax
mov al, byte [ebx + 0x297b]
lea edi, [ebx + 0x10b7]
mov byte [ebx + 0x9e8], al
mov eax, dword [ebx + 0x2974]
mov dword [ebp - 0x2c], edi
mov dword [ebx + 0x9e4], eax
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x30], edi
lea edi, [ebx + 0x9e4]
mov dword [ebp - 0x34], edi

loc_fffab2cd:  ; not directly referenced
imul eax, dword [ebp - 0x1c], 0x2fa
imul edx, dword [ebp - 0x1c], 0x1347
mov edi, dword [ebp - 0x2c]
add edx, dword [ebp - 0x30]
mov dword [ebp - 0x20], 0
lea eax, [edi + eax + 5]
mov dword [ebp - 0x24], eax
imul eax, dword [ebp - 0x1c], 0x2e6
add eax, dword [ebp - 0x34]
lea esi, [edx + 8]
mov ecx, dword [esi + 0xf5]
lea edi, [eax + 5]
mov dword [edi + 5], ecx
mov cl, byte [esi + 0x114f]
mov byte [edi + 9], cl
mov cl, byte [esi + 0xf0]
mov byte [edi + 4], cl
mov edx, dword [edx + 8]
mov dword [eax + 5], edx

loc_fffab320:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2a
mov ecx, 0x2a
lea edx, [esi + eax + 8]
lea eax, [edi + eax + 0xa]
call mrc_memcpy
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 4
jne short loc_fffab320  ; jne 0xfffab320
lea edx, [esi + 0x1151]
mov ecx, 0xfb
lea eax, [edi + 0xb2]
call mrc_memcpy
mov edx, dword [ebp - 0x24]
mov ecx, 0x1f
add edx, 0xa1
lea eax, [edi + 0x2a8]
call mrc_memcpy
lea edx, [esi + 0x124c]
mov ecx, 0xfb
lea eax, [edi + 0x1ad]
call mrc_memcpy
mov edx, dword [ebp - 0x24]
lea eax, [edi + 0x2c7]
add edx, 0x1f0
mov ecx, 0x1f
call mrc_memcpy
inc dword [ebp - 0x1c]
cmp dword [ebp - 0x1c], 2
jne loc_fffab2cd  ; jne 0xfffab2cd
mov eax, dword [ebx + 0x172c]
xor edx, edx
mov dword [ebx + 0xfc2], eax
mov eax, dword [ebx + 0x1730]
mov dword [ebx + 0xfc6], eax
mov eax, dword [ebx + 0x1734]
mov dword [ebx + 0xfca], eax
mov eax, dword [ebx + 0x1738]
mov dword [ebx + 0xfce], eax
lea eax, [ebx + 0x14]

loc_fffab3df:  ; not directly referenced
lea ecx, [edx*4 + ref_fffcb80c]  ; lea ecx, [edx*4 - 0x347f4]
mov dword [ebp - 0x20], ecx
movzx ecx, word [edx*4 + ref_fffcb80c]  ; movzx ecx, word [edx*4 - 0x347f4]
sub ecx, eax
jmp short loc_fffab402  ; jmp 0xfffab402

loc_fffab3f5:  ; not directly referenced
add esi, dword [ebx + 0x103f]
mov esi, dword [esi]
mov dword [eax], esi
add eax, 4

loc_fffab402:  ; not directly referenced
mov edi, dword [ebp - 0x20]
lea esi, [eax + ecx]
movzx edi, word [edi + 2]
cmp esi, edi
jbe short loc_fffab3f5  ; jbe 0xfffab3f5
inc edx
cmp edx, 0x5d
jne short loc_fffab3df  ; jne 0xfffab3df
lea eax, [ebx + 0x9dc]
call fcn_fffa9196  ; call 0xfffa9196
mov eax, dword [ebx + 0x1005]
mov edx, dword [ebx + 0x1037]
mov dword [ebx + 0x9d8], eax
mov eax, dword [ebx + 0x1001]
mov dword [ebx + 0x9d4], eax
mov eax, dword [ebx + 0x16c6]
mov dword [ebx + 0xfb5], eax
mov eax, dword [ebx + 0x16ce]
mov dword [ebx + 0xfb9], eax
mov al, byte [ebx + 0x16d6]
mov byte [ebx + 0xfc1], al
mov eax, dword [ebx + 0x16d2]
mov dword [ebx + 0xfbd], eax
mov al, byte [ebx + 0x1740]
mov byte [ebx + 0xfd2], al
mov eax, dword [ebx + 0x1749]
mov dword [ebx + 0xfd3], eax
mov al, byte [ebx + 0x1746]
mov byte [ebx + 0xfd7], al
mov eax, dword [ebx + 0x1033]
call crc32  ; call 0xfffab210
mov dword [ebx + 0x9e0], eax
mov edx, 0xfd0
mov eax, dword [ebp - 0x28]
call crc32  ; call 0xfffab210
mov dword [ebx + 4], eax
lea esp, [esp + 0x2c]
pop ebx
xor eax, eax
pop esi
pop edi
pop ebp
ret

loc_fffab4bf:
db 0x00

fcn_fffab4c0:  ; not directly referenced
push ebp
mov ecx, 0x20
mov edx, 0x200
mov ebp, esp
push edi
xor edi, edi
push esi
lea eax, [ebp - 0x218]
push ebx
lea esp, [esp - 0x39c]
call mrc_setmem
mov ebx, dword [ebp + 8]
add ebx, 0x16be
mov dword [ebp - 0x380], ebx
mov ebx, dword [ebp + 8]
mov bl, byte [ebx + 0x176a]
mov byte [ebp - 0x388], bl
mov ebx, dword [ebp + 8]
mov bl, byte [ebx + 0x176b]
mov byte [ebp - 0x33c], bl
mov ebx, dword [ebp + 8]
add ebx, 0x2974
mov dword [ebp - 0x368], ebx
mov ebx, dword [ebp + 8]
cmp dword [ebx + 0x1749], 2
jne loc_fffaca53  ; jne 0xfffaca53
lea edi, [ebp - 0x260]
mov esi, ref_fffcb980  ; mov esi, 0xfffcb980
mov ecx, 6
mov edx, 0x10
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
lea eax, [ebp - 0x2a8]
lea ebx, [ebp - 0x2a8]
call mrc_setmem
xor ecx, ecx
mov edx, 0xc
lea eax, [ebp - 0x2c8]
mov byte [ebp - 0x2a7], 1
lea esi, [ebp - 0x298]
mov edi, 1
call mrc_setmem
jmp short loc_fffab5b9  ; jmp 0xfffab5b9

loc_fffab57e:  ; not directly referenced
mov eax, dword [ebp + ecx*4 - 0x2c8]
mov edx, eax
add eax, eax
and edx, 0x8000
and eax, 0xffff
shr edx, 0xf
or eax, edx
mov edx, edi
shl edx, cl
and edx, dword [ebp - 0x358]
sar edx, cl
or eax, edx
mov dword [ebp + ecx*4 - 0x2c8], eax
inc ecx
cmp ecx, 3
jne short loc_fffab57e  ; jne 0xfffab57e
inc ebx
cmp ebx, esi
je short loc_fffab5c6  ; je 0xfffab5c6

loc_fffab5b9:  ; not directly referenced
movzx eax, byte [ebx]
xor ecx, ecx
mov dword [ebp - 0x358], eax
jmp short loc_fffab57e  ; jmp 0xfffab57e

loc_fffab5c6:  ; not directly referenced
lea eax, [ebp - 0x2c8]
lea ebx, [ebp - 0x2bc]

loc_fffab5d2:  ; not directly referenced
mov edx, dword [eax]
mov ecx, edx
add edx, edx
and ecx, 0x8000
and edx, 0xffff
shr ecx, 0xf
or edx, ecx
mov dword [eax], edx
add eax, 4
cmp eax, ebx
jne short loc_fffab5d2  ; jne 0xfffab5d2
mov edx, dword [ebp + 8]
mov ecx, dword [ebp + 8]
add edx, 0x2974
add ecx, 0x10b7
mov ebx, 0x3074
xor edi, edi
mov dword [ebp - 0x340], edx
mov dword [ebp - 0x344], ecx

loc_fffab617:  ; not directly referenced
imul eax, edi, 0x1347
mov esi, dword [ebp + 8]
test byte [esi + eax + 0x3acb], 1
jne short loc_fffab651  ; jne 0xfffab651

loc_fffab62a:  ; not directly referenced
inc edi
add ebx, 0x100
cmp edi, 2
jne short loc_fffab617  ; jne 0xfffab617
mov ebx, dword [ebp + 8]
mov byte [ebp - 0x358], 0
add ebx, 0x2974
mov dword [ebp - 0x344], ebx
jmp near loc_fffab71f  ; jmp 0xfffab71f

loc_fffab651:  ; not directly referenced
mov esi, dword [ebp - 0x340]
mov ecx, 0xff
mov edx, 0x40
lea eax, [esi + eax + 8]
mov dword [ebp - 0x358], eax
imul eax, edi, 0x2fa
mov esi, dword [ebp - 0x344]
lea eax, [esi + eax + 0x2b3]
call mrc_setmem
lea eax, [ebx - 0x3010]
mov dword [ebp - 0x33c], eax
xor eax, eax
jmp short loc_fffab6ba  ; jmp 0xfffab6ba

loc_fffab693:  ; not directly referenced
movzx esi, al
mov ecx, dword [ebp - 0x358]
inc eax
mov edx, dword [ecx + esi*4 + 0x169]
mov ecx, dword [ebp - 0x348]
shl esi, 9
add esi, dword [ebp - 0x33c]
add ecx, esi
or edx, 0x60
mov dword [ecx], edx

loc_fffab6ba:  ; not directly referenced
mov esi, dword [ebp + 8]
mov edx, dword [esi + 0x103f]
cmp al, byte [esi + 0x1755]
mov dword [ebp - 0x348], edx
jb short loc_fffab693  ; jb 0xfffab693
mov esi, dword [ebp - 0x358]
mov ecx, edx
add ecx, ebx
sub esp, 0xc
mov edx, 1
mov eax, dword [esi + 0x141]
or eax, 0x1000008
mov dword [ecx], eax
mov ecx, edi
push 0
shl edx, cl
mov eax, dword [ebp + 8]
and edx, 0xff
mov ecx, 1
call fcn_fffc957e  ; call 0xfffc957e
add esp, 0x10
test eax, eax
mov dword [ebp - 0x358], eax
je loc_fffab62a  ; je 0xfffab62a
jmp near loc_fffad341  ; jmp 0xfffad341

loc_fffab71f:  ; not directly referenced
mov dl, byte [ebp - 0x358]
mov ebx, 1
shr dl, 1
mov eax, ebx
movzx ecx, dl
add ecx, 5
shl eax, cl
mov cl, dl
xor edx, edx
shl ebx, cl
mov cl, byte [ebp - 0x358]
or eax, ebx
and cl, 1
mov ebx, edx
cmove ebx, eax
cmove eax, edx
mov dword [ebp - 0x254], ebx
mov dword [ebp - 0x250], eax
xor ebx, ebx

loc_fffab75d:  ; not directly referenced
imul eax, ebx, 0x1347
mov esi, dword [ebp + 8]
test byte [esi + eax + 0x3acb], 1
je short loc_fffab79c  ; je 0xfffab79c
sub esp, 0xc
lea edi, [ebp - 0x260]
push dword [ebp - 0x2c0]
push dword [ebp - 0x2c4]
push dword [ebp - 0x2c8]
xor ecx, ecx
mov edx, ebx
push 2
mov eax, esi
push edi
call fcn_fffc9445  ; call 0xfffc9445
add esp, 0x20

loc_fffab79c:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffab75d  ; jne 0xfffab75d
mov edx, 3
mov eax, dword [ebp + 8]
call fcn_fffc96b2  ; call 0xfffc96b2
mov ebx, dword [ebp + 8]
xor esi, esi
add ebx, 0x10b7
mov dword [ebp - 0x340], ebx

loc_fffab7c0:  ; not directly referenced
imul eax, esi, 0x1347
mov ebx, dword [ebp + 8]
test byte [ebx + eax + 0x3acb], 1
jne short loc_fffab7de  ; jne 0xfffab7de

loc_fffab7d3:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffab7c0  ; jne 0xfffab7c0
jmp near loc_fffab8d3  ; jmp 0xfffab8d3

loc_fffab7de:  ; not directly referenced
mov edi, dword [ebp - 0x344]
mov edx, dword [ebp - 0x340]
mov ecx, dword [ebp + 8]
lea eax, [edi + eax + 8]
mov dword [ebp - 0x36c], eax
imul eax, esi, 0x2fa
mov cl, byte [ecx + 0x1755]
mov byte [ebp - 0x33c], cl
lea edi, [edx + eax + 5]
mov edx, esi
shl edx, 8
xor eax, eax
add edx, 0x54
jmp short loc_fffab859  ; jmp 0xfffab859

loc_fffab819:  ; not directly referenced
mov ecx, dword [ebp - 0x36c]
mov bl, byte [edi + eax + 0x2a6]
cmp byte [ecx + 0x1232], 0x20
jne short loc_fffab83e  ; jne 0xfffab83e
and bl, 2
je short loc_fffab83e  ; je 0xfffab83e
mov byte [ebp + eax - 0x2e8], 0
jmp short loc_fffab852  ; jmp 0xfffab852

loc_fffab83e:  ; not directly referenced
mov ebx, dword [ebp + 8]
mov ecx, dword [ebx + 0x103f]
add ecx, edx
mov ebx, dword [ecx]
mov byte [ebp + eax - 0x2e8], bl

loc_fffab852:  ; not directly referenced
inc eax
add edx, 0x200

loc_fffab859:  ; not directly referenced
cmp byte [ebp - 0x33c], al
ja short loc_fffab819  ; ja 0xfffab819
xor edx, edx
jmp short loc_fffab8c3  ; jmp 0xfffab8c3

loc_fffab865:  ; not directly referenced
movzx eax, dl
mov al, byte [ebp + eax - 0x2e8]
test al, al
je short loc_fffab8c2  ; je 0xfffab8c2
xor ebx, ebx
mov byte [ebp - 0x33c], 0
xor ecx, ecx

loc_fffab87e:  ; not directly referenced
test al, 1
je short loc_fffab88f  ; je 0xfffab88f
test ecx, ecx
jne short loc_fffab899  ; jne 0xfffab899
movzx ebx, byte [ebp - 0x33c]
mov cl, 1

loc_fffab88f:  ; not directly referenced
inc byte [ebp - 0x33c]
shr al, 1
jne short loc_fffab87e  ; jne 0xfffab87e

loc_fffab899:  ; not directly referenced
movzx eax, dl
mov dword [ebp - 0x33c], ebx
lea ecx, [edi + eax*8]
mov bl, byte [ebp - 0x358]
mov al, byte [edi + eax + 0x2a6]
lea eax, [ebx + eax*8]
mov ebx, dword [ebp - 0x33c]
mov byte [ebx + ecx + 0x2ae], al

loc_fffab8c2:  ; not directly referenced
inc edx

loc_fffab8c3:  ; not directly referenced
mov ebx, dword [ebp + 8]
cmp dl, byte [ebx + 0x1755]
jb short loc_fffab865  ; jb 0xfffab865
jmp near loc_fffab7d3  ; jmp 0xfffab7d3

loc_fffab8d3:  ; not directly referenced
inc byte [ebp - 0x358]
cmp byte [ebp - 0x358], 8
jne loc_fffab71f  ; jne 0xfffab71f
mov ebx, dword [ebp + 8]
test byte [ebx + 0x3acb], 1
jne short loc_fffab90a  ; jne 0xfffab90a

loc_fffab8f2:  ; not directly referenced
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x358], 0
test byte [ebx + 0x4e12], 1
je short loc_fffab95b  ; je 0xfffab95b
jmp short loc_fffab933  ; jmp 0xfffab933

loc_fffab90a:  ; not directly referenced
sub esp, 0xc
mov ecx, 1
push 2
mov edx, 1
mov eax, dword [ebp + 8]
call fcn_fffc957e  ; call 0xfffc957e
add esp, 0x10
test eax, eax
mov dword [ebp - 0x358], eax
je short loc_fffab8f2  ; je 0xfffab8f2
jmp near loc_fffad341  ; jmp 0xfffad341

loc_fffab933:  ; not directly referenced
sub esp, 0xc
mov ecx, 1
push 2
mov edx, 2
mov eax, dword [ebp + 8]
call fcn_fffc957e  ; call 0xfffc957e
add esp, 0x10
test eax, eax
mov dword [ebp - 0x358], eax
jne loc_fffad341  ; jne 0xfffad341

loc_fffab95b:  ; not directly referenced
mov ebx, dword [ebp + 8]
mov ecx, 0x7f
mov edx, 0x48
lea eax, [ebp - 0x2a8]
mov bl, byte [ebx + 0x176a]
mov byte [ebp - 0x37c], bl
call mrc_setmem
xor ecx, ecx
mov edx, 0x48
lea eax, [ebp - 0x260]
call mrc_setmem
mov ebx, dword [ebp + 8]
mov eax, 0x3074
add ebx, 0x2974
mov dword [ebp - 0x33c], 0
mov dword [ebp - 0x344], ebx

loc_fffab9af:  ; not directly referenced
imul edx, dword [ebp - 0x33c], 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + edx + 0x12be], 2
jne short loc_fffaba1f  ; jne 0xfffaba1f
mov edi, dword [ebp - 0x344]
lea esi, [edi + edx + 8]
lea edx, [eax - 0x3010]
mov dword [ebp - 0x340], edx
xor edx, edx
jmp short loc_fffab9fe  ; jmp 0xfffab9fe

loc_fffab9e3:  ; not directly referenced
movzx edi, dl
inc edx
mov ecx, dword [esi + edi*4 + 0x169]
shl edi, 9
add edi, dword [ebp - 0x340]
add ebx, edi
or ecx, 0x60
mov dword [ebx], ecx

loc_fffab9fe:  ; not directly referenced
mov ebx, dword [ebp + 8]
cmp dl, byte [ebx + 0x1755]
mov ebx, dword [ebx + 0x103f]
jb short loc_fffab9e3  ; jb 0xfffab9e3
add ebx, eax
mov edx, dword [esi + 0x141]
or edx, 0x1000008
mov dword [ebx], edx

loc_fffaba1f:  ; not directly referenced
inc dword [ebp - 0x33c]
add eax, 0x100
cmp dword [ebp - 0x33c], 2
jne loc_fffab9af  ; jne 0xfffab9af
xor edi, edi

loc_fffaba39:  ; not directly referenced
mov ecx, edi
mov ebx, 1
shl ebx, cl
test byte [ebp - 0x37c], bl
jne short loc_fffaba6b  ; jne 0xfffaba6b

loc_fffaba4a:  ; not directly referenced
inc edi
cmp edi, 4
jne short loc_fffaba39  ; jne 0xfffaba39
mov ebx, dword [ebp + 8]
mov eax, 0x3074
add ebx, 0x2974
xor esi, esi
mov dword [ebp - 0x340], ebx
jmp near loc_fffabb88  ; jmp 0xfffabb88

loc_fffaba6b:  ; not directly referenced
movzx eax, bl
xor esi, esi
mov dword [ebp - 0x340], eax

loc_fffaba76:  ; not directly referenced
imul eax, esi, 0x1347
mov ecx, dword [ebp + 8]
mov byte [ebp - 0x33c], bl
test byte [ecx + eax + 0x3acb], bl
je short loc_fffabae0  ; je 0xfffabae0
mov ecx, esi
sub esp, 0xc
mov edx, 1
mov eax, dword [ebp + 8]
shl edx, cl
mov ecx, dword [ebp - 0x340]
push 0
and edx, 0xff
call fcn_fffc957e  ; call 0xfffc957e
add esp, 0x10
test eax, eax
jne loc_fffac0f1  ; jne 0xfffac0f1
sub esp, 0xc
mov ecx, edi
push 0
mov edx, esi
mov eax, dword [ebp + 8]
push 0x4000
push 0x3000
push 4
push ref_fffcc93c  ; push 0xfffcc93c
call fcn_fffc9445  ; call 0xfffc9445
add esp, 0x20

loc_fffabae0:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffaba76  ; jne 0xfffaba76
push eax
lea esi, [ebp - 0x2a8]
mov ecx, 0x7f
push eax
mov edx, edi
mov eax, dword [ebp + 8]
push esi
and ebx, 0xff
xor esi, esi
push 2
call fcn_fffc97c8  ; call 0xfffc97c8
pop eax
pop edx
lea eax, [ebp - 0x260]
xor ecx, ecx
push eax
mov edx, edi
mov eax, dword [ebp + 8]
push 0xfffffffffffffffe
call fcn_fffc97c8  ; call 0xfffc97c8
add esp, 0x10

loc_fffabb22:  ; not directly referenced
imul eax, esi, 0x1347
mov ecx, dword [ebp + 8]
mov dl, byte [ebp - 0x33c]
test byte [ecx + eax + 0x3acb], dl
jne short loc_fffabb45  ; jne 0xfffabb45

loc_fffabb3a:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffabb22  ; jne 0xfffabb22
jmp near loc_fffaba4a  ; jmp 0xfffaba4a

loc_fffabb45:  ; not directly referenced
push 1
mov ecx, 4
mov edx, esi
push 0x40
mov eax, dword [ebp + 8]
push 1
push 3
call fcn_fffafa3c  ; call 0xfffafa3c
mov ecx, esi
mov edx, 1
mov eax, dword [ebp + 8]
mov dword [esp], 2
shl edx, cl
mov ecx, ebx
and edx, 0xff
call fcn_fffc957e  ; call 0xfffc957e
add esp, 0x10
test eax, eax
je short loc_fffabb3a  ; je 0xfffabb3a
jmp near loc_fffac0f1  ; jmp 0xfffac0f1

loc_fffabb88:  ; not directly referenced
imul edx, esi, 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + edx + 0x12be], 2
je short loc_fffabbab  ; je 0xfffabbab

loc_fffabb9e:  ; not directly referenced
inc esi
add eax, 0x100
cmp esi, 2
jne short loc_fffabb88  ; jne 0xfffabb88
jmp short loc_fffabc10  ; jmp 0xfffabc10

loc_fffabbab:  ; not directly referenced
mov edi, dword [ebp - 0x340]
lea ebx, [edi + edx + 8]
mov edi, dword [ebp + 8]
mov edx, eax
mov ecx, dword [ebx + 0x141]
add edx, dword [edi + 0x103f]
mov dword [edx], ecx
lea ecx, [eax - 0x3010]
xor edx, edx
mov dword [ebp - 0x33c], ecx
jmp short loc_fffabc03  ; jmp 0xfffabc03

loc_fffabbd8:  ; not directly referenced
movzx ecx, dl
inc edx
mov edi, dword [ebx + ecx*4 + 0x169]
shl ecx, 9
mov dword [ebp - 0x344], edi
mov edi, dword [ebp + 8]
add ecx, dword [ebp - 0x33c]
add ecx, dword [edi + 0x103f]
mov edi, dword [ebp - 0x344]
mov dword [ecx], edi

loc_fffabc03:  ; not directly referenced
mov ecx, dword [ebp + 8]
cmp dl, byte [ecx + 0x1755]
jb short loc_fffabbd8  ; jb 0xfffabbd8
jmp short loc_fffabb9e  ; jmp 0xfffabb9e

loc_fffabc10:  ; not directly referenced
mov ecx, 0x7f
mov edx, 0x10
lea ebx, [ebp - 0x2e8]
mov eax, ebx
call mrc_setmem
xor ecx, ecx
mov edx, 0x10
lea eax, [ebp - 0x308]
lea esi, [ebp - 0x330]
call mrc_setmem
xor ecx, ecx
mov edx, 0x10
lea eax, [ebp - 0x2c8]
lea edi, [ebp - 0x338]
call mrc_setmem
mov eax, dword [ebp + 8]
mov dword [ebp - 0x368], esi
mov dword [ebp - 0x344], edi
lea esi, [ebp - 0x260]
lea edi, [ebp - 0x2a8]
mov dword [ebp - 0x348], esi
mov dword [ebp - 0x370], edi
mov esi, dword [ebp - 0x344]
mov edi, dword [ebp - 0x368]
add eax, 0xfd8
mov dword [ebp - 0x340], edi
mov dword [ebp - 0x33c], esi
xor edi, edi
mov dword [ebp - 0x39c], eax

loc_fffabca3:  ; not directly referenced
imul eax, edi, 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffabeb6  ; jne 0xfffabeb6
imul edx, edi, 0x2fa
mov ebx, dword [ebp + 8]
mov esi, dword [ebp - 0x39c]
xor ecx, ecx
mov al, byte [ebx + eax + 0x3acb]
mov ebx, dword [ebp - 0x370]
lea edx, [esi + edx + 0xe4]
mov byte [ebp - 0x384], al
lea esi, [edi*4]
mov dword [ebp - 0x388], esi
mov esi, dword [ebp - 0x348]
mov eax, dword [ebp - 0x388]
mov dword [ebp - 0x38c], edx
mov dword [ebp - 0x36c], ebx
mov dword [ebp - 0x374], esi
mov dword [ebp - 0x398], eax

loc_fffabd19:  ; not directly referenced
mov eax, 1
shl eax, cl
test byte [ebp - 0x384], al
je loc_fffabdf7  ; je 0xfffabdf7
mov eax, dword [ebp - 0x398]
mov edx, dword [ebp + 8]
add eax, ecx
lea ebx, [ebp - 0x2e8]
add eax, eax
mov dword [ebp - 0x3a0], 0
add ebx, eax
mov dl, byte [edx + 0x1755]
mov dword [ebp - 0x3a4], ebx
mov byte [ebp - 0x390], dl
lea esi, [ebp + eax - 0x308]
mov eax, dword [ebp - 0x388]
add eax, ecx
lea eax, [ebp + eax*2 - 0x2c8]
mov dword [ebp - 0x394], eax
jmp short loc_fffabdf3  ; jmp 0xfffabdf3

loc_fffabd7b:  ; not directly referenced
mov ebx, dword [ebp - 0x38c]
mov edx, dword [ebp - 0x3a0]
movzx edx, byte [ebx + edx + 0x2ee]
bt edx, eax
jae short loc_fffabdb8  ; jae 0xfffabdb8
mov edx, dword [ebp - 0x36c]
mov bl, byte [edx + eax]
mov edx, dword [ebp - 0x3a4]
cmp byte [edx], bl
jbe short loc_fffabda9  ; jbe 0xfffabda9
mov byte [edx], bl

loc_fffabda9:  ; not directly referenced
mov edx, dword [ebp - 0x374]
mov bl, byte [edx + eax]
cmp byte [esi], bl
jae short loc_fffabdb8  ; jae 0xfffabdb8
mov byte [esi], bl

loc_fffabdb8:  ; not directly referenced
inc eax

loc_fffabdb9:  ; not directly referenced
cmp byte [ebp - 0x390], al
ja short loc_fffabd7b  ; ja 0xfffabd7b
movzx eax, byte [esi]
mov ebx, dword [ebp - 0x3a4]
inc esi
inc dword [ebp - 0x3a4]
movzx edx, byte [ebx]
mov ebx, dword [ebp - 0x394]
add eax, edx
mov edx, dword [ebp - 0x3a0]
sar eax, 1
mov byte [ebx + edx], al
inc edx
cmp edx, 2
mov dword [ebp - 0x3a0], edx
je short loc_fffabdf7  ; je 0xfffabdf7

loc_fffabdf3:  ; not directly referenced
xor eax, eax
jmp short loc_fffabdb9  ; jmp 0xfffabdb9

loc_fffabdf7:  ; not directly referenced
inc ecx
add dword [ebp - 0x374], 9
add dword [ebp - 0x36c], 9
cmp ecx, 4
jne loc_fffabd19  ; jne 0xfffabd19
lea eax, [ebp + edi*8 - 0x2c7]
xor cl, cl
xor ebx, ebx
mov esi, 1

loc_fffabe1f:  ; not directly referenced
mov edx, esi
shl edx, cl
test byte [ebp - 0x384], dl
je short loc_fffabe3a  ; je 0xfffabe3a
mov dl, byte [eax]
sub dl, byte [eax - 1]
mov byte [ebp + ecx - 0x328], dl
inc ebx
jmp short loc_fffabe42  ; jmp 0xfffabe42

loc_fffabe3a:  ; not directly referenced
mov byte [ebp + ecx - 0x328], 0

loc_fffabe42:  ; not directly referenced
inc ecx
add eax, 2
cmp ecx, 4
jne short loc_fffabe1f  ; jne 0xfffabe1f
xor edx, edx
test bl, bl
je short loc_fffabe69  ; je 0xfffabe69
movsx edx, byte [ebp - 0x328]
movsx eax, byte [ebp - 0x327]
movzx ebx, bl
add eax, edx
cdq
idiv ebx
mov dl, al

loc_fffabe69:  ; not directly referenced
movsx ax, dl
mov cl, 2
mov esi, dword [ebp - 0x340]
idiv cl
mov ebx, dword [ebp - 0x33c]
neg eax
add eax, 0x40
add edx, eax
mov byte [esi], al
movzx eax, byte [ebp + edi*8 - 0x2c7]
mov byte [esi + 1], dl
movzx edx, byte [ebp + edi*8 - 0x2c8]
add eax, edx
sar eax, 1
movzx edx, byte [ebp + edi*8 - 0x2c6]
mov byte [ebx], al
movzx eax, byte [ebp + edi*8 - 0x2c5]
add eax, edx
sar eax, 1
mov byte [ebx + 1], al

loc_fffabeb6:  ; not directly referenced
inc edi
add dword [ebp - 0x340], 2
add dword [ebp - 0x33c], 2
add dword [ebp - 0x348], 0x24
add dword [ebp - 0x370], 0x24
cmp edi, 2
jne loc_fffabca3  ; jne 0xfffabca3
mov ebx, dword [ebp + 8]
xor di, di
add ebx, 0x10b7
mov dword [ebp - 0x36c], 0
movzx esi, byte [ebp - 0x37c]
mov dword [ebp - 0x374], ebx
mov dword [ebp - 0x340], esi

loc_fffabf05:  ; not directly referenced
imul esi, edi, 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + esi + 0x12be], 2
jne loc_fffac0c0  ; jne 0xfffac0c0
imul eax, edi, 0x2fa
mov ebx, dword [ebp - 0x374]
lea eax, [ebx + eax + 5]
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x348], eax
lea ebx, [ebx + esi + 0x297c]
mov dword [ebp - 0x33c], ebx
xor ebx, ebx

loc_fffabf47:  ; not directly referenced
mov edx, dword [ebp + 8]
mov cl, bl
mov eax, 1
shl eax, cl
test byte [edx + esi + 0x3acb], al
je short loc_fffabf83  ; je 0xfffabf83
mov ecx, dword [ebp - 0x344]
and eax, 0xff
push 1
movzx edx, byte [ecx + ebx]
mov ecx, 4
push edx
mov edx, edi
push 1
push eax
mov eax, dword [ebp + 8]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffabf83:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffabf47  ; jne 0xfffabf47
xor bl, bl

loc_fffabf8b:  ; not directly referenced
mov eax, dword [ebp - 0x368]
mov edx, dword [ebp - 0x33c]
movzx esi, byte [eax + ebx]
movzx eax, byte [edx + ebx + 0x2fd]
sub esi, eax
je loc_fffac0b6  ; je 0xfffac0b6
push 1
mov cl, bl
mov eax, 1
push esi
shl eax, cl
mov edx, edi
and eax, 0xff
xor ecx, ecx
push eax
push dword [ebp - 0x340]
mov eax, dword [ebp + 8]
call fcn_fffafa3c  ; call 0xfffafa3c
mov eax, dword [ebp - 0x348]
mov edx, dword [ebp - 0x348]
add esp, 0x10
mov al, byte [eax + 0x2f2]
cmp byte [edx + ebx + 0x2ee], al
jne short loc_fffac040  ; jne 0xfffac040
mov edx, dword [ebp - 0x33c]
mov eax, esi
push 1
mov ecx, 2
add eax, dword [edx + 0x195]
mov edx, edi
push eax
mov eax, dword [ebp + 8]
push 1
push dword [ebp - 0x340]
call fcn_fffafa3c  ; call 0xfffafa3c
mov ecx, dword [ebp - 0x33c]
mov eax, esi
push 1
mov edx, edi
add eax, dword [ecx + 0x18d]
mov ecx, 3
push eax
mov eax, dword [ebp + 8]
push 1
push dword [ebp - 0x340]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20

loc_fffac040:  ; not directly referenced
mov eax, dword [ebp - 0x348]
mov edx, dword [ebp - 0x348]
mov dword [ebp - 0x36c], 1
mov al, byte [eax + 0x2f3]
cmp byte [edx + ebx + 0x2ee], al
jne short loc_fffac0b6  ; jne 0xfffac0b6
mov edx, dword [ebp - 0x33c]
mov eax, esi
push 1
mov ecx, 2
add eax, dword [edx + 0x199]
mov edx, edi
push eax
mov eax, dword [ebp + 8]
push 2
push dword [ebp - 0x340]
call fcn_fffafa3c  ; call 0xfffafa3c
mov ecx, dword [ebp - 0x33c]
mov edx, edi
push 1
mov eax, dword [ebp + 8]
add esi, dword [ecx + 0x1a1]
mov ecx, 1
push esi
push 2
push dword [ebp - 0x340]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20

loc_fffac0b6:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffabf8b  ; jne 0xfffabf8b

loc_fffac0c0:  ; not directly referenced
inc edi
add dword [ebp - 0x368], 2
add dword [ebp - 0x344], 2
cmp edi, 2
jne loc_fffabf05  ; jne 0xfffabf05
cmp dword [ebp - 0x36c], 0
je short loc_fffac104  ; je 0xfffac104
sub esp, 0xc
push dword [ebp + 8]
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0x10
jmp short loc_fffac104  ; jmp 0xfffac104

loc_fffac0f1:  ; not directly referenced
mov dword [ebp - 0x358], eax
cmp dword [ebp - 0x358], 0
jne loc_fffad341  ; jne 0xfffad341

loc_fffac104:  ; not directly referenced
mov ebx, dword [ebp + 8]
mov ecx, 0x7f
mov edx, 0x48
lea eax, [ebp - 0x2a8]
mov bl, byte [ebx + 0x176a]
mov byte [ebp - 0x348], bl
call mrc_setmem
xor ecx, ecx
mov edx, 0x48
lea eax, [ebp - 0x260]
call mrc_setmem
mov ebx, dword [ebp + 8]
mov eax, 0x3074
add ebx, 0x2974
mov dword [ebp - 0x33c], 0
mov dword [ebp - 0x344], ebx

loc_fffac158:  ; not directly referenced
imul edx, dword [ebp - 0x33c], 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + edx + 0x12be], 2
jne short loc_fffac1c8  ; jne 0xfffac1c8
mov edi, dword [ebp - 0x344]
lea esi, [edi + edx + 8]
lea edx, [eax - 0x3010]
mov dword [ebp - 0x340], edx
xor edx, edx
jmp short loc_fffac1a7  ; jmp 0xfffac1a7

loc_fffac18c:  ; not directly referenced
movzx edi, dl
inc edx
mov ecx, dword [esi + edi*4 + 0x169]
shl edi, 9
add edi, dword [ebp - 0x340]
add ebx, edi
or ecx, 0x60
mov dword [ebx], ecx

loc_fffac1a7:  ; not directly referenced
mov ebx, dword [ebp + 8]
cmp dl, byte [ebx + 0x1755]
mov ebx, dword [ebx + 0x103f]
jb short loc_fffac18c  ; jb 0xfffac18c
add ebx, eax
mov edx, dword [esi + 0x141]
or edx, 0x1000008
mov dword [ebx], edx

loc_fffac1c8:  ; not directly referenced
inc dword [ebp - 0x33c]
add eax, 0x100
cmp dword [ebp - 0x33c], 2
jne loc_fffac158  ; jne 0xfffac158
xor edi, edi

loc_fffac1e2:  ; not directly referenced
mov ecx, edi
mov ebx, 1
shl ebx, cl
test byte [ebp - 0x348], bl
jne short loc_fffac214  ; jne 0xfffac214

loc_fffac1f3:  ; not directly referenced
inc edi
cmp edi, 4
jne short loc_fffac1e2  ; jne 0xfffac1e2
mov ebx, dword [ebp + 8]
mov eax, 0x3074
add ebx, 0x2974
xor esi, esi
mov dword [ebp - 0x340], ebx
jmp near loc_fffac35f  ; jmp 0xfffac35f

loc_fffac214:  ; not directly referenced
movzx eax, bl
xor esi, esi
mov dword [ebp - 0x340], eax

loc_fffac21f:  ; not directly referenced
imul eax, esi, 0x1347
mov ecx, dword [ebp + 8]
mov byte [ebp - 0x33c], bl
test byte [ecx + eax + 0x3acb], bl
je short loc_fffac289  ; je 0xfffac289
mov ecx, esi
sub esp, 0xc
mov edx, 1
mov eax, dword [ebp + 8]
shl edx, cl
mov ecx, dword [ebp - 0x340]
push 0
and edx, 0xff
call fcn_fffc957e  ; call 0xfffc957e
add esp, 0x10
test eax, eax
jne loc_fffac65c  ; jne 0xfffac65c
sub esp, 0xc
mov ecx, edi
push 0
mov edx, esi
mov eax, dword [ebp + 8]
push 0x4000
push 0x3000
push 4
push ref_fffcc93c  ; push 0xfffcc93c
call fcn_fffc9445  ; call 0xfffc9445
add esp, 0x20

loc_fffac289:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffac21f  ; jne 0xfffac21f
push ecx
lea esi, [ebp - 0x2a8]
mov edx, edi
push ecx
mov eax, dword [ebp + 8]
mov ecx, 0x7f
push esi
and ebx, 0xff
push 2
call fcn_fffc9bf1  ; call 0xfffc9bf1
pop esi
pop eax
lea eax, [ebp - 0x260]
xor ecx, ecx
push eax
mov edx, edi
mov eax, dword [ebp + 8]
push 0xfffffffffffffffe
xor esi, esi
call fcn_fffc9bf1  ; call 0xfffc9bf1
add esp, 0x10

loc_fffac2cb:  ; not directly referenced
imul eax, esi, 0x1347
mov ecx, dword [ebp + 8]
mov dl, byte [ebp - 0x33c]
test byte [ecx + eax + 0x3acb], dl
jne short loc_fffac2ee  ; jne 0xfffac2ee

loc_fffac2e3:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffac2cb  ; jne 0xfffac2cb
jmp near loc_fffac1f3  ; jmp 0xfffac1f3

loc_fffac2ee:  ; not directly referenced
push 1
mov ecx, 2
mov edx, esi
push 0x60
mov eax, dword [ebp + 8]
push 3
push ebx
call fcn_fffafa3c  ; call 0xfffafa3c
push 1
mov ecx, 3
mov edx, esi
push 0x60
mov eax, dword [ebp + 8]
push 1
push ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20
mov ecx, 1
push 1
mov edx, esi
mov eax, dword [ebp + 8]
push 0x60
push 2
push ebx
call fcn_fffafa3c  ; call 0xfffafa3c
mov ecx, esi
mov edx, 1
mov eax, dword [ebp + 8]
mov dword [esp], 2
shl edx, cl
mov ecx, ebx
and edx, 0xff
call fcn_fffc957e  ; call 0xfffc957e
add esp, 0x10
test eax, eax
je short loc_fffac2e3  ; je 0xfffac2e3
jmp near loc_fffac65c  ; jmp 0xfffac65c

loc_fffac35f:  ; not directly referenced
imul edx, esi, 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + edx + 0x12be], 2
je short loc_fffac382  ; je 0xfffac382

loc_fffac375:  ; not directly referenced
inc esi
add eax, 0x100
cmp esi, 2
jne short loc_fffac35f  ; jne 0xfffac35f
jmp short loc_fffac3e7  ; jmp 0xfffac3e7

loc_fffac382:  ; not directly referenced
mov edi, dword [ebp - 0x340]
lea ebx, [edi + edx + 8]
mov edi, dword [ebp + 8]
mov edx, eax
mov ecx, dword [ebx + 0x141]
add edx, dword [edi + 0x103f]
mov dword [edx], ecx
lea ecx, [eax - 0x3010]
xor edx, edx
mov dword [ebp - 0x33c], ecx
jmp short loc_fffac3da  ; jmp 0xfffac3da

loc_fffac3af:  ; not directly referenced
movzx ecx, dl
inc edx
mov edi, dword [ebx + ecx*4 + 0x169]
shl ecx, 9
mov dword [ebp - 0x344], edi
mov edi, dword [ebp + 8]
add ecx, dword [ebp - 0x33c]
add ecx, dword [edi + 0x103f]
mov edi, dword [ebp - 0x344]
mov dword [ecx], edi

loc_fffac3da:  ; not directly referenced
mov ecx, dword [ebp + 8]
cmp dl, byte [ecx + 0x1755]
jb short loc_fffac3af  ; jb 0xfffac3af
jmp short loc_fffac375  ; jmp 0xfffac375

loc_fffac3e7:  ; not directly referenced
mov ecx, 0x7f
mov edx, 4
lea eax, [ebp - 0x2c8]
lea ebx, [ebp - 0x308]
call mrc_setmem
xor ecx, ecx
mov edx, 4
lea eax, [ebp - 0x2e8]
lea esi, [ebp - 0x2a8]
call mrc_setmem
mov eax, dword [ebp + 8]
mov dword [ebp - 0x340], ebx
add eax, 0x10b7
lea edi, [ebp - 0x260]
mov dword [ebp - 0x344], esi
mov dword [ebp - 0x368], edi
xor ebx, ebx
mov dword [ebp - 0x384], eax

loc_fffac442:  ; not directly referenced
imul eax, ebx, 0x1347
mov edx, dword [ebp - 0x380]
cmp dword [edx + eax + 0x12be], 2
jne loc_fffac598  ; jne 0xfffac598
imul edx, ebx, 0x2fa
mov edi, dword [ebp + 8]
mov esi, dword [ebp - 0x384]
mov dword [ebp - 0x33c], 0
mov al, byte [edi + eax + 0x3acb]
mov edi, dword [ebp - 0x344]
lea edx, [esi + edx + 5]
mov byte [ebp - 0x370], al
mov dword [ebp - 0x36c], edx
lea eax, [ebp + ebx*2 - 0x18]
mov esi, dword [ebp - 0x368]
mov dword [ebp - 0x378], eax

loc_fffac4a2:  ; not directly referenced
mov cl, byte [ebp - 0x33c]
mov eax, 1
shl eax, cl
test byte [ebp - 0x370], al
je short loc_fffac4d2  ; je 0xfffac4d2
mov eax, dword [ebp + 8]
mov dword [ebp - 0x37c], 0
mov al, byte [eax + 0x1755]
mov byte [ebp - 0x374], al
jmp short loc_fffac54c  ; jmp 0xfffac54c

loc_fffac4d2:  ; not directly referenced
inc dword [ebp - 0x33c]
add edi, 9
add esi, 9
cmp dword [ebp - 0x33c], 4
jne short loc_fffac4a2  ; jne 0xfffac4a2
jmp short loc_fffac55f  ; jmp 0xfffac55f

loc_fffac4e9:  ; not directly referenced
mov edx, dword [ebp - 0x36c]
mov cl, byte [ebp - 0x37c]
movzx eax, byte [edx + 0x2f2]
mov edx, dword [ebp - 0x37c]
sar eax, cl
and eax, 1
xor eax, 1
add eax, dword [ebp - 0x378]
mov dl, byte [edi + edx]
mov cl, byte [eax - 0x2b0]
cmp byte [eax - 0x2b0], dl
cmovbe edx, ecx
mov cl, byte [eax - 0x2d0]
mov byte [eax - 0x2b0], dl
mov edx, dword [ebp - 0x37c]
mov dl, byte [esi + edx]
cmp byte [eax - 0x2d0], dl
cmovae edx, ecx
inc dword [ebp - 0x37c]
mov byte [eax - 0x2d0], dl

loc_fffac54c:  ; not directly referenced
mov al, byte [ebp - 0x37c]
cmp byte [ebp - 0x374], al
ja short loc_fffac4e9  ; ja 0xfffac4e9
jmp near loc_fffac4d2  ; jmp 0xfffac4d2

loc_fffac55f:  ; not directly referenced
movzx edx, byte [ebp + ebx*2 - 0x2c8]
mov esi, dword [ebp - 0x340]
movzx eax, byte [ebp + ebx*2 - 0x2e8]
add eax, edx
mov edx, dword [ebp - 0x340]
sar eax, 1
mov byte [edx], al
movzx edx, byte [ebp + ebx*2 - 0x2c7]
movzx eax, byte [ebp + ebx*2 - 0x2e7]
add eax, edx
sar eax, 1
mov byte [esi + 1], al

loc_fffac598:  ; not directly referenced
inc ebx
add dword [ebp - 0x340], 2
add dword [ebp - 0x344], 0x24
add dword [ebp - 0x368], 0x24
cmp ebx, 2
jne loc_fffac442  ; jne 0xfffac442
movzx esi, byte [ebp - 0x348]
xor bl, bl

loc_fffac5c0:  ; not directly referenced
imul eax, ebx, 0x1347
mov edi, dword [ebp - 0x380]
cmp dword [edi + eax + 0x12be], 2
jne short loc_fffac650  ; jne 0xfffac650
push 1
movzx eax, byte [ebp + ebx*2 - 0x308]
mov ecx, 2
push eax
mov edx, ebx
mov eax, dword [ebp + 8]
push 1
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
push 1
movzx eax, byte [ebp + ebx*2 - 0x308]
mov ecx, 3
push eax
mov edx, ebx
mov eax, dword [ebp + 8]
push 1
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20
mov ecx, 2
push 1
movzx eax, byte [ebp + ebx*2 - 0x307]
mov edx, ebx
push eax
mov eax, dword [ebp + 8]
push 2
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
push 1
movzx eax, byte [ebp + ebx*2 - 0x307]
mov ecx, 1
push eax
mov edx, ebx
mov eax, dword [ebp + 8]
push 2
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20

loc_fffac650:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffac5c0  ; jne 0xfffac5c0
jmp short loc_fffac66f  ; jmp 0xfffac66f

loc_fffac65c:  ; not directly referenced
mov dword [ebp - 0x358], eax
cmp dword [ebp - 0x358], 0
jne loc_fffad341  ; jne 0xfffad341

loc_fffac66f:  ; not directly referenced
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x344], 0x4220
add ebx, 0xfd8
mov dword [ebp - 0x340], 0
mov dword [ebp - 0x394], ebx
mov ebx, dword [ebp + 8]
add ebx, 0x2974
mov dword [ebp - 0x398], ebx

loc_fffac6a1:  ; not directly referenced
imul eax, dword [ebp - 0x340], 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffaca27  ; jne 0xfffaca27
imul edx, dword [ebp - 0x340], 0x2fa
mov esi, dword [ebp - 0x394]
mov edi, dword [ebp - 0x398]
mov byte [ebp - 0x33c], 0
mov byte [ebp - 0x368], 0
xor ebx, ebx
lea eax, [edi + eax + 8]
lea ecx, [esi + edx + 0xe4]
mov dword [ebp - 0x378], eax
xor esi, esi
xor eax, eax

loc_fffac6fa:  ; not directly referenced
mov dl, byte [ecx + eax + 0x2a6]
cmp dl, 2
mov byte [ebp - 0x348], dl
je short loc_fffac73e  ; je 0xfffac73e
ja short loc_fffac721  ; ja 0xfffac721
mov dl, al
and edx, 7
cmp byte [ebp - 0x348], 0
mov edi, edx
cmove esi, edi
jmp short loc_fffac756  ; jmp 0xfffac756

loc_fffac721:  ; not directly referenced
cmp byte [ebp - 0x348], 4
je short loc_fffac74b  ; je 0xfffac74b
mov dl, al
and edx, 7
cmp byte [ebp - 0x348], 6
movzx edi, dl
cmove ebx, edi
jmp short loc_fffac756  ; jmp 0xfffac756

loc_fffac73e:  ; not directly referenced
mov dl, al
and edx, 7
mov byte [ebp - 0x33c], dl
jmp short loc_fffac756  ; jmp 0xfffac756

loc_fffac74b:  ; not directly referenced
mov dl, al
and edx, 7
mov byte [ebp - 0x368], dl

loc_fffac756:  ; not directly referenced
inc eax
cmp eax, 8
jne short loc_fffac6fa  ; jne 0xfffac6fa
mov al, byte [ebp - 0x33c]
mov dl, byte [ebp - 0x368]
and eax, 7
and edx, 7
shl eax, 0x1c
and esi, 7
mov dword [ebp - 0x33c], eax
mov eax, ebx
and eax, 7
mov dword [ebp - 0x388], ebx
shl edx, 0x18
mov byte [ebp - 0x348], 0
shl eax, 0x1c
xor edi, edi
shl esi, 0x18
or eax, edx
shr edx, 0x18
or dword [ebp - 0x33c], esi
mov ebx, esi
mov byte [ebp - 0x374], dl
mov dl, byte [ebp - 0x33c]
xor esi, esi
shr ebx, 0x18
and edx, 7
mov byte [ebp - 0x368], dl
mov byte [ebp - 0x36c], bl
movzx edx, bl
mov ebx, dword [ebp - 0x388]
lea edx, [ecx + edx*8]
mov dword [ebp - 0x384], edx
mov edx, dword [ebp - 0x33c]
mov byte [ebp - 0x37c], 0
shr edx, 0x1c
mov byte [ebp - 0x370], 0
lea edx, [ecx + edx*8]
mov dword [ebp - 0x390], edx
movzx edx, byte [ebp - 0x374]
lea edx, [ecx + edx*8]
lea ecx, [ecx + ebx*8]
mov dword [ebp - 0x38c], edx
mov dword [ebp - 0x388], ecx
xor edx, edx
xor ebx, ebx

loc_fffac813:  ; not directly referenced
mov ecx, dword [ebp - 0x384]
mov cl, byte [ecx + ebx + 0x2ae]
cmp cl, 1
mov byte [ebp - 0x39c], cl
je short loc_fffac83d  ; je 0xfffac83d
jb short loc_fffac835  ; jb 0xfffac835
cmp cl, 2
cmove esi, edx
jmp short loc_fffac843  ; jmp 0xfffac843

loc_fffac835:  ; not directly referenced
mov byte [ebp - 0x368], dl
jmp short loc_fffac843  ; jmp 0xfffac843

loc_fffac83d:  ; not directly referenced
mov byte [ebp - 0x348], dl

loc_fffac843:  ; not directly referenced
mov ecx, dword [ebp - 0x390]
mov cl, byte [ecx + ebx + 0x2ae]
cmp cl, 0x11
mov byte [ebp - 0x39c], cl
je short loc_fffac868  ; je 0xfffac868
cmp cl, 0x12
je short loc_fffac870  ; je 0xfffac870
cmp cl, 0x10
cmove edi, edx
jmp short loc_fffac876  ; jmp 0xfffac876

loc_fffac868:  ; not directly referenced
mov byte [ebp - 0x37c], dl
jmp short loc_fffac876  ; jmp 0xfffac876

loc_fffac870:  ; not directly referenced
mov byte [ebp - 0x370], dl

loc_fffac876:  ; not directly referenced
mov ecx, dword [ebp - 0x38c]
mov cl, byte [ecx + ebx + 0x2ae]
cmp cl, 0x21
mov byte [ebp - 0x39c], cl
je short loc_fffac8a2  ; je 0xfffac8a2
cmp cl, 0x22
je short loc_fffac8af  ; je 0xfffac8af
cmp cl, 0x20
jne short loc_fffac8bc  ; jne 0xfffac8bc
mov ecx, edx
and eax, 0xfffffff8
and ecx, 7
jmp short loc_fffac8ba  ; jmp 0xfffac8ba

loc_fffac8a2:  ; not directly referenced
mov ecx, edx
and eax, 0xffffff8f
and ecx, 7
shl ecx, 4
jmp short loc_fffac8ba  ; jmp 0xfffac8ba

loc_fffac8af:  ; not directly referenced
mov ecx, edx
and ah, 0xf8
and ecx, 7
shl ecx, 8

loc_fffac8ba:  ; not directly referenced
or eax, ecx

loc_fffac8bc:  ; not directly referenced
mov ecx, dword [ebp - 0x388]
mov cl, byte [ecx + ebx + 0x2ae]
cmp cl, 0x31
mov byte [ebp - 0x39c], cl
je short loc_fffac8eb  ; je 0xfffac8eb
cmp cl, 0x32
je short loc_fffac8fa  ; je 0xfffac8fa
cmp cl, 0x30
jne short loc_fffac909  ; jne 0xfffac909
mov ecx, edx
and ah, 0x8f
and ecx, 7
shl ecx, 0xc
jmp short loc_fffac907  ; jmp 0xfffac907

loc_fffac8eb:  ; not directly referenced
mov ecx, edx
and eax, 0xfff8ffff
and ecx, 7
shl ecx, 0x10
jmp short loc_fffac907  ; jmp 0xfffac907

loc_fffac8fa:  ; not directly referenced
mov ecx, edx
and eax, 0xff8fffff
and ecx, 7
shl ecx, 0x14

loc_fffac907:  ; not directly referenced
or eax, ecx

loc_fffac909:  ; not directly referenced
inc edx
inc ebx
and edx, 7
cmp ebx, 8
jne loc_fffac813  ; jne 0xfffac813
mov dl, byte [ebp - 0x348]
mov cl, byte [ebp - 0x368]
and edx, 7
and ecx, 7
shl edx, 4
or ecx, dword [ebp - 0x33c]
and esi, 7
or ecx, edx
shl esi, 8
and edi, 7
or ecx, esi
mov dl, byte [ebp - 0x37c]
shl edi, 0xc
and ecx, 0xfff88fff
and edx, 7
or ecx, edi
shl edx, 0x10
mov ebx, dword [ebp - 0x378]
or ecx, edx
mov dl, byte [ebp - 0x370]
and edx, 7
and ecx, 0xff8fffff
shl edx, 0x14
or ecx, edx
cmp byte [ebx + 0x1232], 0x20
jne loc_fffaca04  ; jne 0xfffaca04
mov dl, byte [ebp - 0x36c]
and ecx, 0x8fffffff
shl edx, 0x1c
and eax, 0x8fffffff
or ecx, edx
mov edx, ecx
and ch, 0x8f
and edx, 7
shl edx, 0xc
or ecx, edx
mov edx, ecx
and ecx, 0xfff8ffff
shl edx, 0xc
and edx, 0x70000
or ecx, edx
mov edx, ecx
and ecx, 0xff8fffff
shl edx, 0xc
and edx, 0x700000
or ecx, edx
mov dl, byte [ebp - 0x374]
shl edx, 0x1c
or eax, edx
mov edx, eax
and ah, 0x8f
and edx, 7
shl edx, 0xc
or eax, edx
mov edx, eax
and eax, 0xfff8ffff
shl edx, 0xc
and edx, 0x70000
or eax, edx
mov edx, eax
and eax, 0xff8fffff
shl edx, 0xc
and edx, 0x700000
or eax, edx

loc_fffaca04:  ; not directly referenced
mov ebx, dword [ebp + 8]
mov edx, dword [ebp - 0x344]
mov esi, dword [ebp - 0x344]
add edx, dword [ebx + 0x103f]
mov dword [edx], ecx
mov edx, dword [ebx + 0x103f]
lea edx, [esi + edx + 4]
mov dword [edx], eax

loc_fffaca27:  ; not directly referenced
inc dword [ebp - 0x340]
add dword [ebp - 0x344], 0x400
cmp dword [ebp - 0x340], 2
jne loc_fffac6a1  ; jne 0xfffac6a1
mov ebx, dword [ebp + 8]
mov byte [ebx + 0x1744], 1
jmp near loc_fffad341  ; jmp 0xfffad341

loc_fffaca53:  ; not directly referenced
imul esi, edi, 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + esi + 0x12be], 2
jne loc_fffacafd  ; jne 0xfffacafd
mov ebx, dword [ebp - 0x368]
mov byte [ebp - 0x358], 0
lea ebx, [ebx + esi + 8]
mov dword [ebp - 0x340], ebx
jmp short loc_fffacad9  ; jmp 0xfffacad9

loc_fffaca86:  ; not directly referenced
movzx eax, byte [ebp - 0x358]
xor ebx, ebx
mov dword [ebp - 0x344], eax

loc_fffaca95:  ; not directly referenced
mov edx, dword [ebp + 8]
mov cl, bl
mov eax, 1
shl eax, cl
test byte [edx + esi + 0x3acb], al
je short loc_fffacacd  ; je 0xfffacacd
cmp byte [edx + 0x102c], 1
jne short loc_fffacacd  ; jne 0xfffacacd
push edx
mov ecx, ebx
mov edx, edi
push 0x20
mov eax, dword [ebp + 8]
push 5
push dword [ebp - 0x344]
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10

loc_fffacacd:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffaca95  ; jne 0xfffaca95
inc byte [ebp - 0x358]

loc_fffacad9:  ; not directly referenced
mov ebx, dword [ebp + 8]
movzx ecx, byte [ebx + 0x1755]
cmp byte [ebp - 0x358], cl
jb short loc_fffaca86  ; jb 0xfffaca86
mov eax, dword [ebp - 0x340]
xor edx, edx
add eax, 0xf9
call mrc_fillword

loc_fffacafd:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffaca53  ; jne 0xfffaca53
movzx edx, byte [ebp - 0x33c]
mov eax, dword [ebp + 8]
call fcn_fffc58d3  ; call 0xfffc58d3
mov ebx, dword [ebp + 8]
mov byte [ebp - 0x358], 0
add ebx, 0x2974
mov dword [ebp - 0x384], ebx

loc_fffacb2c:  ; not directly referenced
mov dl, byte [ebp - 0x358]
sub esp, 0xc
and edx, 0x7f
mov ebx, edx
mov eax, edx
shl ebx, 0xe
mov ecx, edx
shl eax, 0x15
shl ecx, 7
or eax, ebx
mov ebx, dword [ebp + 8]
or eax, ecx
or eax, edx
mov edx, dword [ebx + 0x103f]
mov dword [edx + 0x390c], eax
push ebx
call fcn_fffbd7da  ; call 0xfffbd7da
mov al, byte [ebp - 0x358]
add esp, 0x10
movzx esi, byte [ebp - 0x358]
mov dword [ebp - 0x374], 0
shr al, 1
mov dword [ebp - 0x344], esi
movzx eax, al
sub esi, 2
lea eax, [ebp + eax*8 - 0x218]
mov dword [ebp - 0x378], esi
mov dword [ebp - 0x368], eax

loc_fffacb9d:  ; not directly referenced
mov cl, byte [ebp - 0x374]
mov esi, 1
shl esi, cl
mov ebx, esi
test byte [ebp - 0x388], bl
je loc_fffad153  ; je 0xfffad153
mov edi, esi
xor ebx, ebx
and edi, 0xff

loc_fffacbc2:  ; not directly referenced
mov ecx, edi
mov edx, ebx
mov eax, dword [ebp + 8]
call fcn_fffc41bb  ; call 0xfffc41bb
imul eax, ebx, 0x1347
mov ecx, dword [ebp + 8]
mov edx, esi
mov dword [ebp + ebx*4 - 0x338], 0
mov dword [ebp + ebx*4 - 0x330], 0
test byte [ecx + eax + 0x3acb], dl
je short loc_fffacc2b  ; je 0xfffacc2b
push eax
mov ecx, edi
mov edx, ebx
push eax
mov eax, dword [ebp + 8]
push 4
push 3
call fcn_fffb96d4  ; call 0xfffb96d4
mov ecx, dword [ebp + 8]
mov edx, ebx
shl edx, 0xa
add esp, 0x10
mov eax, dword [ecx + 0x103f]
lea edx, [edx + eax + 0x4194]
mov eax, dword [edx]
or eax, 0x80000000
mov dword [edx], eax

loc_fffacc2b:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffacbc2  ; jne 0xfffacbc2
mov ebx, esi
mov eax, 1
mov byte [ebp - 0x33c], bl
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x348], 0xffffffe0
movzx ecx, byte [ebx + 0x1755]
shl eax, cl
dec eax
mov dword [ebp - 0x340], eax

loc_fffacc5b:  ; not directly referenced
push 1
mov al, byte [ebp - 0x348]
mov ecx, dword [ebp - 0x348]
push 0
mov byte [ebp - 0x36c], al
mov edx, 1
push 0
mov eax, dword [ebp + 8]
xor ebx, ebx
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffacc8f:  ; not directly referenced
imul eax, ebx, 0x1347
mov ecx, dword [ebp + 8]
mov dl, byte [ebp - 0x33c]
test byte [ecx + eax + 0x3acb], dl
je short loc_fffacd0f  ; je 0xfffacd0f
mov edi, dword [ebp - 0x384]
lea esi, [edi + eax + 8]
mov eax, ebx
shl eax, 8
mov dword [ebp - 0x370], eax
add eax, 0x64
mov dword [ebp - 0x37c], eax
xor eax, eax
jmp short loc_fffacce4  ; jmp 0xfffacce4

loc_fffaccc9:  ; not directly referenced
movzx edi, al
inc eax
mov edx, dword [esi + edi*4 + 0x169]
shl edi, 9
add edi, dword [ebp - 0x37c]
add ecx, edi
or edx, 0x60
mov dword [ecx], edx

loc_fffacce4:  ; not directly referenced
mov edx, dword [ebp + 8]
cmp al, byte [edx + 0x1755]
mov ecx, dword [edx + 0x103f]
jb short loc_fffaccc9  ; jb 0xfffaccc9
mov eax, dword [esi + 0x141]
mov esi, dword [ebp - 0x370]
or eax, 0x1000001
lea edx, [esi + ecx + 0x3074]
mov dword [edx], eax

loc_fffacd0f:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffacc8f  ; jne 0xfffacc8f
mov eax, dword [ebp + 8]
mov edi, 1
call wait_5030
mov ebx, dword [ebp + 8]
mov edx, 2
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4800], 5
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
mov eax, ebx
call wait_5030
mov eax, ebx
mov edx, 2
call fcn_fffb2d76  ; call 0xfffb2d76
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4800], 2
xor eax, eax

loc_fffacd6a:  ; not directly referenced
imul edx, eax, 0x1347
mov esi, dword [ebp + 8]
mov bl, byte [ebp - 0x33c]
test byte [esi + edx + 0x3acb], bl
je short loc_fffacdf0  ; je 0xfffacdf0
mov dl, byte [esi + 0x1755]
xor ecx, ecx
mov byte [ebp - 0x370], dl
mov edx, eax
shl edx, 8
add edx, 0x54
jmp short loc_fffacdc5  ; jmp 0xfffacdc5

loc_fffacd9a:  ; not directly referenced
mov esi, dword [ebp + 8]
mov ebx, edx
add ebx, dword [esi + 0x103f]
mov esi, edi
shl esi, cl
mov ebx, dword [ebx]
dec ebx
jne short loc_fffacdb7  ; jne 0xfffacdb7
or dword [ebp + eax*4 - 0x338], esi
jmp short loc_fffacdbe  ; jmp 0xfffacdbe

loc_fffacdb7:  ; not directly referenced
or dword [ebp + eax*4 - 0x330], esi

loc_fffacdbe:  ; not directly referenced
inc ecx
add edx, 0x200

loc_fffacdc5:  ; not directly referenced
cmp byte [ebp - 0x370], cl
ja short loc_fffacd9a  ; ja 0xfffacd9a
mov ebx, dword [ebp - 0x340]
cmp dword [ebp + eax*4 - 0x338], ebx
jne short loc_fffacdf0  ; jne 0xfffacdf0
mov esi, dword [ebp - 0x368]
mov bl, byte [ebp - 0x36c]
cmp byte [esi + eax*4], bl
jle short loc_fffacdf0  ; jle 0xfffacdf0
mov byte [esi + eax*4], bl

loc_fffacdf0:  ; not directly referenced
inc eax
cmp eax, 2
jne loc_fffacd6a  ; jne 0xfffacd6a
xor edi, edi

loc_fffacdfc:  ; not directly referenced
imul eax, edi, 0x1347
mov esi, dword [ebp + 8]
mov bl, byte [ebp - 0x33c]
test byte [esi + eax + 0x3acb], bl
je short loc_ffface85  ; je 0xffface85
mov ebx, dword [ebp - 0x384]
lea esi, [ebx + eax + 8]
mov ebx, edi
shl ebx, 8
lea eax, [ebx + 0x64]
mov dword [ebp - 0x36c], eax
xor eax, eax
jmp short loc_ffface5b  ; jmp 0xffface5b

loc_ffface30:  ; not directly referenced
movzx edx, al
inc eax
mov ecx, dword [esi + edx*4 + 0x169]
shl edx, 9
mov dword [ebp - 0x370], ecx
mov ecx, dword [ebp + 8]
add edx, dword [ebp - 0x36c]
add edx, dword [ecx + 0x103f]
mov ecx, dword [ebp - 0x370]
mov dword [edx], ecx

loc_ffface5b:  ; not directly referenced
mov edx, dword [ebp + 8]
cmp al, byte [edx + 0x1755]
jb short loc_ffface30  ; jb 0xffface30
mov eax, edx
call wait_5030
mov ecx, dword [ebp + 8]
mov eax, dword [esi + 0x141]
mov edx, dword [ecx + 0x103f]
lea edx, [ebx + edx + 0x3074]
mov dword [edx], eax

loc_ffface85:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffacdfc  ; jne 0xfffacdfc
mov esi, dword [ebp + 8]
mov bl, byte [ebp - 0x33c]
test byte [esi + 0x3acb], bl
je short loc_fffacebe  ; je 0xfffacebe
mov edi, dword [ebp - 0x340]
cmp dword [ebp - 0x338], edi
jne loc_fffad328  ; jne 0xfffad328
cmp dword [ebp - 0x330], edi
jne loc_fffad328  ; jne 0xfffad328

loc_fffacebe:  ; not directly referenced
mov esi, dword [ebp + 8]
mov bl, byte [ebp - 0x33c]
test byte [esi + 0x4e12], bl
je short loc_fffaceed  ; je 0xfffaceed
mov edi, dword [ebp - 0x340]
cmp dword [ebp - 0x334], edi
jne loc_fffad328  ; jne 0xfffad328
cmp dword [ebp - 0x32c], edi
jne loc_fffad328  ; jne 0xfffad328

loc_fffaceed:  ; not directly referenced
mov edx, dword [ebp - 0x374]
xor edi, edi
shl edx, 2
lea eax, [ebp + edx - 0x328]
lea ecx, [ebp + edx - 0x2e8]
lea esi, [ebp + edx - 0x2a8]
mov dword [ebp - 0x370], eax
lea ebx, [ebp + edx - 0x308]
lea eax, [ebp + edx - 0x2c8]
mov dword [ebp - 0x348], ecx
lea edx, [ebp + edx - 0x260]
mov dword [ebp - 0x36c], esi
mov dword [ebp - 0x394], edx

loc_fffacf3a:  ; not directly referenced
imul edx, edi, 0x1347
mov esi, dword [ebp + 8]
mov cl, byte [ebp - 0x33c]
test byte [esi + edx + 0x3acb], cl
je loc_fffad0d7  ; je 0xfffad0d7
xor ecx, ecx
mov esi, dword [ebp - 0x340]
cmp dword [ebp + edi*4 - 0x338], esi
jne short loc_fffacf73  ; jne 0xfffacf73
xor ecx, ecx
cmp dword [ebp + edi*4 - 0x330], esi
sete cl

loc_fffacf73:  ; not directly referenced
cmp byte [ebp - 0x358], 0
setne dl
test dl, cl
je short loc_fffacfa0  ; je 0xfffacfa0
mov esi, dword [ebp - 0x368]
movsx edx, byte [esi + edi*4]
movsx esi, byte [esi + edi*4 - 8]
sub edx, esi
cmp edx, 0x10
setle dl
movzx edx, dl
jmp near loc_fffad035  ; jmp 0xfffad035

loc_fffacfa0:  ; not directly referenced
cmp byte [ebp - 0x358], 0
mov edx, ecx
jne loc_fffad035  ; jne 0xfffad035
test ecx, ecx
je short loc_fffacff4  ; je 0xfffacff4
mov edx, dword [ebp - 0x370]
mov ecx, dword [ebp - 0x348]
mov esi, dword [ebp - 0x36c]
mov dword [ebx], 0
mov dword [eax], 0
mov dword [edx], 0
mov edx, dword [ebp - 0x394]
mov dword [ecx], 0
mov dword [esi], 0
mov dword [edx], 0
jmp near loc_fffad0d7  ; jmp 0xfffad0d7

loc_fffacff4:  ; not directly referenced
mov ecx, dword [ebp - 0x370]
mov esi, dword [ebp - 0x348]
mov edx, dword [ebp - 0x36c]
mov dword [ebx], 0xfffffffe
mov dword [eax], 0xfffffffe
mov dword [ecx], 0xfffffffe
mov ecx, dword [ebp - 0x394]
mov dword [esi], 0xfffffffe
mov dword [edx], 0xfffffffe
mov dword [ecx], 0xfffffffe
jmp near loc_fffad0d7  ; jmp 0xfffad0d7

loc_fffad035:  ; not directly referenced
test edx, edx
je loc_fffad0d7  ; je 0xfffad0d7
mov esi, dword [ebp - 0x378]
cmp dword [ebx], esi
jne short loc_fffad04f  ; jne 0xfffad04f
mov esi, dword [ebp - 0x344]
mov dword [ebx], esi

loc_fffad04f:  ; not directly referenced
mov esi, dword [ebp - 0x378]
cmp dword [eax], esi
mov esi, dword [ebp - 0x344]
jne short loc_fffad061  ; jne 0xfffad061
jmp short loc_fffad069  ; jmp 0xfffad069

loc_fffad061:  ; not directly referenced
mov edx, dword [ebp - 0x348]
mov dword [edx], esi

loc_fffad069:  ; not directly referenced
mov dword [eax], esi
cmp byte [ebp - 0x358], 0x7e
jne short loc_fffad095  ; jne 0xfffad095
mov edx, dword [ebp - 0x370]
cmp dword [edx], 0
jne short loc_fffad095  ; jne 0xfffad095
mov edx, dword [ebx]
cmp edx, dword [ebp - 0x344]
je short loc_fffad095  ; je 0xfffad095
mov esi, dword [ebp - 0x344]
lea edx, [edx + esi + 2]
mov dword [eax], edx

loc_fffad095:  ; not directly referenced
mov edx, dword [ebp - 0x348]
mov esi, dword [eax]
mov ecx, esi
mov edx, dword [edx]
sub ecx, edx
mov dword [ebp - 0x37c], edx
mov dword [ebp - 0x38c], ecx
mov ecx, dword [ebp - 0x394]
mov edx, dword [ecx]
mov ecx, dword [ebp - 0x36c]
sub edx, dword [ecx]
cmp dword [ebp - 0x38c], edx
jle short loc_fffad0d7  ; jle 0xfffad0d7
mov edx, dword [ebp - 0x37c]
mov dword [ecx], edx
mov ecx, dword [ebp - 0x394]
mov dword [ecx], esi

loc_fffad0d7:  ; not directly referenced
inc edi
add dword [ebp - 0x370], 0x10
add ebx, 0x10
add dword [ebp - 0x348], 0x10
add eax, 0x10
add dword [ebp - 0x36c], 0x10
add dword [ebp - 0x394], 0x10
cmp edi, 2
jne loc_fffacf3a  ; jne 0xfffacf3a
mov esi, dword [ebp + 8]
mov bl, byte [ebp - 0x33c]
test byte [esi + 0x3acb], bl
je short loc_fffad12b  ; je 0xfffad12b
mov edx, dword [esi + 0x103f]
mov eax, dword [edx + 0x4194]
and eax, 0x7fffffff
mov dword [edx + 0x4194], eax

loc_fffad12b:  ; not directly referenced
mov esi, dword [ebp + 8]
mov bl, byte [ebp - 0x33c]
test byte [esi + 0x4e12], bl
je short loc_fffad153  ; je 0xfffad153
mov edx, dword [esi + 0x103f]
mov eax, dword [edx + 0x4594]
and eax, 0x7fffffff
mov dword [edx + 0x4594], eax

loc_fffad153:  ; not directly referenced
inc dword [ebp - 0x374]
inc dword [ebp - 0x368]
cmp dword [ebp - 0x374], 4
jne loc_fffacb9d  ; jne 0xfffacb9d
add byte [ebp - 0x358], 2
cmp byte [ebp - 0x358], 0x80
jne loc_fffacb2c  ; jne 0xfffacb2c
lea ebx, [ebp - 0x2a8]
mov dword [ebp - 0x340], ebx
mov ebx, dword [ebp + 8]
lea edi, [ebp - 0x260]
add ebx, 0x2974
xor esi, esi
mov dword [ebp - 0x370], ebx

loc_fffad1a3:  ; not directly referenced
imul eax, esi, 0x1347
mov ebx, dword [ebp - 0x380]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffad2d3  ; jne 0xfffad2d3
mov ebx, dword [ebp - 0x370]
mov byte [ebp - 0x348], 0
xor edx, edx
mov byte [ebp - 0x368], 0
mov byte [ebp - 0x344], 0
xor ecx, ecx
lea ebx, [ebx + eax + 8]
mov dword [ebp - 0x36c], ebx
mov ebx, dword [ebp + 8]
mov al, byte [ebx + eax + 0x3acb]
mov byte [ebp - 0x374], al

loc_fffad1f6:  ; not directly referenced
mov ebx, 1
mov al, cl
shl ebx, cl
test byte [ebp - 0x374], bl
je short loc_fffad270  ; je 0xfffad270
mov ebx, dword [ebp - 0x340]
mov ebx, dword [ebx + ecx*4]
mov dword [ebp - 0x33c], ebx
mov ebx, dword [edi + ecx*4]
sub ebx, dword [ebp - 0x33c]
mov dword [ebp - 0x358], ebx
je loc_fffad31c  ; je 0xfffad31c
cmp dword [ebp - 0x358], 0x10
mov bl, 0x40
jle short loc_fffad244  ; jle 0xfffad244
mov ebx, dword [ebp - 0x358]
sar ebx, 1
add ebx, dword [ebp - 0x33c]

loc_fffad244:  ; not directly referenced
cmp al, 2
je short loc_fffad263  ; je 0xfffad263
and ebx, 0x7f
cmp al, 3
je short loc_fffad26a  ; je 0xfffad26a
dec al
je short loc_fffad25b  ; je 0xfffad25b
mov byte [ebp - 0x344], bl
jmp short loc_fffad270  ; jmp 0xfffad270

loc_fffad25b:  ; not directly referenced
mov byte [ebp - 0x368], bl
jmp short loc_fffad270  ; jmp 0xfffad270

loc_fffad263:  ; not directly referenced
mov dl, bl
and edx, 0x7f
jmp short loc_fffad270  ; jmp 0xfffad270

loc_fffad26a:  ; not directly referenced
mov byte [ebp - 0x348], bl

loc_fffad270:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffad1f6  ; jne 0xfffad1f6
mov al, byte [ebp - 0x348]
mov ebx, dword [ebp + 8]
and eax, 0x7f
and edx, 0x7f
shl edx, 0xe
mov cl, byte [ebp - 0x368]
shl eax, 0x15
and ecx, 0x7f
shl ecx, 7
or eax, edx
mov dl, byte [ebp - 0x344]
or eax, ecx
and edx, 0x7f
mov ecx, esi
shl ecx, 8
or eax, edx
mov edx, dword [ebx + 0x103f]
lea edx, [ecx + edx + 0x180c]
mov dword [edx], eax
mov eax, dword [ebp - 0x36c]
movzx ecx, byte [ebx + 0x1755]
add eax, 0xf9
xor edx, edx
call mrc_fillword

loc_fffad2d3:  ; not directly referenced
inc esi
add edi, 0x10
add dword [ebp - 0x340], 0x10
cmp esi, 2
jne loc_fffad1a3  ; jne 0xfffad1a3
push 2
xor ecx, ecx
mov edx, 1
push 0
mov eax, dword [ebp + 8]
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x14
push dword [ebp + 8]
call fcn_fffbd7da  ; call 0xfffbd7da
mov dword [ebp - 0x358], eax
add esp, 0x10
jmp short loc_fffad341  ; jmp 0xfffad341

loc_fffad31c:  ; not directly referenced
mov dword [ebp - 0x358], 6
jmp short loc_fffad341  ; jmp 0xfffad341

loc_fffad328:  ; not directly referenced
add dword [ebp - 0x348], 8
cmp dword [ebp - 0x348], 0x20
jne loc_fffacc5b  ; jne 0xfffacc5b
jmp near loc_fffaceed  ; jmp 0xfffaceed

loc_fffad341:  ; not directly referenced
mov eax, dword [ebp - 0x358]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffad34f:
db 0x00

fcn_fffad350:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, edx
push ebx
mov ebx, eax
lea esp, [esp - 0x4c]
mov byte [ebp - 0x2a], cl
mov al, byte [ebp + 8]
mov dl, byte [ebp + 0xc]
mov cl, byte [ebp + 0x18]
mov byte [ebp - 0x2c], al
mov byte [ebp - 0x48], dl
mov byte [ebp - 0x2b], cl
mov edx, 2
xor ecx, ecx
lea eax, [ebp - 0x21]
mov edi, dword [ebp + 0x10]
call mrc_setmem
mov ecx, 1
mov edx, 7
lea eax, [ebp - 0x1f]
call mrc_setmem
movzx eax, byte [ebp - 0x2a]
mov dl, byte [ebp - 0x48]
shr edx, 1
mov dword [ebp - 0x30], eax
sar eax, 1
and edx, 1
and eax, 1
mov dword [ebp - 0x38], edx
movzx ecx, byte [ebp - 0x2b]
mov dword [ebp - 0x34], eax
mov eax, esi
mov dword [ebp - 0x50], ecx
movzx esi, al
mov dword [ebp - 0x4c], esi
jmp near loc_fffad512  ; jmp 0xfffad512

loc_fffad3c5:  ; not directly referenced
mov edx, dword [ebp - 0x30]
bt edx, esi
jae short loc_fffad43d  ; jae 0xfffad43d
movzx eax, byte [edi + esi]
mov ecx, dword [ebp + 0x14]
movzx edx, byte [ecx + esi]
mov cl, byte [ebp - 0x2c]
add eax, edx
add eax, dword [ebp - 0x50]
imul edx, esi, 0x1347
sar eax, 1
mov byte [ebp + esi - 0x21], al
and cl, byte [ebx + edx + 0x3acb]
test byte [ebp - 0x48], 1
mov byte [ebp - 0x29], cl
je short loc_fffad419  ; je 0xfffad419
push 0
and eax, 0xff
mov edx, esi
push eax
movzx eax, cl
mov ecx, dword [ebp - 0x4c]
push 1
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffad419:  ; not directly referenced
cmp dword [ebp - 0x38], 0
je short loc_fffad43d  ; je 0xfffad43d
push 0
movzx eax, byte [ebp + esi - 0x21]
mov ecx, dword [ebp - 0x4c]
push eax
movzx eax, byte [ebp - 0x29]
mov edx, esi
push 2
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffad43d:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffad3c5  ; jne 0xfffad3c5
sub esp, 0xc
xor si, si
push ebx
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0x10
mov byte [ebp - 0x29], 0

loc_fffad456:  ; not directly referenced
push edx
xor ecx, ecx
push edx
mov edx, dword [ebp + 0x1c]
push 0
movsx eax, byte [edx + esi]
mov edx, 2
push eax
mov eax, ebx
call fcn_fffafeda  ; call 0xfffafeda
add esp, 0xc
lea eax, [ebp - 0x1f]
push 0
movzx ecx, byte [ebx + 0x1768]
mov edx, dword [ebp - 0x30]
push 1
push eax
mov eax, ebx
call fcn_fffb21f3  ; call 0xfffb21f3
add esp, 0x10
or byte [ebp - 0x29], al
mov dl, byte [ebp - 0x2a]
cmp byte [ebp - 0x29], dl
jne short loc_fffad49e  ; jne 0xfffad49e

loc_fffad49a:  ; not directly referenced
xor ecx, ecx
jmp short loc_fffad4a6  ; jmp 0xfffad4a6

loc_fffad49e:  ; not directly referenced
inc esi
cmp esi, 2
je short loc_fffad49a  ; je 0xfffad49a
jmp short loc_fffad456  ; jmp 0xfffad456

loc_fffad4a6:  ; not directly referenced
mov edx, 1
shl edx, cl
test byte [ebp - 0x2a], dl
je short loc_fffad4e5  ; je 0xfffad4e5
mov esi, dword [ebp + 0x14]
mov al, byte [edi + ecx]
cmp byte [esi + ecx], al
jbe short loc_fffad4e5  ; jbe 0xfffad4e5
and dl, byte [ebp - 0x29]
cmp byte [ebp - 0x2b], 0
je short loc_fffad4d1  ; je 0xfffad4d1
test dl, dl
mov dl, byte [ebp + ecx - 0x21]
je short loc_fffad4da  ; je 0xfffad4da
dec edx
jmp short loc_fffad4e2  ; jmp 0xfffad4e2

loc_fffad4d1:  ; not directly referenced
test dl, dl
mov dl, byte [ebp + ecx - 0x21]
je short loc_fffad4df  ; je 0xfffad4df
inc edx

loc_fffad4da:  ; not directly referenced
mov byte [edi + ecx], dl
jmp short loc_fffad4e5  ; jmp 0xfffad4e5

loc_fffad4df:  ; not directly referenced
mov esi, dword [ebp + 0x14]

loc_fffad4e2:  ; not directly referenced
mov byte [esi + ecx], dl

loc_fffad4e5:  ; not directly referenced
inc ecx
cmp ecx, 2
jne short loc_fffad4a6  ; jne 0xfffad4a6
test byte [ebp - 0x2a], 1
mov al, 1
je short loc_fffad4fd  ; je 0xfffad4fd
mov esi, dword [ebp + 0x14]
mov al, byte [edi]
cmp byte [esi], al
setbe al

loc_fffad4fd:  ; not directly referenced
cmp dword [ebp - 0x34], 0
je short loc_fffad50e  ; je 0xfffad50e
mov esi, dword [ebp + 0x14]
mov dl, byte [edi + 1]
cmp byte [esi + 1], dl
ja short loc_fffad512  ; ja 0xfffad512

loc_fffad50e:  ; not directly referenced
test al, al
jne short loc_fffad519  ; jne 0xfffad519

loc_fffad512:  ; not directly referenced
xor esi, esi
jmp near loc_fffad3c5  ; jmp 0xfffad3c5

loc_fffad519:  ; not directly referenced
push eax
xor ecx, ecx
mov edx, 2
push eax
mov eax, ebx
push 0
push 0
call fcn_fffafeda  ; call 0xfffafeda
mov dword [esp], ebx
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0x10
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffad540:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x2c]
mov dword [ebp - 0x2c], eax
mov al, byte [ebp + 8]
mov byte [ebp - 0x34], dl
mov byte [ebp - 0x35], cl
mov byte [ebp - 0x30], al
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x24]
mov ebx, dword [ebp + 0xc]
mov byte [ebp - 0x1a], 0xf8
mov byte [ebp - 0x19], 8
call mrc_setmem
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x22]
call mrc_setmem
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x1e]
call mrc_setmem
mov ecx, 0x7f
mov edx, 2
lea eax, [ebp - 0x1c]
call mrc_setmem
movzx esi, byte [ebp - 0x35]
xor edx, edx
mov ecx, esi
mov eax, dword [ebp - 0x2c]
call fcn_fffc41bb  ; call 0xfffc41bb
test ebx, ebx
mov edi, eax
je short loc_fffad5be  ; je 0xfffad5be
mov al, byte [ebx]
mov byte [ebp - 0x20], al

loc_fffad5be:  ; not directly referenced
mov ecx, esi
mov edx, 1
mov eax, dword [ebp - 0x2c]
call fcn_fffc41bb  ; call 0xfffc41bb
or eax, edi
test ebx, ebx
je short loc_fffad5d9  ; je 0xfffad5d9
mov dl, byte [ebx + 1]
mov byte [ebp - 0x1f], dl

loc_fffad5d9:  ; not directly referenced
cmp byte [ebp - 0x34], 0
jne short loc_fffad60d  ; jne 0xfffad60d
push edx
movzx ecx, al
lea eax, [ebp - 0x1a]
push 0
xor edx, edx
push 0
push eax
movzx eax, byte [ebp - 0x1c]
push eax
movsx eax, byte [ebp - 0x1e]
push eax
movzx eax, byte [ebp - 0x30]
push eax
mov eax, dword [ebp - 0x2c]
push esi
call fcn_fffc13c0  ; call 0xfffc13c0
add esp, 0x20
jmp near loc_fffad6e9  ; jmp 0xfffad6e9

loc_fffad60d:  ; not directly referenced
movzx eax, al
movzx edi, byte [ebp - 0x30]
mov dword [ebp - 0x30], eax
push eax
movzx ecx, byte [ebp - 0x34]
push eax
lea eax, [ebp - 0x1a]
mov dword [ebp - 0x34], ecx
push eax
lea eax, [ebp - 0x20]
mov ecx, dword [ebp - 0x30]
push 0
mov edx, dword [ebp - 0x34]
push eax
lea eax, [ebp - 0x1e]
push eax
mov eax, dword [ebp - 0x2c]
push edi
push esi
call fcn_fffad350  ; call 0xfffad350
mov al, byte [ebp - 0x20]
add esp, 0x20
mov byte [ebp - 0x24], al
test ebx, ebx
mov al, byte [ebp - 0x1f]
mov byte [ebp - 0x23], al
je short loc_fffad65c  ; je 0xfffad65c
mov al, byte [ebx]
mov byte [ebp - 0x20], al
mov al, byte [ebx + 1]
mov byte [ebp - 0x1f], al

loc_fffad65c:  ; not directly referenced
push ecx
lea eax, [ebp - 0x1a]
mov edx, dword [ebp - 0x34]
push ecx
mov ecx, dword [ebp - 0x30]
push eax
lea eax, [ebp - 0x1c]
push 1
push eax
lea eax, [ebp - 0x20]
push eax
mov eax, dword [ebp - 0x2c]
push edi
push esi
xor esi, esi
call fcn_fffad350  ; call 0xfffad350
mov al, byte [ebp - 0x20]
add esp, 0x20
mov byte [ebp - 0x22], al
mov al, byte [ebp - 0x1f]
mov byte [ebp - 0x21], al

loc_fffad68d:  ; not directly referenced
mov eax, dword [ebp - 0x30]
bt eax, esi
jae short loc_fffad6e3  ; jae 0xfffad6e3
imul eax, esi, 0x1347
mov ecx, dword [ebp - 0x2c]
mov dl, byte [ebp - 0x35]
and dl, byte [ecx + eax + 0x3acb]
movzx eax, byte [ebp + esi - 0x22]
cmp al, 0x7f
jne short loc_fffad6bd  ; jne 0xfffad6bd
cmp byte [ebp + esi - 0x24], 0
jne short loc_fffad6bd  ; jne 0xfffad6bd
mov al, byte [ebx + esi]
jmp short loc_fffad6c8  ; jmp 0xfffad6c8

loc_fffad6bd:  ; not directly referenced
movzx ecx, byte [ebp + esi - 0x24]
lea eax, [ecx + eax + 1]
shr eax, 1

loc_fffad6c8:  ; not directly referenced
push 1
movzx eax, al
mov ecx, dword [ebp - 0x34]
push eax
movzx eax, dl
mov edx, esi
push edi
push eax
mov eax, dword [ebp - 0x2c]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffad6e3:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffad68d  ; jne 0xfffad68d

loc_fffad6e9:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffad6f1:  ; not directly referenced
push ebp
xor edx, edx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x4c]
mov ebx, dword [ebp + 8]
cmp dword [ebx + 0x1749], 2
lea eax, [ebx + 0x16be]
sete dl
mov dword [ebp - 0x40], eax
mov dword [ebp - 0x44], edx
mov al, byte [ebx + 0x176a]
cmp dword [ebp - 0x44], 0
mov ecx, dword [ebx + 0x1021]
movzx edx, byte [ebx + 0x176b]
mov byte [ebp - 0x2c], al
jne short loc_fffad753  ; jne 0xfffad753
cmp dword [ebx + 0x297c], 2
je loc_fffad81a  ; je 0xfffad81a
cmp dword [ebx + 0x3cc3], 2
je loc_fffad81e  ; je 0xfffad81e
mov al, 0x40
jmp near loc_fffad83e  ; jmp 0xfffad83e

loc_fffad753:  ; not directly referenced
sub esp, 0xc
mov ecx, 0xa
push 1
mov eax, ebx
call fcn_fffc1345  ; call 0xfffc1345
mov eax, dword [ebx + 0x2b09]
mov edx, 3
mov byte [ebp - 0x1e], al
mov eax, dword [ebx + 0x2b11]
mov byte [ebp - 0x1a], al
mov eax, dword [ebx + 0x3e50]
pop ecx
mov byte [ebp - 0x1d], al
mov eax, dword [ebx + 0x3e58]
pop edi
mov byte [ebp - 0x19], al
lea eax, [ebp - 0x1e]
push eax
movzx esi, byte [ebp - 0x2c]
mov eax, ebx
push 1
mov ecx, esi
lea edi, [ebp - 0x1a]
call fcn_fffad540  ; call 0xfffad540
pop eax
pop edx
mov ecx, esi
mov edx, 2
push edi
mov eax, ebx
push 1
call fcn_fffad540  ; call 0xfffad540
mov eax, dword [ebx + 0x2b15]
mov edx, 2
mov byte [ebp - 0x1a], al
mov eax, dword [ebx + 0x2b1d]
mov byte [ebp - 0x1c], al
mov eax, dword [ebx + 0x3e5c]
mov byte [ebp - 0x19], al
mov eax, dword [ebx + 0x3e64]
pop ecx
mov byte [ebp - 0x1b], al
mov ecx, esi
pop eax
mov eax, ebx
push edi
push 2
call fcn_fffad540  ; call 0xfffad540
pop eax
pop edx
lea eax, [ebp - 0x1c]
mov ecx, esi
push eax
mov edx, 1
mov eax, ebx
push 2
call fcn_fffad540  ; call 0xfffad540
add esp, 0x10
cmp dword [ebx + 0x297c], 2
jne loc_fffad9a0  ; jne 0xfffad9a0
jmp near loc_fffad91f  ; jmp 0xfffad91f

loc_fffad81a:  ; not directly referenced
xor eax, eax
jmp short loc_fffad823  ; jmp 0xfffad823

loc_fffad81e:  ; not directly referenced
mov eax, 1

loc_fffad823:  ; not directly referenced
imul eax, eax, 0x1347
imul ecx, ecx, 0x2a
add ecx, eax
mov al, 0x55
cmp word [ebx + ecx + 0x2988], 2
mov cl, 0x40
cmovne eax, ecx

loc_fffad83e:  ; not directly referenced
sub esp, 0xc
mov byte [ebp - 0x21], al
push 1
mov byte [ebp - 0x22], al
mov ecx, 0xa
mov eax, ebx
mov byte [ebp - 0x1f], 0x40
mov byte [ebp - 0x20], 0x40
xor esi, esi
call fcn_fffc1345  ; call 0xfffc1345
lea edx, [ebx + 0x2974]
add esp, 0x10
mov dword [ebp - 0x30], edx

loc_fffad86b:  ; not directly referenced
imul eax, esi, 0x1347
mov ecx, dword [ebp - 0x40]
cmp dword [ecx + eax + 0x12be], 2
jne loc_fffad910  ; jne 0xfffad910
mov edx, dword [ebp - 0x30]
xor ecx, ecx
push 1
lea edi, [edx + eax + 8]
mov edx, esi
movzx eax, byte [edi + 0x2fd]
neg eax
push eax
push 1
movzx eax, byte [edi + 0x114f]
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
push 1
movzx eax, byte [ebp + esi - 0x22]
mov ecx, 2
push eax
mov edx, esi
push 1
movzx eax, byte [edi + 0x114f]
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20
mov ecx, 1
push 1
movzx eax, byte [ebp + esi - 0x22]
mov edx, esi
push eax
push 1
movzx eax, byte [edi + 0x114f]
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
push 1
movzx eax, byte [ebp + esi - 0x20]
mov ecx, 4
push eax
mov edx, esi
push 1
movzx eax, byte [edi + 0x114f]
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20

loc_fffad910:  ; not directly referenced
inc esi
cmp esi, 2
jne loc_fffad86b  ; jne 0xfffad86b
jmp near loc_fffadd81  ; jmp 0xfffadd81

loc_fffad91f:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
mov edx, 0x80080020
mov dword [eax + 0x4908], 0
xor eax, eax
mov ecx, eax
or ecx, 0x80000
and ecx, 0xfffff807
mov eax, ecx
push ecx
or eax, 8
push ecx
push edx
mov edx, 0x4910
push eax
mov eax, ebx
call MCHBAR_WRITE64
mov eax, dword [ebx + 0x103f]
mov edx, 0x48d8
mov dword [eax + 0x4198], 0x2c08
mov eax, dword [ebx + 0x103f]
mov byte [eax + 0x4958], 0xff
mov eax, ebx
pop esi
pop edi
push 0
push 0
call MCHBAR_WRITE64
pop eax
pop edx
mov eax, ebx
mov edx, 0x48e8
push 0
push 0x3f8
call MCHBAR_WRITE64
add esp, 0x10

loc_fffad9a0:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne loc_fffada2e  ; jne 0xfffada2e
mov eax, dword [ebx + 0x103f]
mov edx, 0x80080020
mov dword [eax + 0x490c], 0
xor eax, eax
mov ecx, eax
or ecx, 0x80000
and ecx, 0xfffff807
mov eax, ecx
push ecx
or eax, 8
push ecx
push edx
mov edx, 0x4918
push eax
mov eax, ebx
call MCHBAR_WRITE64
mov eax, dword [ebx + 0x103f]
mov edx, 0x48e0
mov dword [eax + 0x4598], 0x2c08
mov eax, dword [ebx + 0x103f]
mov byte [eax + 0x495c], 0xff
mov eax, ebx
pop esi
pop edi
push 0
push 0
call MCHBAR_WRITE64
pop eax
pop edx
mov eax, ebx
mov edx, 0x48f0
push 0
push 0x3f8
call MCHBAR_WRITE64
add esp, 0x10

loc_fffada2e:  ; not directly referenced
lea edi, [ebx + 0x3fc4]
xor esi, esi

loc_fffada36:  ; not directly referenced
mov ecx, esi
mov eax, 1
shl eax, cl
test byte [ebp - 0x2c], al
je short loc_fffada89  ; je 0xfffada89
test byte [ebx + 0x3acb], al
mov dl, al
je short loc_fffada59  ; je 0xfffada59
mov cl, byte [edi - 0x1347]
mov byte [ebp - 0x20], cl
jmp short loc_fffada5d  ; jmp 0xfffada5d

loc_fffada59:  ; not directly referenced
mov byte [ebp - 0x20], 0

loc_fffada5d:  ; not directly referenced
test byte [ebx + 0x4e12], dl
je short loc_fffada6c  ; je 0xfffada6c
mov dl, byte [edi]
mov byte [ebp - 0x1f], dl
jmp short loc_fffada70  ; jmp 0xfffada70

loc_fffada6c:  ; not directly referenced
mov byte [ebp - 0x1f], 0

loc_fffada70:  ; not directly referenced
movzx ecx, al
mov edx, 4
push eax
push eax
lea eax, [ebp - 0x20]
push eax
mov eax, ebx
push ecx
call fcn_fffad540  ; call 0xfffad540
add esp, 0x10

loc_fffada89:  ; not directly referenced
inc esi
inc edi
cmp esi, 4
jne short loc_fffada36  ; jne 0xfffada36

loc_fffada90:  ; not directly referenced
lea edx, [ebx + 0x2974]
lea ecx, [ebx + 0xfd8]
mov dword [ebp - 0x38], ebx
mov dword [ebp - 0x2c], 0
mov dword [ebp - 0x4c], edx
mov dword [ebp - 0x50], ecx
jmp short loc_fffadae5  ; jmp 0xfffadae5

loc_fffadaae:  ; not directly referenced
mov ecx, esi
mov eax, 1
mov edx, esi
shl eax, cl
cmp dl, 2
mov cl, 0xc
cmovne ecx, eax
and cl, byte [ebp - 0x2c]
je short loc_fffadadd  ; je 0xfffadadd
push eax
movzx ecx, cl
mov edx, 4
push eax
mov eax, ebx
push edi
push 1
call fcn_fffad540  ; call 0xfffad540
add esp, 0x10

loc_fffadadd:  ; not directly referenced
inc esi
cmp esi, 3
jne short loc_fffadaae  ; jne 0xfffadaae
jmp short loc_fffada90  ; jmp 0xfffada90

loc_fffadae5:  ; not directly referenced
imul eax, dword [ebp - 0x2c], 0x1347
mov ecx, dword [ebp - 0x40]
cmp dword [ecx + eax + 0x12be], 2
jne loc_fffadd30  ; jne 0xfffadd30
mov edx, dword [ebp - 0x4c]
lea eax, [edx + eax + 8]
mov edx, dword [eax + 0x18d]
cmp dword [eax + 0x195], edx
cmovbe edx, dword [eax + 0x195]
cmp dword [ebp - 0x44], 0
je short loc_fffadb48  ; je 0xfffadb48
mov ecx, dword [eax + 0x199]
cmp dword [eax + 0x1a1], ecx
cmovbe ecx, dword [eax + 0x1a1]
cmp ecx, edx
cmovbe edx, ecx
mov dword [ebp - 0x30], edx

loc_fffadb38:  ; not directly referenced
mov edx, dword [ebp - 0x38]
xor ecx, ecx
mov dl, byte [edx + 0x3acb]
mov byte [ebp - 0x34], dl
jmp short loc_fffadb58  ; jmp 0xfffadb58

loc_fffadb48:  ; not directly referenced
mov ecx, dword [eax + 0x19d]
cmp edx, ecx
cmovbe ecx, edx
mov dword [ebp - 0x30], ecx
jmp short loc_fffadb38  ; jmp 0xfffadb38

loc_fffadb58:  ; not directly referenced
mov esi, 1
shl esi, cl
mov edx, esi
test byte [ebp - 0x34], dl
je short loc_fffadb85  ; je 0xfffadb85
movzx edi, byte [eax + ecx + 0x305]
movzx esi, byte [eax + ecx + 0x301]
cmp edi, esi
cmovbe esi, edi
cmp dword [ebp - 0x30], esi
cmovbe esi, dword [ebp - 0x30]
mov dword [ebp - 0x30], esi

loc_fffadb85:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffadb58  ; jne 0xfffadb58
imul eax, dword [ebp - 0x2c], 0x1347
mov ecx, dword [ebp - 0x30]
neg ecx
mov dword [ebp - 0x34], 0
mov dword [ebp - 0x3c], ecx
lea esi, [ebx + eax + 0x297c]
xor eax, eax
cmp dword [ebx + 0x1749], 2
sete al
mov dword [ebp - 0x48], eax

loc_fffadbb7:  ; not directly referenced
mov edx, dword [ebp - 0x38]
mov cl, byte [ebp - 0x34]
mov edi, 1
shl edi, cl
mov eax, edi
test byte [edx + 0x3acb], al
je short loc_fffadc1d  ; je 0xfffadc1d
cmp dword [ebp - 0x48], 0
jne short loc_fffadbf1  ; jne 0xfffadbf1
push 1
mov eax, edi
xor ecx, ecx
push dword [ebp - 0x3c]
and eax, 0xff
mov edx, dword [ebp - 0x2c]
push eax
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffadbf1:  ; not directly referenced
mov ecx, dword [ebp - 0x34]
and edi, 0xff
push 1
mov edx, dword [ebp - 0x2c]
movzx eax, byte [esi + ecx + 0x301]
add eax, dword [ebp - 0x3c]
push eax
mov ecx, 4
mov eax, ebx
push 1
push edi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffadc1d:  ; not directly referenced
inc dword [ebp - 0x34]
cmp dword [ebp - 0x34], 4
jne short loc_fffadbb7  ; jne 0xfffadbb7
push 1
mov eax, dword [esi + 0x195]
sub eax, dword [ebp - 0x30]
push eax
mov ecx, 2
mov edx, dword [ebp - 0x2c]
push 1
movzx eax, byte [esi + 0x114f]
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10
cmp dword [ebp - 0x48], 0
je loc_fffadd08  ; je 0xfffadd08
imul eax, dword [ebp - 0x2c], 0x2fa
mov edx, dword [ebp - 0x50]
lea edi, [edx + eax + 0xe4]
cmp byte [edi + 0x2ee], 0
je short loc_fffadc8a  ; je 0xfffadc8a
push 1
push dword [ebp - 0x3c]
xor ecx, ecx
mov edx, dword [ebp - 0x2c]
push 1
mov eax, ebx
push 0
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffadc8a:  ; not directly referenced
cmp byte [edi + 0x2ef], 0
je short loc_fffadcab  ; je 0xfffadcab
push 1
push dword [ebp - 0x3c]
xor ecx, ecx
mov edx, dword [ebp - 0x2c]
push 2
mov eax, ebx
push 0
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffadcab:  ; not directly referenced
push 1
mov eax, dword [esi + 0x18d]
sub eax, dword [ebp - 0x30]
push eax
mov ecx, 3
mov edx, dword [ebp - 0x2c]
push 1
movzx eax, byte [esi + 0x114f]
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
push 1
mov eax, dword [esi + 0x199]
sub eax, dword [ebp - 0x30]
push eax
mov ecx, 2
mov edx, dword [ebp - 0x2c]
push 2
movzx eax, byte [esi + 0x114f]
push eax
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20
push 1
mov eax, dword [esi + 0x1a1]
sub eax, dword [ebp - 0x30]
push eax
push 2
jmp short loc_fffadd16  ; jmp 0xfffadd16

loc_fffadd08:  ; not directly referenced
push 1
mov eax, dword [esi + 0x19d]
sub eax, dword [ebp - 0x30]
push eax
push 1

loc_fffadd16:  ; not directly referenced
movzx eax, byte [esi + 0x114f]
mov ecx, 1
push eax
mov edx, dword [ebp - 0x2c]
mov eax, ebx
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffadd30:  ; not directly referenced
inc dword [ebp - 0x2c]
add dword [ebp - 0x38], 0x1347
cmp dword [ebp - 0x2c], 2
jne loc_fffadae5  ; jne 0xfffadae5
cmp dword [ebx + 0x297c], 2
jne short loc_fffadd5d  ; jne 0xfffadd5d
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4198], 0

loc_fffadd5d:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffadd76  ; jne 0xfffadd76
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4598], 0

loc_fffadd76:  ; not directly referenced
sub esp, 0xc
push ebx
call fcn_fffbd7da  ; call 0xfffbd7da
jmp short loc_fffaddcc  ; jmp 0xfffaddcc

loc_fffadd81:  ; not directly referenced
push ecx
movzx esi, byte [ebp - 0x2c]
xor edx, edx
push ecx
mov eax, ebx
mov ecx, esi
push 0
push 1
call fcn_fffad540  ; call 0xfffad540
pop edi
pop eax
lea edi, [ebp - 0x22]
mov ecx, esi
push edi
mov edx, 2
mov eax, ebx
push 1
call fcn_fffad540  ; call 0xfffad540
pop eax
pop edx
mov ecx, esi
mov edx, 1
push edi
mov eax, ebx
xor esi, esi
push 1
lea edi, [ebp - 0x20]
call fcn_fffad540  ; call 0xfffad540
add esp, 0x10
jmp near loc_fffadaae  ; jmp 0xfffadaae

loc_fffaddcc:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffaddd4:  ; not directly referenced
push ebp
xor ecx, ecx
mov edx, 0x10
mov ebp, esp
push edi
push esi
lea eax, [ebp - 0x28]
push ebx
lea esp, [esp - 0x2c]
mov esi, dword [ebp + 8]
mov bl, byte [esi + 0x176a]
mov byte [ebp - 0x31], bl
call mrc_setmem
cmp dword [esi + 0x1749], 2
mov eax, esi
movzx edx, byte [esi + 0x176b]
setne cl
sub esp, 0xc
xor edi, edi
push 0
xor ebx, ebx
lea ecx, [ecx*4 + 6]
movzx ecx, cl
call fcn_fffc1345  ; call 0xfffc1345
lea eax, [esi + 0x16be]
add esp, 0x10
mov dword [ebp - 0x38], eax

loc_fffade30:  ; not directly referenced
imul eax, edi, 0x1347
mov edx, dword [ebp - 0x38]
lea eax, [edx + eax + 0x12b0]
mov edx, edi
movzx ecx, byte [eax + 0x115d]
mov dword [ebp - 0x30], eax
mov eax, esi
call fcn_fffc41bb  ; call 0xfffc41bb
or ebx, eax
movzx eax, bl
bt eax, edi
mov dword [ebp - 0x2c], eax
jae short loc_fffade76  ; jae 0xfffade76
mov eax, dword [ebp - 0x30]
xor edx, edx
movzx ecx, byte [esi + 0x1755]
add eax, 0x107
call mrc_fillword

loc_fffade76:  ; not directly referenced
inc edi
cmp edi, 2
jne short loc_fffade30  ; jne 0xfffade30
sub esp, 0xc
lea eax, [ebp - 0x28]
push eax
lea edx, [esi + 0x1774]
mov ecx, dword [ebp - 0x2c]
push 0x36
mov eax, esi
push 0
push 0xd
push 0
call fcn_fffc0a00  ; call 0xfffc0a00
add esp, 0x14
push esi
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0x10
cmp dword [esi + 0x297c], 2
jne short loc_fffadebe  ; jne 0xfffadebe
mov edi, dword [esi + 0x2734]
mov ebx, dword [esi + 0x2738]
jmp short loc_fffadec4  ; jmp 0xfffadec4

loc_fffadebe:  ; not directly referenced
or ebx, 0xffffffff
or edi, 0xffffffff

loc_fffadec4:  ; not directly referenced
cmp dword [esi + 0x3cc3], 2
jne short loc_fffadee3  ; jne 0xfffadee3
mov eax, dword [esi + 0x277c]
cmp edi, eax
cmova edi, eax
mov eax, dword [esi + 0x2780]
cmp ebx, eax
cmova ebx, eax

loc_fffadee3:  ; not directly referenced
mov eax, ebx
mov ecx, 2
sub eax, edi
cdq
idiv ecx
mov cl, 0xa
push edx
mov dword [ebp - 0x2c], eax
push edx
cdq
idiv ecx
push 0
mov cl, 1
mov edx, 2
push eax
mov eax, esi
call fcn_fffafeda  ; call 0xfffafeda
mov dword [esp], esi
call fcn_fffbd7da  ; call 0xfffbd7da
add edi, dword [ebp - 0x2c]
sub ebx, dword [ebp - 0x2c]
lea edx, [esi + 0x2734]
add esp, 0x10
xor ecx, ecx
mov dword [ebp - 0x30], edi
mov dword [ebp - 0x2c], ebx

loc_fffadf29:  ; not directly referenced
mov edi, 1
shl edi, cl
mov ebx, edi
test byte [ebp - 0x31], bl
je short loc_fffadf42  ; je 0xfffadf42
mov ebx, dword [ebp - 0x30]
mov dword [edx], ebx
mov ebx, dword [ebp - 0x2c]
mov dword [edx + 4], ebx

loc_fffadf42:  ; not directly referenced
inc ecx
add edx, 0x90
cmp ecx, 4
jne short loc_fffadf29  ; jne 0xfffadf29
cmp dword [esi + 0x297c], 2
jne short loc_fffadf64  ; jne 0xfffadf64
mov edx, dword [esi + 0x103f]
mov byte [edx + 0x4198], 0

loc_fffadf64:  ; not directly referenced
cmp dword [esi + 0x3cc3], 2
jne short loc_fffadf7a  ; jne 0xfffadf7a
mov edx, dword [esi + 0x103f]
mov byte [edx + 0x4598], 0

loc_fffadf7a:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffadf82:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
push eax
mov eax, ebx
movzx ecx, byte [ebx + 0x176b]
lea esi, [ebx + 0x1774]
push 0
mov edx, esi
push 1
push 1
call fcn_fffc32d9  ; call 0xfffc32d9
add esp, 0x10
test eax, eax
jne short loc_fffadfc8  ; jne 0xfffadfc8
push ecx
movzx ecx, byte [ebx + 0x176b]
mov edx, esi
push 1
mov eax, ebx
push 0
push 0
call fcn_fffc32d9  ; call 0xfffc32d9
add esp, 0x10

loc_fffadfc8:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_fffadfcf:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
push eax
push eax
movzx ecx, byte [ebx + 0x176b]
lea esi, [ebx + 0x1774]
push 0
mov edx, esi
mov eax, ebx
push 0xf
push 1
push 0
push 1
push 1
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20
test eax, eax
jne short loc_fffae023  ; jne 0xfffae023
push eax
mov edx, esi
push eax
movzx ecx, byte [ebx + 0x176b]
mov eax, ebx
push 1
push 0xf
push 0
push 1
push 0
push 1
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20

loc_fffae023:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_fffae02a:  ; not directly referenced
push ebp
mov ecx, 1
mov ebp, esp
lea esp, [esp - 0x10]
mov eax, dword [ebp + 8]
movzx edx, byte [eax + 0x176b]
push 0xa
push 1
call fcn_fffb03ba  ; call 0xfffb03ba
leave
ret

fcn_fffae04b:  ; not directly referenced
push ebp
mov ecx, 0xb
mov ebp, esp
lea esp, [esp - 0x10]
mov eax, dword [ebp + 8]
movzx edx, byte [eax + 0x176b]
push 0x11
push 0
call fcn_fffb03ba  ; call 0xfffb03ba
leave
ret

fcn_fffae06c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x17c]
mov esi, dword [ebp + 8]
lea ebx, [esi + 0x16be]
mov dword [ebp - 0x144], ebx
xor ebx, ebx
cmp dword [esi + 0x1749], 2
sete bl
xor edi, edi
mov dword [ebp - 0x164], ebx
mov bl, byte [esi + 0x176b]
mov byte [ebp - 0x159], bl
mov bl, byte [esi + 0x176a]
mov byte [ebp - 0x148], bl
mov ebx, dword [ebp - 0x144]
mov dword [ebp - 0x16c], ebx

loc_fffae0c0:  ; not directly referenced
imul ebx, edi, 0x1347
mov eax, dword [ebp - 0x144]
cmp dword [eax + ebx + 0x12be], 2
jne loc_fffae176  ; jne 0xfffae176
mov edx, dword [ebp - 0x16c]
mov byte [ebp - 0x13c], 0
lea edx, [edx + ebx + 0x12be]
mov dword [ebp - 0x160], edx
jmp short loc_fffae155  ; jmp 0xfffae155

loc_fffae0f6:  ; not directly referenced
movzx ecx, byte [ebp - 0x13c]
mov dword [ebp - 0x158], 0
mov dword [ebp - 0x168], ecx

loc_fffae10d:  ; not directly referenced
mov cl, byte [ebp - 0x158]
mov eax, 1
shl eax, cl
test byte [esi + ebx + 0x3acb], al
je short loc_fffae140  ; je 0xfffae140
push edx
mov ecx, dword [ebp - 0x158]
mov edx, edi
push 0x20
mov eax, esi
push 5
push dword [ebp - 0x168]
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10

loc_fffae140:  ; not directly referenced
inc dword [ebp - 0x158]
cmp dword [ebp - 0x158], 4
jne short loc_fffae10d  ; jne 0xfffae10d
inc byte [ebp - 0x13c]

loc_fffae155:  ; not directly referenced
movzx ecx, byte [esi + 0x1755]
cmp byte [ebp - 0x13c], cl
jb short loc_fffae0f6  ; jb 0xfffae0f6
mov eax, dword [ebp - 0x160]
xor edx, edx
add eax, 0xf9
call mrc_fillword

loc_fffae176:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffae0c0  ; jne 0xfffae0c0
movzx edx, byte [ebp - 0x159]
mov eax, esi
call fcn_fffc58d3  ; call 0xfffc58d3
movzx ebx, byte [ebp - 0x148]
mov dword [ebp - 0x158], 0
mov dword [ebp - 0x180], ebx
lea ebx, [esi + 0x16be]
mov dword [ebp - 0x170], ebx

loc_fffae1b1:  ; not directly referenced
mov ebx, dword [ebp - 0x180]
mov ecx, dword [ebp - 0x158]
bt ebx, ecx
jb short loc_fffae1d8  ; jb 0xfffae1d8

loc_fffae1c2:  ; not directly referenced
inc dword [ebp - 0x158]
cmp dword [ebp - 0x158], 4
jne short loc_fffae1b1  ; jne 0xfffae1b1
xor edi, edi
jmp near loc_fffae7c4  ; jmp 0xfffae7c4

loc_fffae1d8:  ; not directly referenced
mov cl, byte [ebp - 0x158]
mov eax, 1
shl eax, cl
movzx ebx, al
mov byte [ebp - 0x159], al
mov dword [ebp - 0x168], ebx
xor ebx, ebx

loc_fffae1f6:  ; not directly referenced
mov edx, ebx
mov ecx, dword [ebp - 0x168]
mov eax, esi
call fcn_fffc41bb  ; call 0xfffc41bb
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x159]
test byte [esi + eax + 0x3acb], dl
je short loc_fffae256  ; je 0xfffae256
cmp dword [ebp - 0x164], 0
jne short loc_fffae23b  ; jne 0xfffae23b
push eax
mov ecx, dword [ebp - 0x168]
mov edx, ebx
push eax
mov eax, esi
push 4
push 3
call fcn_fffb96d4  ; call 0xfffb96d4
add esp, 0x10

loc_fffae23b:  ; not directly referenced
mov edx, ebx
mov eax, dword [esi + 0x103f]
shl edx, 0xa
lea edx, [edx + eax + 0x4194]
mov eax, dword [edx]
or eax, 0x80000000
mov dword [edx], eax

loc_fffae256:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffae1f6  ; jne 0xfffae1f6
mov edi, 0xffffffe0

loc_fffae261:  ; not directly referenced
push 1
mov ecx, edi
mov edx, 1
push 0
mov eax, esi
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20
mov dword [ebp - 0x160], 0x3074
mov dword [ebp - 0x13c], 0

loc_fffae296:  ; not directly referenced
imul eax, dword [ebp - 0x13c], 0x1347
mov bl, byte [ebp - 0x159]
test byte [esi + eax + 0x3acb], bl
je loc_fffae35a  ; je 0xfffae35a
mov ebx, dword [ebp - 0x170]
xor edx, edx
lea eax, [ebx + eax + 0x12be]
mov dword [ebp - 0x140], eax
mov eax, dword [ebp - 0x160]
sub eax, 0x3010
mov dword [ebp - 0x144], eax
jmp short loc_fffae30b  ; jmp 0xfffae30b

loc_fffae2db:  ; not directly referenced
movzx ecx, dl
mov ebx, dword [ebp - 0x140]
mov dword [ebp - 0x148], ecx
inc edx
mov eax, dword [ebx + ecx*4 + 0x169]
shl ecx, 9
add ecx, dword [ebp - 0x144]
add ecx, dword [esi + 0x103f]
or eax, 0x60
and eax, 0xfffffe7f
mov dword [ecx], eax

loc_fffae30b:  ; not directly referenced
cmp dl, byte [esi + 0x1755]
jb short loc_fffae2db  ; jb 0xfffae2db
mov eax, dword [ebp - 0x140]
mov eax, dword [eax + 0x141]
mov dword [ebp - 0x140], eax
or eax, 0x1000000
cmp dword [ebp - 0x164], 0
cmovne eax, dword [ebp - 0x140]
or eax, 1
and eax, 0xdfffffff
mov dword [ebp - 0x140], eax
mov eax, dword [ebp - 0x160]
add eax, dword [esi + 0x103f]
mov ebx, dword [ebp - 0x140]
mov dword [eax], ebx

loc_fffae35a:  ; not directly referenced
inc dword [ebp - 0x13c]
add dword [ebp - 0x160], 0x100
cmp dword [ebp - 0x13c], 2
jne loc_fffae296  ; jne 0xfffae296
mov eax, esi
lea ebx, [ebp - 0xa8]
call wait_5030
mov eax, dword [esi + 0x103f]
mov edx, 2
mov dword [eax + 0x4800], 1
mov eax, esi
call fcn_fffb2d76  ; call 0xfffb2d76
mov eax, esi
call wait_5030
mov edx, 2
mov eax, esi
call fcn_fffb2d76  ; call 0xfffb2d76
mov eax, dword [esi + 0x103f]
lea ecx, [ebp - 0x60]
mov dword [ebp - 0x160], esi
lea edx, [ebp - 0xf0]
mov dword [ebp - 0x13c], ecx
mov dword [ebp - 0x144], ebx
mov dword [ebp - 0x148], 0x54
mov dword [eax + 0x4800], 2
lea eax, [ebp - 0x138]
mov dword [ebp - 0x184], eax
lea eax, [edi - 1]
mov dword [ebp - 0x17c], eax

loc_fffae3fd:  ; not directly referenced
mov eax, dword [ebp - 0x160]
mov bl, byte [ebp - 0x159]
test byte [eax + 0x3acb], bl
je short loc_fffae430  ; je 0xfffae430
mov cl, byte [esi + 0x1755]
mov ebx, dword [ebp - 0x148]
mov byte [ebp - 0x15a], cl
mov dword [ebp - 0x16c], ebx
xor eax, eax
jmp near loc_fffae556  ; jmp 0xfffae556

loc_fffae430:  ; not directly referenced
add dword [ebp - 0x160], 0x1347
add dword [ebp - 0x148], 0x100
add edx, 0x24
add dword [ebp - 0x184], 0x24
add dword [ebp - 0x13c], 0x24
add dword [ebp - 0x144], 0x24
cmp dword [ebp - 0x148], 0x254
jne short loc_fffae3fd  ; jne 0xfffae3fd
mov dword [ebp - 0x13c], 0
jmp near loc_fffae567  ; jmp 0xfffae567

loc_fffae477:  ; not directly referenced
mov ecx, dword [ebp - 0x16c]
add ecx, dword [esi + 0x103f]
xor ebx, ebx
mov ecx, dword [ecx]
dec ecx
mov ecx, edi
sete bl
cmp cl, 0xe0
jne short loc_fffae4e9  ; jne 0xfffae4e9
test ebx, ebx
je short loc_fffae4b9  ; je 0xfffae4b9
mov ebx, dword [ebp - 0x184]
mov ecx, dword [ebp - 0x13c]
mov dword [edx + eax*4], edi
mov dword [ebx + eax*4], edi
mov ebx, dword [ebp - 0x144]
mov dword [ecx + eax*4], edi
mov dword [ebx + eax*4], edi
jmp near loc_fffae54b  ; jmp 0xfffae54b

loc_fffae4b9:  ; not directly referenced
mov ecx, dword [ebp - 0x184]
mov ebx, dword [ebp - 0x13c]
mov dword [edx + eax*4], 0xffffffdf
mov dword [ecx + eax*4], 0xffffffdf
mov ecx, dword [ebp - 0x144]
mov dword [ebx + eax*4], 0xffffffdf
mov dword [ecx + eax*4], 0xffffffdf
jmp short loc_fffae54b  ; jmp 0xfffae54b

loc_fffae4e9:  ; not directly referenced
test ebx, ebx
je short loc_fffae54b  ; je 0xfffae54b
mov ebx, dword [ebp - 0x17c]
cmp dword [edx + eax*4], ebx
mov dword [edx + eax*4], edi
jne short loc_fffae4fd  ; jne 0xfffae4fd
jmp short loc_fffae506  ; jmp 0xfffae506

loc_fffae4fd:  ; not directly referenced
mov ecx, dword [ebp - 0x184]
mov dword [ecx + eax*4], edi

loc_fffae506:  ; not directly referenced
mov ebx, dword [ebp - 0x184]
mov ecx, edi
mov ebx, dword [ebx + eax*4]
sub ecx, ebx
mov dword [ebp - 0x174], ebx
mov dword [ebp - 0x178], ecx
mov ecx, dword [ebp - 0x13c]
mov ebx, dword [ecx + eax*4]
mov ecx, dword [ebp - 0x144]
sub ebx, dword [ecx + eax*4]
cmp dword [ebp - 0x178], ebx
jle short loc_fffae54b  ; jle 0xfffae54b
mov ebx, dword [ebp - 0x174]
mov dword [ecx + eax*4], ebx
mov ecx, dword [ebp - 0x13c]
mov dword [ecx + eax*4], edi

loc_fffae54b:  ; not directly referenced
inc eax
add dword [ebp - 0x16c], 0x200

loc_fffae556:  ; not directly referenced
cmp byte [ebp - 0x15a], al
ja loc_fffae477  ; ja 0xfffae477
jmp near loc_fffae430  ; jmp 0xfffae430

loc_fffae567:  ; not directly referenced
imul eax, dword [ebp - 0x13c], 0x1347
mov bl, byte [ebp - 0x159]
test byte [esi + eax + 0x3acb], bl
je loc_fffae649  ; je 0xfffae649
mov ebx, dword [ebp - 0x170]
mov ecx, dword [ebp - 0x13c]
shl ecx, 8
mov dword [ebp - 0x16c], ecx
add ecx, 0x64
mov dword [ebp - 0x160], ecx
lea eax, [ebx + eax + 0x12be]
mov dword [ebp - 0x144], eax
xor eax, eax
jmp short loc_fffae5d1  ; jmp 0xfffae5d1

loc_fffae5b3:  ; not directly referenced
movzx ebx, al
mov ecx, dword [ebp - 0x144]
inc eax
mov ecx, dword [ecx + ebx*4 + 0x169]
shl ebx, 9
add ebx, dword [ebp - 0x160]
add edx, ebx
mov dword [edx], ecx

loc_fffae5d1:  ; not directly referenced
cmp al, byte [esi + 0x1755]
mov edx, dword [esi + 0x103f]
jb short loc_fffae5b3  ; jb 0xfffae5b3
mov ebx, dword [ebp - 0x16c]
add ebx, 0x3074
cmp dword [ebp - 0x164], 0
je short loc_fffae635  ; je 0xfffae635
add edx, ebx
mov eax, dword [ebp - 0x140]
and eax, 0xbfffffff
mov dword [edx], eax
mov edx, 1
mov eax, esi
call fcn_fffb2d76  ; call 0xfffb2d76
mov eax, dword [esi + 0x103f]
and dword [ebp - 0x140], 0xbffffffe
add eax, ebx
mov edx, dword [ebp - 0x140]
mov dword [eax], edx
mov edx, 1
mov eax, esi
call fcn_fffb2d76  ; call 0xfffb2d76

loc_fffae635:  ; not directly referenced
mov ecx, dword [ebp - 0x144]
add ebx, dword [esi + 0x103f]
mov eax, dword [ecx + 0x141]
mov dword [ebx], eax

loc_fffae649:  ; not directly referenced
inc dword [ebp - 0x13c]
cmp dword [ebp - 0x13c], 2
jne loc_fffae567  ; jne 0xfffae567
mov eax, esi
inc edi
call wait_5030
cmp edi, 0x20
jne loc_fffae261  ; jne 0xfffae261
imul ebx, dword [ebp - 0x158], 9
xor di, di
mov dword [ebp - 0x148], ebx

loc_fffae67d:  ; not directly referenced
imul eax, edi, 0x1347
mov bl, byte [ebp - 0x159]
test byte [esi + eax + 0x3acb], bl
jne short loc_fffae69e  ; jne 0xfffae69e

loc_fffae692:  ; not directly referenced
inc edi
cmp edi, 2
je loc_fffae1c2  ; je 0xfffae1c2
jmp short loc_fffae67d  ; jmp 0xfffae67d

loc_fffae69e:  ; not directly referenced
mov edx, dword [ebp - 0x170]
lea ebx, [edx + eax + 0x12be]
mov edx, edi
shl edx, 0xa
mov eax, dword [esi + 0x103f]
lea edx, [edx + eax + 0x4194]
mov eax, dword [edx]
and eax, 0x7fffffff
cmp dword [ebp - 0x164], 0
mov dword [edx], eax
jne short loc_fffae6e7  ; jne 0xfffae6e7
push eax
mov ecx, dword [ebp - 0x168]
mov edx, edi
push eax
mov eax, esi
push 0
push 3
call fcn_fffb96d4  ; call 0xfffb96d4
add esp, 0x10

loc_fffae6e7:  ; not directly referenced
lea eax, [ebx + 0xf9]
xor edx, edx
movzx ecx, byte [esi + 0x1755]
call mrc_fillword
add ebx, dword [ebp - 0x148]
xor eax, eax
mov dword [ebp - 0x144], ebx
jmp short loc_fffae757  ; jmp 0xfffae757

loc_fffae70b:  ; not directly referenced
movzx ecx, al
lea ebx, [edi + edi*8]
add ebx, ecx
mov edx, dword [ebp + ebx*4 - 0xa8]
mov ebx, dword [ebp + ebx*4 - 0x60]
sub ebx, edx
mov dword [ebp - 0x13c], ebx
je loc_fffae801  ; je 0xfffae801
xor ebx, ebx
cmp dword [ebp - 0x13c], 0xc
jle short loc_fffae741  ; jle 0xfffae741
mov ebx, dword [ebp - 0x13c]
sar ebx, 1
add ebx, edx

loc_fffae741:  ; not directly referenced
add ecx, dword [ebp - 0x144]
add ebx, 0x20
inc eax
mov byte [ecx + 0x1106], bl
mov byte [ecx + 0x112a], bl

loc_fffae757:  ; not directly referenced
cmp al, byte [esi + 0x1755]
jb short loc_fffae70b  ; jb 0xfffae70b
jmp near loc_fffae692  ; jmp 0xfffae692

loc_fffae764:  ; not directly referenced
imul eax, ebx, 0x1347
mov cl, byte [ebp - 0x158]
test byte [esi + eax + 0x3acb], cl
jne short loc_fffae7a7  ; jne 0xfffae7a7

loc_fffae779:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffae764  ; jne 0xfffae764
jmp short loc_fffae7be  ; jmp 0xfffae7be

loc_fffae781:  ; not directly referenced
push eax
movzx eax, byte [ebp - 0x140]
mov ecx, edi
push 0
mov edx, ebx
push 0xff
push eax
mov eax, esi
call fcn_fffb0168  ; call 0xfffb0168
inc byte [ebp - 0x140]
add esp, 0x10
jmp short loc_fffae7ae  ; jmp 0xfffae7ae

loc_fffae7a7:  ; not directly referenced
mov byte [ebp - 0x140], 0

loc_fffae7ae:  ; not directly referenced
mov al, byte [ebp - 0x140]
cmp al, byte [esi + 0x1755]
jb short loc_fffae781  ; jb 0xfffae781
jmp short loc_fffae779  ; jmp 0xfffae779

loc_fffae7be:  ; not directly referenced
inc edi
cmp edi, 4
je short loc_fffae7d7  ; je 0xfffae7d7

loc_fffae7c4:  ; not directly referenced
mov ecx, edi
mov eax, 1
xor ebx, ebx
shl eax, cl
mov byte [ebp - 0x158], al
jmp short loc_fffae764  ; jmp 0xfffae764

loc_fffae7d7:  ; not directly referenced
push 2
xor ecx, ecx
mov edx, 1
push 0
mov eax, esi
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20
mov eax, esi
call wait_5030
jmp short loc_fffae806  ; jmp 0xfffae806

loc_fffae801:  ; not directly referenced
mov eax, 6

loc_fffae806:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffae80e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
lea esp, [esp - 0x3c]
mov edi, dword [ebp + 8]
mov byte [ebp - 0x1a], 1
mov byte [ebp - 0x19], 0x19
mov dword [ebp - 0x34], 0
lea eax, [edi + 0x16be]
mov dword [ebp - 0x40], eax

loc_fffae835:  ; not directly referenced
mov cl, bl
mov esi, 1
shl esi, cl
mov eax, esi
test byte [edi + 0x176a], al
je loc_fffae8f8  ; je 0xfffae8f8
test byte [edi + 0x3acb], al
mov byte [ebp - 0x2c], al
je short loc_fffae877  ; je 0xfffae877
mov cl, byte [edi + ebx + 0x3a49]
mov dl, 0xf
movsx eax, byte [edi + ebx + 0x3a4d]
cmp cl, 0xf
cmovbe edx, ecx
mov cl, al
sub ecx, edx
mov byte [ebp - 0x30], cl
jmp short loc_fffae87f  ; jmp 0xfffae87f

loc_fffae877:  ; not directly referenced
mov dl, 0xf
xor eax, eax
mov byte [ebp - 0x30], 0

loc_fffae87f:  ; not directly referenced
mov cl, byte [ebp - 0x2c]
test byte [edi + 0x4e12], cl
je short loc_fffae8aa  ; je 0xfffae8aa
movsx ecx, byte [edi + ebx + 0x4d94]
cmp al, cl
cmovb eax, ecx
mov cl, byte [edi + ebx + 0x4d90]
cmp dl, cl
cmova edx, ecx
mov cl, al
sub ecx, edx
mov byte [ebp - 0x30], cl

loc_fffae8aa:  ; not directly referenced
cmp byte [ebp - 0x30], 0
mov edx, 0
movsx ecx, byte [ebp - 0x30]
cmovs ecx, edx
and esi, 0xff
push edx
mov byte [ebp - 0x30], cl
push edx
lea edx, [ebp - 0x19]
push 0
push esi
push ebx
push 1
push edx
lea edx, [edi + 0x1774]
push edx
mov edx, 0xc
push 0xa
push eax
mov eax, edi
push ecx
lea ecx, [ebp - 0x1a]
push 1
call fcn_fffc4850  ; call 0xfffc4850
mov dword [ebp - 0x34], eax
add esp, 0x30
dec eax
je loc_fffaea03  ; je 0xfffaea03

loc_fffae8f8:  ; not directly referenced
inc ebx
cmp ebx, 4
jne loc_fffae835  ; jne 0xfffae835
lea ecx, [edi + 0x2974]
mov dword [ebp - 0x3c], edi
mov dword [ebp - 0x2c], 0
xor ebx, ebx
mov dword [ebp - 0x48], ecx

loc_fffae917:  ; not directly referenced
imul eax, dword [ebp - 0x2c], 0x1347
mov edx, dword [ebp - 0x40]
cmp dword [edx + eax + 0x12be], 2
jne loc_fffae9ed  ; jne 0xfffae9ed
mov ecx, dword [ebp - 0x48]
lea esi, [ecx + eax + 8]
mov ecx, dword [ebp - 0x3c]
mov eax, dword [esi + 0x1a9]
mov edx, eax
shr edx, 0xf
shr eax, 0x13
and edx, 0xf
and eax, 0xf
cmp dl, al
cmova eax, edx
mov dl, 0
lea eax, [eax + eax - 8]
test al, al
cmovns edx, eax
mov byte [ebp - 0x35], dl
mov dl, byte [ecx + 0x3acb]
xor ecx, ecx

loc_fffae968:  ; not directly referenced
mov eax, 1
shl eax, cl
test dl, al
je short loc_fffae97f  ; je 0xfffae97f
mov al, byte [esi + ecx + 0x10d1]
cmp bl, al
cmovb ebx, eax

loc_fffae97f:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffae968  ; jne 0xfffae968
mov al, bl
sub al, byte [ebp - 0x35]
movzx eax, al
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x44], eax

loc_fffae997:  ; not directly referenced
mov edx, dword [ebp - 0x3c]
mov cl, byte [ebp - 0x30]
mov eax, 1
shl eax, cl
test byte [edx + 0x3acb], al
je short loc_fffae9e4  ; je 0xfffae9e4
mov edx, dword [ebp - 0x30]
mov cl, bl
sub cl, byte [esi + edx + 0x10d1]
movzx ecx, cl
movsx edx, byte [ebp - 0x35]
cmp ecx, edx
jle short loc_fffae9e4  ; jle 0xfffae9e4
sub esp, 0xc
and eax, 0xff
push eax
xor ecx, ecx
mov edx, dword [ebp - 0x2c]
push 0
mov eax, edi
push 1
push dword [ebp - 0x44]
push 0xc
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x20

loc_fffae9e4:  ; not directly referenced
inc dword [ebp - 0x30]
cmp dword [ebp - 0x30], 4
jne short loc_fffae997  ; jne 0xfffae997

loc_fffae9ed:  ; not directly referenced
inc dword [ebp - 0x2c]
add dword [ebp - 0x3c], 0x1347
cmp dword [ebp - 0x2c], 2
jne loc_fffae917  ; jne 0xfffae917
jmp short loc_fffaea0a  ; jmp 0xfffaea0a

loc_fffaea03:  ; not directly referenced
mov dword [ebp - 0x34], 0x18

loc_fffaea0a:  ; not directly referenced
mov eax, dword [ebp - 0x34]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffaea15:
db 0x00
db 0x00
db 0x00

loc_fffafa3a:
db 0x00
db 0x00

fcn_fffafa3c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
lea esp, [esp - 0x3c]
mov al, byte [ebp + 8]
mov byte [ebp - 0x28], al
mov bl, byte [ebp + 0xc]
imul eax, edx, 0x1347
mov byte [ebp - 0x30], bl
mov bl, byte [ebp + 0x14]
mov dword [ebp - 0x20], edx
mov byte [ebp - 0x2c], bl
lea esi, [edi + eax + 0x297c]
xor eax, eax
cmp dword [edi + 0x1749], 2
sete al
test cl, cl
mov dword [ebp - 0x24], eax
je short loc_fffafaad  ; je 0xfffafaad
cmp dword [ebp + 0x10], 0x7f
mov eax, 0x7f
cmovle eax, dword [ebp + 0x10]
mov dword [ebp + 0x10], 0
test eax, eax
cmovs eax, dword [ebp + 0x10]
cmp cl, 4
mov dword [ebp + 0x10], eax
ja loc_fffafed2  ; ja 0xfffafed2
movzx ecx, cl
jmp dword [ecx*4 + ref_fffcba38]  ; ujmp: jmp dword [ecx*4 - 0x345c8]

loc_fffafaad:  ; not directly referenced
xor ebx, ebx
cmp dword [ebp - 0x24], 0
mov dword [ebp - 0x24], 0
je loc_fffafba0  ; je 0xfffafba0
imul eax, dword [ebp - 0x20], 0x2fa
add eax, 0xd0
mov dword [ebp - 0x40], eax

loc_fffafacf:  ; not directly referenced
imul ecx, ebx, 7
movzx eax, byte [ebp - 0x30]
mov dword [ebp - 0x34], ecx
bt eax, ebx
movzx eax, byte [esi + ebx + 0x2fd]
jae loc_fffafb89  ; jae 0xfffafb89
add eax, dword [ebp + 0x10]
mov ecx, 0x80
cdq
mov dword [ebp - 0x1c], eax
idiv ecx
mov dword [ebp - 0x28], edx
mov dl, byte [ebp - 0x28]
test dl, dl
lea eax, [edx - 0x80]
cmovs edx, eax
cmp byte [ebp - 0x2c], 0
je short loc_fffafb13  ; je 0xfffafb13
mov byte [esi + ebx + 0x2fd], dl

loc_fffafb13:  ; not directly referenced
mov cl, byte [ebp - 0x34]
lea eax, [edi + ebx + 0xfd8]
movsx edx, dl
mov dword [ebp - 0x28], 0
shl edx, cl
add dword [ebp - 0x24], edx
movzx ecx, byte [ebp - 0x2c]
mov edx, dword [ebp - 0x40]
mov dword [ebp - 0x3c], ecx
movzx eax, byte [eax + edx + 0x302]
mov dword [ebp - 0x34], eax
imul eax, dword [ebp - 0x20], 0x1347
add eax, edi
mov dword [ebp - 0x38], eax

loc_fffafb4d:  ; not directly referenced
mov edx, dword [ebp - 0x38]
mov cl, byte [ebp - 0x28]
mov eax, 1
shl eax, cl
test byte [edx + 0x3acb], al
je short loc_fffafb7e  ; je 0xfffafb7e
push edx
push dword [ebp - 0x3c]
movsx eax, byte [ebp + 0x10]
mov ecx, dword [ebp - 0x28]
push eax
push dword [ebp - 0x34]
mov edx, dword [ebp - 0x20]
mov eax, edi
call fcn_fffc452b  ; call 0xfffc452b
add esp, 0x10

loc_fffafb7e:  ; not directly referenced
inc dword [ebp - 0x28]
cmp dword [ebp - 0x28], 4
jne short loc_fffafb4d  ; jne 0xfffafb4d
jmp short loc_fffafb91  ; jmp 0xfffafb91

loc_fffafb89:  ; not directly referenced
mov cl, byte [ebp - 0x34]
shl eax, cl
add dword [ebp - 0x24], eax

loc_fffafb91:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffafacf  ; jne 0xfffafacf
jmp near loc_fffafc25  ; jmp 0xfffafc25

loc_fffafba0:  ; not directly referenced
movzx eax, byte [ebp - 0x28]
movzx edx, byte [ebp - 0x2c]
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x30], edx

loc_fffafbae:  ; not directly referenced
imul ecx, ebx, 7
mov eax, dword [ebp - 0x28]
bt eax, ebx
mov dword [ebp - 0x38], ecx
movzx eax, byte [esi + ebx + 0x2fd]
jae short loc_fffafc17  ; jae 0xfffafc17
add eax, dword [ebp + 0x10]
mov ecx, 0x80
cdq
mov dword [ebp - 0x1c], eax
idiv ecx
mov dword [ebp - 0x34], edx
mov dl, byte [ebp - 0x34]
test dl, dl
lea eax, [edx - 0x80]
cmovs edx, eax
cmp byte [ebp - 0x2c], 0
je short loc_fffafbed  ; je 0xfffafbed
mov byte [esi + ebx + 0x2fd], dl

loc_fffafbed:  ; not directly referenced
push eax
push dword [ebp - 0x30]
movsx eax, byte [ebp + 0x10]
mov cl, byte [ebp - 0x38]
push eax
movsx edx, dl
mov eax, edi
push 0x1ff
shl edx, cl
mov ecx, ebx
add dword [ebp - 0x24], edx
mov edx, dword [ebp - 0x20]
call fcn_fffc452b  ; call 0xfffc452b
add esp, 0x10
jmp short loc_fffafc1f  ; jmp 0xfffafc1f

loc_fffafc17:  ; not directly referenced
mov cl, byte [ebp - 0x38]
shl eax, cl
add dword [ebp - 0x24], eax

loc_fffafc1f:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffafbae  ; jne 0xfffafbae

loc_fffafc25:  ; not directly referenced
mov edx, dword [ebp - 0x20]
mov eax, dword [edi + 0x103f]
shl edx, 8
mov ebx, dword [ebp - 0x24]
lea eax, [edx + eax + 0x180c]
mov dword [eax], ebx
jmp near loc_fffafed2  ; jmp 0xfffafed2

loc_fffafc42:  ; not directly referenced
cmp dword [ebp + 0x10], 0x7f
mov eax, 0x7f
cmovle eax, dword [ebp + 0x10]
mov ebx, dword [edi + 0x103f]
mov edx, eax
and edx, 0x7f
mov ecx, edx
shl ecx, 7
or ecx, edx
mov edx, dword [ebp - 0x20]
shl edx, 8
cmp byte [ebp - 0x2c], 0
lea edx, [edx + ebx + 0x1408]
mov dword [edx], ecx
je loc_fffafed2  ; je 0xfffafed2
mov dword [esi + 0x19d], eax
mov dword [esi + 0x1a1], eax
jmp near loc_fffafed2  ; jmp 0xfffafed2

loc_fffafc8b:  ; not directly referenced
cmp dword [ebp + 0x10], 0x7f
mov ecx, 0x7f
mov edx, dword [ebp + 0x10]
cmovg edx, ecx
cmp dword [ebp - 0x24], 0
je short loc_fffafcd7  ; je 0xfffafcd7
test byte [ebp - 0x30], 1
mov cl, dl
jne short loc_fffafcae  ; jne 0xfffafcae
mov cl, byte [esi + 0x195]

loc_fffafcae:  ; not directly referenced
and ecx, 0x7f
and ecx, 0x7f
test byte [ebp - 0x30], 2
je short loc_fffafcbc  ; je 0xfffafcbc
jmp short loc_fffafcc2  ; jmp 0xfffafcc2

loc_fffafcbc:  ; not directly referenced
mov dl, byte [esi + 0x199]

loc_fffafcc2:  ; not directly referenced
and edx, 0x7f
mov eax, edx
and eax, 0x7f
shl eax, 7
or eax, ecx
cmp byte [ebp - 0x2c], 0
jne short loc_fffafd22  ; jne 0xfffafd22
jmp short loc_fffafd38  ; jmp 0xfffafd38

loc_fffafcd7:  ; not directly referenced
mov ebx, edx
and ebx, 0x7f
mov eax, ebx
shl eax, 7
or eax, ebx
cmp edx, 0x7f
cmovg edx, ecx
mov ebx, edx
and ebx, 0x7f
mov ecx, ebx
shl ecx, 7
or ecx, ebx
mov ebx, dword [ebp - 0x20]
shl ebx, 8
mov dword [ebp - 0x24], ecx
mov ecx, dword [edi + 0x103f]
cmp byte [ebp - 0x2c], 0
lea ecx, [ebx + ecx + 0x1208]
mov ebx, dword [ebp - 0x24]
mov dword [ecx], ebx
je short loc_fffafd38  ; je 0xfffafd38
mov dword [esi + 0x18d], edx
mov dword [esi + 0x191], edx

loc_fffafd22:  ; not directly referenced
mov edx, eax
and edx, 0x7f
mov dword [esi + 0x195], edx
mov edx, eax
shr edx, 7
mov dword [esi + 0x199], edx

loc_fffafd38:  ; not directly referenced
mov edx, dword [ebp - 0x20]
mov ecx, dword [edi + 0x103f]
shl edx, 8
lea edx, [edx + ecx + 0x1a08]
jmp near loc_fffafed0  ; jmp 0xfffafed0

loc_fffafd50:  ; not directly referenced
cmp dword [ebp + 0x10], 0x7f
mov eax, 0x7f
cmovle eax, dword [ebp + 0x10]
mov ebx, dword [edi + 0x103f]
mov edx, eax
and edx, 0x7f
mov ecx, edx
shl ecx, 7
or ecx, edx
mov edx, dword [ebp - 0x20]
shl edx, 8
cmp byte [ebp - 0x2c], 0
lea edx, [edx + ebx + 0x1208]
mov dword [edx], ecx
je loc_fffafed2  ; je 0xfffafed2
mov dword [esi + 0x18d], eax
mov dword [esi + 0x191], eax
jmp near loc_fffafed2  ; jmp 0xfffafed2

loc_fffafd99:  ; not directly referenced
movzx edx, byte [ebp - 0x28]
mov eax, 0x7f
cmp dword [ebp + 0x10], 0x7f
mov ebx, esi
cmovle eax, dword [ebp + 0x10]
mov dword [ebp - 0x34], 0
mov dword [ebp - 0x1c], 0
mov dword [ebp - 0x30], edx

loc_fffafdbd:  ; not directly referenced
mov edx, dword [ebp - 0x30]
mov ecx, dword [ebp - 0x34]
bt edx, ecx
jae short loc_fffafde6  ; jae 0xfffafde6
imul ecx, ecx, 7
mov edx, eax
shl edx, cl
add dword [ebp - 0x1c], edx
cmp byte [ebp - 0x2c], 0
je short loc_fffafdf6  ; je 0xfffafdf6
mov byte [ebx + 0x301], al
mov byte [ebx + 0x305], al
jmp short loc_fffafdf6  ; jmp 0xfffafdf6

loc_fffafde6:  ; not directly referenced
imul ecx, dword [ebp - 0x34], 7
movzx edx, byte [ebx + 0x301]
shl edx, cl
add dword [ebp - 0x1c], edx

loc_fffafdf6:  ; not directly referenced
inc dword [ebp - 0x34]
inc ebx
cmp dword [ebp - 0x34], 4
jne short loc_fffafdbd  ; jne 0xfffafdbd
cmp dword [ebp - 0x24], 0
mov eax, dword [ebp - 0x1c]
je short loc_fffafe26  ; je 0xfffafe26
cmp byte [edi + 0x16bb], 0
je short loc_fffafe26  ; je 0xfffafe26
movzx edx, byte [esi + 0x301]
and eax, 0xffe03fff
and edx, 0x7f
shl edx, 0xe
or eax, edx

loc_fffafe26:  ; not directly referenced
mov ebx, dword [ebp - 0x20]
mov edx, dword [edi + 0x103f]
shl ebx, 8
cmp dword [ebp - 0x24], 0
mov dword [ebp - 0x2c], ebx
lea edx, [ebx + edx + 0x1c18]
mov dword [edx], eax
je short loc_fffafebb  ; je 0xfffafebb
mov ecx, dword [ebp - 0x20]
xor edx, edx
shl ecx, 2
mov dword [ebp - 0x24], 0
movzx ebx, byte [edi + 0x16bc]
sar ebx, cl
and ebx, 0xf
jmp short loc_fffafe8f  ; jmp 0xfffafe8f

loc_fffafe61:  ; not directly referenced
mov cl, byte [ebp - 0x1c]
mov eax, ebx
shr eax, cl
and eax, 1
cmp eax, edx
jne short loc_fffafe80  ; jne 0xfffafe80
imul ecx, dword [ebp - 0x1c], 7
movzx eax, byte [esi + edx + 0x305]
shl eax, cl
add dword [ebp - 0x24], eax

loc_fffafe80:  ; not directly referenced
inc dword [ebp - 0x1c]
cmp dword [ebp - 0x1c], 4
jne short loc_fffafe61  ; jne 0xfffafe61
inc edx
cmp edx, 4
je short loc_fffafe98  ; je 0xfffafe98

loc_fffafe8f:  ; not directly referenced
mov dword [ebp - 0x1c], 0
jmp short loc_fffafe61  ; jmp 0xfffafe61

loc_fffafe98:  ; not directly referenced
mov ecx, dword [ebp - 0x24]
mov edx, dword [ebp - 0x24]
shr ecx, 0xe
mov eax, dword [ebp - 0x24]
shr edx, 0x15
and ecx, 0x7f
and edx, 0x7f
and eax, 0xffe03fff
add edx, ecx
shr edx, 1
shl edx, 0xe
or eax, edx

loc_fffafebb:  ; not directly referenced
mov edx, dword [edi + 0x103f]
mov ebx, dword [ebp - 0x2c]
and eax, 0xf01fffff
lea edx, [ebx + edx + 0x1218]

loc_fffafed0:  ; not directly referenced
mov dword [edx], eax

loc_fffafed2:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffafeda:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, eax
lea esp, [esp - 0x1c]
cmp dl, 1
mov byte [ebp - 0x19], cl
mov edi, dword [ebp + 8]
mov cl, byte [ebp + 0xc]
je short loc_fffaff19  ; je 0xfffaff19
jb short loc_fffaff01  ; jb 0xfffaff01
cmp dl, 2
jne loc_fffb009a  ; jne 0xfffb009a
jmp short loc_fffaff32  ; jmp 0xfffaff32

loc_fffaff01:  ; not directly referenced
movzx esi, byte [ebx + 0x1760]
mov al, byte [eax + 0x175f]
shr al, 6
and esi, 0x1f
shl esi, 2
jmp short loc_fffaff2e  ; jmp 0xfffaff2e

loc_fffaff19:  ; not directly referenced
movzx esi, byte [ebx + 0x175f]
mov al, byte [eax + 0x175e]
shr al, 7
and esi, 0x3f
add esi, esi

loc_fffaff2e:  ; not directly referenced
or eax, esi
jmp short loc_fffaff3b  ; jmp 0xfffaff3b

loc_fffaff32:  ; not directly referenced
mov al, byte [eax + 0x175e]
and eax, 0x7f

loc_fffaff3b:  ; not directly referenced
mov esi, 0xffffff80
or esi, eax
test al, 0xc0
cmovne eax, esi
movsx eax, al
lea esi, [edi + eax]
mov eax, 0xffffffca
cmp esi, 0xffffffffffffffca
cmovge eax, esi
mov esi, 0x36
cmp eax, 0x36
cmovle esi, eax
cmp byte [ebp - 0x19], 0
je loc_fffafffd  ; je 0xfffafffd
cmp dl, 1
je short loc_fffaffb2  ; je 0xfffaffb2
jb short loc_fffaff7f  ; jb 0xfffaff7f
cmp dl, 2
jne loc_fffb009a  ; jne 0xfffb009a
jmp short loc_fffaffe5  ; jmp 0xfffaffe5

loc_fffaff7f:  ; not directly referenced
mov eax, esi
shl eax, 6
mov edi, eax
mov al, byte [ebx + 0x175f]
and eax, 0x3f
or eax, edi
mov edi, esi
shr edi, 2
mov byte [ebx + 0x175f], al
mov al, byte [ebx + 0x1760]
and edi, 0x1f
and eax, 0xffffffe0
or eax, edi
mov byte [ebx + 0x1760], al
jmp short loc_fffafffd  ; jmp 0xfffafffd

loc_fffaffb2:  ; not directly referenced
mov edi, esi
mov al, byte [ebx + 0x175e]
and edi, 1
and eax, 0x7f
shl edi, 7
or eax, edi
mov edi, esi
shr edi, 1
mov byte [ebx + 0x175e], al
mov al, byte [ebx + 0x175f]
and edi, 0x3f
and eax, 0xffffffc0
or eax, edi
mov byte [ebx + 0x175f], al
jmp short loc_fffafffd  ; jmp 0xfffafffd

loc_fffaffe5:  ; not directly referenced
mov eax, esi
and eax, 0x7f
mov edi, eax
mov al, byte [ebx + 0x175e]
and eax, 0xffffff80
or eax, edi
mov byte [ebx + 0x175e], al

loc_fffafffd:  ; not directly referenced
mov edi, dword [ebx + 0x103f]
cmp dl, 1
mov eax, dword [edi + 0xf78]
je short loc_fffb002f  ; je 0xfffb002f
jb short loc_fffb001b  ; jb 0xfffb001b
cmp dl, 2
jne loc_fffb009a  ; jne 0xfffb009a
jmp short loc_fffb0043  ; jmp 0xfffb0043

loc_fffb001b:  ; not directly referenced
and esi, 0x7f
and eax, 0xffe03fff
shl esi, 0xe
or eax, esi
mov esi, 0x40000000
jmp short loc_fffb0050  ; jmp 0xfffb0050

loc_fffb002f:  ; not directly referenced
and esi, 0x7f
and eax, 0xffffc07f
shl esi, 7
or eax, esi
mov esi, 0x80000000
jmp short loc_fffb0050  ; jmp 0xfffb0050

loc_fffb0043:  ; not directly referenced
and esi, 0x7f
and eax, 0xffffff80
or eax, esi
mov esi, 0x20000000

loc_fffb0050:  ; not directly referenced
test cl, cl
mov dword [edi + 0xf78], eax
jne short loc_fffb009a  ; jne 0xfffb009a
mov cl, 0x32

loc_fffb005c:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
mov eax, dword [eax + 0xf78]
and eax, esi
cmp eax, esi
jne short loc_fffb0082  ; jne 0xfffb0082

loc_fffb006e:  ; not directly referenced
lea esp, [esp + 0x1c]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
mov edx, 0x4b
jmp near fcn_fffb2d3a  ; jmp 0xfffb2d3a

loc_fffb0082:  ; not directly referenced
mov edx, 0xf
mov eax, ebx
mov byte [ebp - 0x20], cl
call fcn_fffb2d76  ; call 0xfffb2d76
mov cl, byte [ebp - 0x20]
dec cl
jne short loc_fffb005c  ; jne 0xfffb005c
jmp short loc_fffb006e  ; jmp 0xfffb006e

loc_fffb009a:  ; not directly referenced
lea esp, [esp + 0x1c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb00a3:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, ecx
push esi
mov esi, eax
push ebx
movzx ebx, dl
lea esp, [esp - 0x1c]
mov eax, dword [ebp + 0xc]
mov cl, byte [ebp + 0x10]
cmp eax, 1
mov dl, byte [ebp + 8]
mov byte [ebp - 0x19], cl
je short loc_fffb00cc  ; je 0xfffb00cc
cmp eax, 2
jne short loc_fffb00e4  ; jne 0xfffb00e4
jmp short loc_fffb00d8  ; jmp 0xfffb00d8

loc_fffb00cc:  ; not directly referenced
movzx eax, bl
lea edx, [eax*8 + 0x48d8]
jmp short loc_fffb0132  ; jmp 0xfffb0132

loc_fffb00d8:  ; not directly referenced
movzx eax, bl
lea edx, [eax*8 + 0x48f8]
jmp short loc_fffb0132  ; jmp 0xfffb0132

loc_fffb00e4:  ; not directly referenced
shl ebx, 8
test edi, edi
je short loc_fffb00f3  ; je 0xfffb00f3
add ebx, 0x3074
jmp short loc_fffb00fe  ; jmp 0xfffb00fe

loc_fffb00f3:  ; not directly referenced
movzx eax, byte [ebp - 0x19]
shl eax, 9
lea ebx, [ebx + eax + 0x74]

loc_fffb00fe:  ; not directly referenced
add ebx, dword [esi + 0x103f]
mov esi, dword [ebp + 0x14]
and esi, 1
mov ecx, dword [ebp + 0x18]
shl esi, 0x14
and ecx, 1
shl ecx, 0x15
and edx, 3
shl edx, 0x16
mov eax, dword [ebx]
and eax, 0xffcfffff
or eax, esi
or eax, ecx
and eax, 0xff3fffff
or eax, edx
mov dword [ebx], eax
jmp short loc_fffb015f  ; jmp 0xfffb015f

loc_fffb0132:  ; not directly referenced
mov eax, esi
call MCHBAR64
mov eax, dword [esi + 0x103f]
and edx, 0x7000000
movzx ecx, bl
shr edx, 0x16
lea eax, [eax + ecx*4 + 0x4930]
mov cl, dl
mov eax, dword [eax]
shr eax, cl
mov dl, al
and edx, 3
jmp short loc_fffb00e4  ; jmp 0xfffb00e4

loc_fffb015f:  ; not directly referenced
lea esp, [esp + 0x1c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb0168:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x1c]
mov dword [ebp - 0x20], edx
imul edx, edx, 0x1347
mov byte [ebp - 0x1a], cl
mov cl, byte [ebp + 8]
mov ebx, dword [ebp + 0x10]
mov byte [ebp - 0x19], cl
mov cl, byte [ebp + 0xc]
test cl, cl
mov word [ebp - 0x1c], bx
mov edi, ebx
lea edx, [eax + edx + 0x297c]
je short loc_fffb01b2  ; je 0xfffb01b2
movzx ebx, byte [ebp - 0x1a]
movzx esi, byte [ebp - 0x19]
lea ebx, [ebx + ebx*8]
lea ebx, [esi + ebx + 0x130]
mov di, word [edx + ebx*2 + 0xd]

loc_fffb01b2:  ; not directly referenced
and di, 0x1ff
mov bl, cl
and edi, 0x1ff
cmp cl, 5
sete byte [ebp - 0x21]
and ebx, 0xfffffffb
dec bl
jne short loc_fffb01d2  ; jne 0xfffb01d2
mov bl, byte [ebp - 0x1c]
jmp short loc_fffb01e6  ; jmp 0xfffb01e6

loc_fffb01d2:  ; not directly referenced
movzx ebx, byte [ebp - 0x1a]
movzx esi, byte [ebp - 0x19]
lea ebx, [ebx + ebx*8]
add ebx, edx
mov bl, byte [esi + ebx + 0x1106]

loc_fffb01e6:  ; not directly referenced
and ebx, 0x3f
mov esi, ebx
and esi, 0x3f
shl esi, 9
or esi, edi
cmp cl, 2
mov dword [ebp - 0x28], esi
jne short loc_fffb0205  ; jne 0xfffb0205
mov bl, byte [ebp - 0x1c]
and ebx, 0x1f
mov esi, ebx
jmp short loc_fffb021d  ; jmp 0xfffb021d

loc_fffb0205:  ; not directly referenced
movzx esi, byte [ebp - 0x1a]
movzx edi, byte [ebp - 0x19]
lea esi, [esi + esi*8]
add esi, edx
movzx esi, byte [edi + esi + 0x10e2]
and esi, 0x1f

loc_fffb021d:  ; not directly referenced
and esi, 0x1f
shl esi, 0xf
or esi, dword [ebp - 0x28]
cmp cl, 3
sete bl
or bl, byte [ebp - 0x21]
je short loc_fffb0236  ; je 0xfffb0236
mov bl, byte [ebp - 0x1c]
jmp short loc_fffb024a  ; jmp 0xfffb024a

loc_fffb0236:  ; not directly referenced
movzx ebx, byte [ebp - 0x1a]
movzx edi, byte [ebp - 0x19]
lea ebx, [ebx + ebx*8]
add ebx, edx
mov bl, byte [edi + ebx + 0x112a]

loc_fffb024a:  ; not directly referenced
and ebx, 0x3f
and ebx, 0x3f
shl ebx, 0x14
or ebx, esi
cmp cl, 4
jne short loc_fffb025f  ; jne 0xfffb025f
mov dl, byte [ebp - 0x1c]
jmp short loc_fffb026a  ; jmp 0xfffb026a

loc_fffb025f:  ; not directly referenced
movzx ecx, byte [ebp - 0x19]
mov dl, byte [edx + ecx + 0x10d9]

loc_fffb026a:  ; not directly referenced
and edx, 0x3f
mov edi, dword [ebp - 0x20]
shl edx, 0x1a
sub esp, 0xc
movzx ecx, byte [ebp - 0x1a]
or edx, ebx
movzx ebx, byte [ebp - 0x19]
shl edi, 6
mov esi, ebx
shl esi, 7
add edi, ecx
add edi, esi
mov esi, dword [eax + 0x103f]
lea esi, [esi + edi*4]
mov dword [esi], edx
mov edx, dword [ebp - 0x20]
push 0
push 1
push ebx
push 0
push ecx
xor ecx, ecx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb02b4:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, edx
imul edx, edx, 0x1347
push esi
push ebx
lea esp, [esp - 0x1c]
mov bl, byte [ebp + 0xc]
mov byte [ebp - 0x1c], cl
cmp bl, 3
mov cl, byte [ebp + 8]
lea edx, [eax + edx + 0x297c]
mov byte [ebp - 0x1d], cl
jne short loc_fffb02e6  ; jne 0xfffb02e6
mov edx, dword [ebp + 0x10]
jmp near loc_fffb0371  ; jmp 0xfffb0371

loc_fffb02e6:  ; not directly referenced
test bl, bl
jne short loc_fffb02ef  ; jne 0xfffb02ef
mov ecx, dword [ebp + 0x10]
jmp short loc_fffb0306  ; jmp 0xfffb0306

loc_fffb02ef:  ; not directly referenced
movzx ecx, byte [ebp - 0x1c]
movzx esi, byte [ebp - 0x1d]
lea ecx, [ecx + ecx*8]
lea ecx, [esi + ecx + 0x110]
mov cx, word [edx + ecx*2 + 5]

loc_fffb0306:  ; not directly referenced
and cx, 0x1ff
mov esi, ecx
and esi, 0x1ff
cmp bl, 1
mov dword [ebp - 0x24], esi
jne short loc_fffb0320  ; jne 0xfffb0320
mov ecx, dword [ebp + 0x10]
jmp short loc_fffb0337  ; jmp 0xfffb0337

loc_fffb0320:  ; not directly referenced
movzx ecx, byte [ebp - 0x1c]
movzx esi, byte [ebp - 0x1d]
lea ecx, [ecx + ecx*8]
lea ecx, [esi + ecx + 0xe8]
mov cx, word [edx + ecx*2 + 0xd]

loc_fffb0337:  ; not directly referenced
and cx, 0x1ff
and ecx, 0x1ff
shl ecx, 9
or ecx, dword [ebp - 0x24]
cmp bl, 2
jne short loc_fffb0352  ; jne 0xfffb0352
mov dl, byte [ebp + 0x10]
jmp short loc_fffb0366  ; jmp 0xfffb0366

loc_fffb0352:  ; not directly referenced
movzx esi, byte [ebp - 0x1c]
movzx ebx, byte [ebp - 0x1d]
lea esi, [esi + esi*8]
add edx, esi
mov dl, byte [ebx + edx + 0x309]

loc_fffb0366:  ; not directly referenced
and edx, 0x3f
and edx, 0x3f
shl edx, 0x14
or edx, ecx

loc_fffb0371:  ; not directly referenced
mov esi, edi
sub esp, 0xc
movzx ecx, byte [ebp - 0x1c]
shl esi, 8
movzx ebx, byte [ebp - 0x1d]
lea esi, [esi + ecx*4 + 0x20]
mov dword [ebp - 0x24], esi
mov esi, ebx
shl esi, 9
mov dword [ebp - 0x1c], esi
mov esi, dword [ebp - 0x24]
add esi, dword [ebp - 0x1c]
add esi, dword [eax + 0x103f]
mov dword [esi], edx
mov edx, edi
push 1
push 0
push ebx
push 0
push ecx
xor ecx, ecx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb03ba:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
lea eax, [ebp - 0x13f]
push ebx
lea esp, [esp - 0x17c]
mov byte [ebp - 0x150], dl
mov byte [ebp - 0x155], cl
mov edx, 7
mov ecx, 1
mov bl, byte [ebp + 8]
mov edi, dword [ebp + 0xc]
call mrc_setmem
cmp byte [ebp - 0x155], 0xb
mov al, byte [ebp - 0x155]
setne byte [ebp - 0x156]
dec eax
cmp al, 1
seta al
test byte [ebp - 0x156], al
jne loc_fffb0b03  ; jne 0xfffb0b03
cmp byte [ebp - 0x155], 0xb
jne short loc_fffb045b  ; jne 0xfffb045b
sub esp, 0xc
sub edi, 3
mov eax, edi
push 0
movzx ecx, al
mov eax, esi
movzx edx, byte [ebp - 0x150]
call fcn_fffc5844  ; call 0xfffc5844
add esp, 0x10
dec bl
mov byte [esi + 0x1768], 0xa
je short loc_fffb0454  ; je 0xfffb0454

loc_fffb0448:  ; not directly referenced
mov dword [ebp - 0x15c], 0
jmp short loc_fffb04ad  ; jmp 0xfffb04ad

loc_fffb0454:  ; not directly referenced
mov edx, 8
jmp short loc_fffb0488  ; jmp 0xfffb0488

loc_fffb045b:  ; not directly referenced
sub esp, 0xc
mov edx, edi
push 0
movzx ecx, dl
mov eax, esi
movzx edx, byte [ebp - 0x150]
call fcn_fffc5844  ; call 0xfffc5844
add esp, 0x10
dec bl
jne short loc_fffb0448  ; jne 0xfffb0448
cmp byte [ebp - 0x155], 1
jne short loc_fffb0454  ; jne 0xfffb0454
mov edx, 9

loc_fffb0488:  ; not directly referenced
push 1
mov ecx, 0x88888888
mov eax, esi
push 0
push 1
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
mov dword [ebp - 0x15c], eax
add esp, 0x20

loc_fffb04ad:  ; not directly referenced
lea ebx, [esi + 0x2974]
mov dword [ebp - 0x178], ebx
movzx ebx, byte [ebp - 0x155]
mov dword [ebp - 0x150], 0
mov dword [ebp - 0x174], 0
mov dword [ebp - 0x17c], ebx
jmp near loc_fffb0abe  ; jmp 0xfffb0abe

loc_fffb04df:  ; not directly referenced
mov ecx, dword [ebp - 0x164]
mov edx, edi
mov eax, esi
call fcn_fffc41bb  ; call 0xfffc41bb
or byte [ebp - 0x154], al
movzx ebx, byte [ebp - 0x154]
bt ebx, edi
mov dword [ebp - 0x16c], ebx
jae loc_fffb0605  ; jae 0xfffb0605
imul eax, edi, 0x1347
mov edx, dword [ebp - 0x178]
mov ecx, dword [ebp - 0x160]
mov byte [ebp - 0x14c], 0
lea ebx, [edx + eax + 8]
add ecx, ebx
mov dword [ebp - 0x170], ecx
jmp near loc_fffb05c0  ; jmp 0xfffb05c0

loc_fffb0534:  ; not directly referenced
cmp byte [ebp - 0x155], 1
jne short loc_fffb0574  ; jne 0xfffb0574
movzx eax, byte [ebp - 0x14c]
mov edx, dword [ebp - 0x170]
add edx, eax
mov byte [edx + 0x1106], 0x20
mov byte [edx + 0x112a], 0x20
push ecx
mov edx, edi
mov ecx, dword [ebp - 0x150]
push 0
push 0xff
push eax
mov eax, esi
call fcn_fffb0168  ; call 0xfffb0168
jmp short loc_fffb05b7  ; jmp 0xfffb05b7

loc_fffb0574:  ; not directly referenced
cmp byte [ebp - 0x155], 2
jne short loc_fffb05ba  ; jne 0xfffb05ba
movzx eax, byte [ebp - 0x14c]
mov edx, dword [ebp - 0x160]
add edx, eax
mov cx, word [ebx + edx*2 + 0x1dd]
add ecx, 0x20
mov word [ebx + edx*2 + 0x225], cx
mov ecx, dword [ebp - 0x150]
push edx
mov edx, edi
push 0
push 0xff
push eax
mov eax, esi
call fcn_fffb02b4  ; call 0xfffb02b4

loc_fffb05b7:  ; not directly referenced
add esp, 0x10

loc_fffb05ba:  ; not directly referenced
inc byte [ebp - 0x14c]

loc_fffb05c0:  ; not directly referenced
movzx ecx, byte [esi + 0x1755]
cmp byte [ebp - 0x14c], cl
jb short loc_fffb05f6  ; jb 0xfffb05f6

loc_fffb05cf:  ; not directly referenced
lea eax, [ebx + 0xf9]
xor edx, edx
call mrc_fillword
mov edx, edi
mov eax, dword [esi + 0x103f]
shl edx, 0xa
lea eax, [edx + eax + 0x40f0]
mov dword [eax], 0
jmp short loc_fffb0605  ; jmp 0xfffb0605

loc_fffb05f6:  ; not directly referenced
cmp byte [ebp - 0x156], 0
jne loc_fffb0534  ; jne 0xfffb0534
jmp short loc_fffb05cf  ; jmp 0xfffb05cf

loc_fffb0605:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffb04df  ; jne 0xfffb04df
cmp byte [ebp - 0x154], 0
je loc_fffb0aaf  ; je 0xfffb0aaf
mov edi, 0xffffffe1

loc_fffb0621:  ; not directly referenced
cmp byte [ebp - 0x155], 0xb
jne short loc_fffb0688  ; jne 0xfffb0688
xor ebx, ebx

loc_fffb062c:  ; not directly referenced
mov eax, dword [ebp - 0x16c]
bt eax, ebx
jb short loc_fffb0671  ; jb 0xfffb0671

loc_fffb0637:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffb062c  ; jne 0xfffb062c
jmp short loc_fffb06aa  ; jmp 0xfffb06aa

loc_fffb063f:  ; not directly referenced
push 1
movzx eax, byte [ebp - 0x14c]
mov ecx, edi
push 0
mov edx, 0xb
push 0
push eax
push dword [ebp - 0x150]
mov eax, esi
push ebx
push 0
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
inc byte [ebp - 0x14c]
add esp, 0x20
jmp short loc_fffb0678  ; jmp 0xfffb0678

loc_fffb0671:  ; not directly referenced
mov byte [ebp - 0x14c], 0

loc_fffb0678:  ; not directly referenced
mov dl, byte [ebp - 0x14c]
cmp dl, byte [esi + 0x1755]
jb short loc_fffb063f  ; jb 0xfffb063f
jmp short loc_fffb0637  ; jmp 0xfffb0637

loc_fffb0688:  ; not directly referenced
push 1
mov ecx, edi
mov edx, dword [ebp - 0x17c]
push 0
mov eax, esi
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffb06aa:  ; not directly referenced
push eax
lea ebx, [ebp - 0x13f]
mov edx, dword [ebp - 0x16c]
push 0
movzx ecx, byte [esi + 0x1768]
mov eax, esi
push 1
push ebx
lea ebx, [ebp - 0xf0]
call fcn_fffb21f3  ; call 0xfffb21f3
lea eax, [ebp - 0x60]
lea edx, [ebp - 0xa8]
mov dword [ebp - 0x14c], eax
mov dword [ebp - 0x15c], edx
lea eax, [edi - 1]
mov dword [ebp - 0x184], ebx
lea edx, [ebp - 0x138]
add esp, 0x10
mov dword [ebp - 0x154], 0
mov dword [ebp - 0x180], eax

loc_fffb0707:  ; not directly referenced
mov ebx, dword [ebp - 0x16c]
mov eax, dword [ebp - 0x154]
bt ebx, eax
jb short loc_fffb0744  ; jb 0xfffb0744

loc_fffb0718:  ; not directly referenced
inc dword [ebp - 0x154]
add dword [ebp - 0x14c], 0x24
add dword [ebp - 0x15c], 0x24
add dword [ebp - 0x184], 0x24
add edx, 0x24
cmp dword [ebp - 0x154], 2
jne short loc_fffb0707  ; jne 0xfffb0707
jmp near loc_fffb0867  ; jmp 0xfffb0867

loc_fffb0744:  ; not directly referenced
mov ebx, dword [ebp - 0x154]
mov ecx, dword [esi + 0x103f]
shl ebx, 0xa
mov al, byte [esi + 0x1755]
mov byte [ebp - 0x164], al
lea ecx, [ebx + ecx + 0x40ec]
mov ebx, dword [ecx]
xor ecx, ecx
and ebx, 0xffff
mov dword [ebp - 0x170], ebx
jmp near loc_fffb0856  ; jmp 0xfffb0856

loc_fffb077b:  ; not directly referenced
mov ebx, dword [ebp - 0x170]
sar ebx, cl
and ebx, 1
xor ebx, 1
cmp edi, 0xffffffffffffffe1
jne short loc_fffb07f5  ; jne 0xfffb07f5
test ebx, ebx
je short loc_fffb07c5  ; je 0xfffb07c5
mov ebx, dword [ebp - 0x14c]
mov eax, dword [ebp - 0x15c]
mov dword [edx + ecx*4], 0xffffffe1
mov dword [ebx + ecx*4], 0xffffffe1
mov ebx, dword [ebp - 0x184]
mov dword [eax + ecx*4], 0xffffffe1
mov dword [ebx + ecx*4], 0xffffffe1
jmp near loc_fffb0855  ; jmp 0xfffb0855

loc_fffb07c5:  ; not directly referenced
mov eax, dword [ebp - 0x14c]
mov ebx, dword [ebp - 0x15c]
mov dword [edx + ecx*4], 0xffffffdf
mov dword [eax + ecx*4], 0xffffffdf
mov eax, dword [ebp - 0x184]
mov dword [ebx + ecx*4], 0xffffffdf
mov dword [eax + ecx*4], 0xffffffdf
jmp short loc_fffb0855  ; jmp 0xfffb0855

loc_fffb07f5:  ; not directly referenced
test ebx, ebx
je short loc_fffb0855  ; je 0xfffb0855
mov ebx, dword [ebp - 0x184]
mov eax, dword [ebp - 0x180]
cmp dword [ebx + ecx*4], eax
je short loc_fffb080d  ; je 0xfffb080d
mov dword [edx + ecx*4], edi

loc_fffb080d:  ; not directly referenced
mov ebx, dword [ebp - 0x184]
mov eax, dword [edx + ecx*4]
mov dword [ebp - 0x160], eax
mov dword [ebx + ecx*4], edi
mov ebx, edi
sub ebx, eax
mov dword [ebp - 0x168], ebx
mov ebx, dword [ebp - 0x14c]
mov eax, dword [ebx + ecx*4]
mov ebx, dword [ebp - 0x15c]
sub eax, dword [ebx + ecx*4]
cmp dword [ebp - 0x168], eax
jle short loc_fffb0855  ; jle 0xfffb0855
mov eax, dword [ebp - 0x160]
mov dword [ebx + ecx*4], eax
mov ebx, dword [ebp - 0x14c]
mov dword [ebx + ecx*4], edi

loc_fffb0855:  ; not directly referenced
inc ecx

loc_fffb0856:  ; not directly referenced
cmp byte [ebp - 0x164], cl
ja loc_fffb077b  ; ja 0xfffb077b
jmp near loc_fffb0718  ; jmp 0xfffb0718

loc_fffb0867:  ; not directly referenced
inc edi
cmp edi, 0x20
jne loc_fffb0621  ; jne 0xfffb0621
push 2
xor ecx, ecx
mov edx, dword [ebp - 0x17c]
push 0
mov eax, esi
xor di, di
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
imul ebx, dword [ebp - 0x150], 9
mov dword [ebp - 0x15c], eax
mov dword [ebp - 0x160], ebx
add esp, 0x20
imul ebx, dword [ebp - 0x150], 0x12
mov dword [ebp - 0x164], ebx

loc_fffb08b6:  ; not directly referenced
mov ebx, dword [ebp - 0x16c]
bt ebx, edi
jae loc_fffb0aa5  ; jae 0xfffb0aa5
imul eax, edi, 0x1347
mov ebx, dword [ebp - 0x178]
mov byte [ebp - 0x154], 0
lea eax, [ebx + eax + 8]
mov dword [ebp - 0x14c], eax
add eax, dword [ebp - 0x160]
mov dword [ebp - 0x170], eax
jmp near loc_fffb0a5a  ; jmp 0xfffb0a5a

loc_fffb08f3:  ; not directly referenced
movzx eax, byte [ebp - 0x154]
lea edx, [edi + edi*8]
add edx, eax
mov ecx, dword [ebp + edx*4 - 0x60]
mov edx, dword [ebp + edx*4 - 0xa8]
mov dword [ebp - 0x180], ecx
sub ecx, edx
cmp ecx, 7
jle short loc_fffb0923  ; jle 0xfffb0923
sar ecx, 1
add ecx, edx
mov dword [ebp - 0x174], ecx
jmp short loc_fffb092d  ; jmp 0xfffb092d

loc_fffb0923:  ; not directly referenced
mov dword [ebp - 0x15c], 9

loc_fffb092d:  ; not directly referenced
imul ebx, edx, 0xfffffffffffffff6
imul ecx, edx, 0xa
test edx, edx
cmovs ecx, ebx
imul edx, dword [ebp - 0x180], 0xa
imul ebx, dword [ebp - 0x180], 0xfffffffffffffff6
cmp dword [ebp - 0x180], 0
cmovs edx, ebx
cmp byte [ebp - 0x155], 1
jne short loc_fffb0993  ; jne 0xfffb0993
lea ebx, [edi + edi*8]
add ebx, dword [ebp - 0x164]
lea ebx, [eax + ebx + 0x5e]
mov dword [esi + ebx*8 + 0x16c8], edx
mov edx, dword [ebp - 0x170]
add edx, eax
mov dword [esi + ebx*8 + 0x16c4], ecx
mov cl, byte [ebp - 0x174]
add byte [edx + 0x1106], cl
add byte [edx + 0x112a], cl
jmp near loc_fffb0a39  ; jmp 0xfffb0a39

loc_fffb0993:  ; not directly referenced
cmp byte [ebp - 0x155], 2
jne short loc_fffb09f2  ; jne 0xfffb09f2
lea ebx, [edi + edi*8]
add ebx, dword [ebp - 0x164]
lea ebx, [eax + ebx + 0xee]
mov dword [esi + ebx*8 + 0x16c4], ecx
mov dword [esi + ebx*8 + 0x16c8], edx
mov ebx, dword [ebp - 0x160]
mov ecx, dword [ebp - 0x174]
lea edx, [eax + ebx + 0x110]
mov ebx, dword [ebp - 0x14c]
add word [ebx + edx*2 + 5], cx
mov ecx, dword [ebp - 0x150]
push ebx
mov edx, edi
push 0
push 0xff
push eax
mov eax, esi
call fcn_fffb02b4  ; call 0xfffb02b4
jmp short loc_fffb0a51  ; jmp 0xfffb0a51

loc_fffb09f2:  ; not directly referenced
cmp byte [ebp - 0x155], 0xb
jne short loc_fffb0a54  ; jne 0xfffb0a54
lea ebx, [edi + edi*8]
add ebx, dword [ebp - 0x164]
lea ebx, [eax + ebx + 0x136]
mov dword [esi + ebx*8 + 0x16c4], ecx
mov dword [esi + ebx*8 + 0x16c8], edx
mov ebx, dword [ebp - 0x160]
mov ecx, dword [ebp - 0x174]
add ecx, ecx
lea edx, [eax + ebx + 0x130]
mov ebx, dword [ebp - 0x14c]
add word [ebx + edx*2 + 0xd], cx

loc_fffb0a39:  ; not directly referenced
push ecx
mov edx, edi
mov ecx, dword [ebp - 0x150]
push 0
push 0xff
push eax
mov eax, esi
call fcn_fffb0168  ; call 0xfffb0168

loc_fffb0a51:  ; not directly referenced
add esp, 0x10

loc_fffb0a54:  ; not directly referenced
inc byte [ebp - 0x154]

loc_fffb0a5a:  ; not directly referenced
mov bl, byte [ebp - 0x154]
cmp bl, byte [esi + 0x1755]
jb loc_fffb08f3  ; jb 0xfffb08f3
cmp byte [ebp - 0x155], 0xb
jne short loc_fffb0aa5  ; jne 0xfffb0aa5
mov edx, edi
mov eax, dword [esi + 0x103f]
shl edx, 0xa
mov ebx, dword [ebp - 0x14c]
lea ecx, [edx + eax + 0x4028]
movzx edx, byte [ebx + 0x10d5]
mov eax, dword [ecx]
and edx, 0x3f
and eax, 0xffc0ffff
shl edx, 0x10
or eax, edx
mov dword [ecx], eax

loc_fffb0aa5:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffb08b6  ; jne 0xfffb08b6

loc_fffb0aaf:  ; not directly referenced
inc dword [ebp - 0x150]
cmp dword [ebp - 0x150], 4
je short loc_fffb0af1  ; je 0xfffb0af1

loc_fffb0abe:  ; not directly referenced
imul ebx, dword [ebp - 0x150], 9
mov cl, byte [ebp - 0x150]
mov eax, 1
xor edi, edi
shl eax, cl
mov byte [ebp - 0x154], 0
and eax, 0xff
mov dword [ebp - 0x160], ebx
mov dword [ebp - 0x164], eax
jmp near loc_fffb04df  ; jmp 0xfffb04df

loc_fffb0af1:  ; not directly referenced
cmp byte [ebp - 0x155], 0xb
jne short loc_fffb0b0d  ; jne 0xfffb0b0d
mov eax, esi
call wait_5030
jmp short loc_fffb0b0d  ; jmp 0xfffb0b0d

loc_fffb0b03:  ; not directly referenced
mov dword [ebp - 0x15c], 2

loc_fffb0b0d:  ; not directly referenced
mov eax, dword [ebp - 0x15c]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb0b1b:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x1c]
cmp cl, 0x20
sete bl
cmp cl, 0x10
mov dword [ebp - 0x14], eax
sete al
or bl, al
mov esi, dword [ebp + 8]
jne short loc_fffb0b4f  ; jne 0xfffb0b4f
cmp cl, 0x21
sete bl
cmp cl, 0x11
sete al
or bl, al
je loc_fffb0be2  ; je 0xfffb0be2

loc_fffb0b4f:  ; not directly referenced
xor eax, eax
cmp cl, 0x21
ja short loc_fffb0b60  ; ja 0xfffb0b60
movzx ecx, cl
movzx eax, byte [ecx + ref_fffcc308]  ; movzx eax, byte [ecx - 0x33cf8]

loc_fffb0b60:  ; not directly referenced
imul eax, eax, 0x240
and esi, 0xff
imul esi, esi, 0x12
lea ebx, [edx + eax]
xor edi, edi
mov dword [ebp - 0x1c], esi

loc_fffb0b77:  ; not directly referenced
imul eax, edi, 0x1347
mov edx, dword [ebp - 0x14]
cmp dword [edx + eax + 0x297c], 2
je short loc_fffb0bc5  ; je 0xfffb0bc5

loc_fffb0b8a:  ; not directly referenced
inc edi
cmp edi, 2
je short loc_fffb0be2  ; je 0xfffb0be2
jmp short loc_fffb0b77  ; jmp 0xfffb0b77

loc_fffb0b92:  ; not directly referenced
movzx ecx, byte [ebp - 0xd]
add ecx, dword [ebp - 0x18]
xor edx, edx
inc byte [ebp - 0xd]
imul eax, dword [ebx + ecx*8], 0xf
lea esi, [ebx + ecx*8]
mov dword [ebp - 0x28], esi
mov esi, 0xa
mov dword [ebp - 0x20], eax
div esi
xor edx, edx
mov dword [ebx + ecx*8], eax
mov ecx, dword [ebp - 0x28]
imul eax, dword [ecx + 4], 0xf
div esi
mov dword [ecx + 4], eax
jmp short loc_fffb0bd2  ; jmp 0xfffb0bd2

loc_fffb0bc5:  ; not directly referenced
lea eax, [edi + edi*8]
add eax, dword [ebp - 0x1c]
mov byte [ebp - 0xd], 0
mov dword [ebp - 0x18], eax

loc_fffb0bd2:  ; not directly referenced
mov eax, dword [ebp - 0x14]
mov cl, byte [ebp - 0xd]
cmp cl, byte [eax + 0x1755]
jb short loc_fffb0b92  ; jb 0xfffb0b92
jmp short loc_fffb0b8a  ; jmp 0xfffb0b8a

loc_fffb0be2:  ; not directly referenced
lea esp, [esp + 0x1c]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb0bed:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x30]
cmp cl, 0xb
mov bl, byte [ebp + 0xc]
mov dword [ebp - 0x20], eax
movzx eax, byte [ebp + 8]
mov byte [ebp - 0x13], bl
je short loc_fffb0c3a  ; je 0xfffb0c3a
ja short loc_fffb0c1e  ; ja 0xfffb0c1e
cmp cl, 2
jbe short loc_fffb0c3a  ; jbe 0xfffb0c3a
lea ebx, [ecx - 4]
cmp bl, 1
ja loc_fffb0d58  ; ja 0xfffb0d58
jmp short loc_fffb0c3a  ; jmp 0xfffb0c3a

loc_fffb0c1e:  ; not directly referenced
cmp cl, 0x10
jb loc_fffb0d58  ; jb 0xfffb0d58
cmp cl, 0x11
jbe short loc_fffb0c40  ; jbe 0xfffb0c40
lea ebx, [ecx - 0x20]
cmp bl, 1
ja loc_fffb0d58  ; ja 0xfffb0d58
jmp short loc_fffb0c40  ; jmp 0xfffb0c40

loc_fffb0c3a:  ; not directly referenced
mov byte [ebp - 0x12], 0xa
jmp short loc_fffb0c44  ; jmp 0xfffb0c44

loc_fffb0c40:  ; not directly referenced
mov byte [ebp - 0x12], 7

loc_fffb0c44:  ; not directly referenced
xor ebx, ebx
cmp cl, 0x21
ja short loc_fffb0c54  ; ja 0xfffb0c54
movzx ecx, cl
mov bl, byte [ecx + ref_fffcc308]  ; mov bl, byte [ecx - 0x33cf8]

loc_fffb0c54:  ; not directly referenced
movzx edi, bl
mov dword [ebp - 0x10], 0
imul edi, edi, 0x240
imul eax, eax, 0x12
add edi, edx
mov edx, dword [ebp - 0x20]
mov dword [ebp - 0x38], eax
mov dword [ebp - 0x18], edx

loc_fffb0c72:  ; not directly referenced
mov ebx, dword [ebp - 0x18]
cmp dword [ebx + 0x297c], 2
je short loc_fffb0c95  ; je 0xfffb0c95

loc_fffb0c7e:  ; not directly referenced
inc dword [ebp - 0x10]
add dword [ebp - 0x18], 0x1347
cmp dword [ebp - 0x10], 2
jne short loc_fffb0c72  ; jne 0xfffb0c72
xor eax, eax
jmp near loc_fffb0d5d  ; jmp 0xfffb0d5d

loc_fffb0c95:  ; not directly referenced
imul ebx, dword [ebp - 0x10], 9
mov eax, dword [ebp - 0x38]
add eax, ebx
mov dword [ebp - 0x1c], ebx
mov dword [ebp - 0x34], ebx
mov byte [ebp - 0x11], 0
movzx ebx, byte [ebp - 0x12]
mov dword [ebp - 0x24], eax
mov dword [ebp - 0x28], ebx
jmp short loc_fffb0d26  ; jmp 0xfffb0d26

loc_fffb0cb4:  ; not directly referenced
mov eax, dword [ebp - 0x18]
mov edx, 1
shl edx, cl
and dl, byte [eax + 0x3acb]
test byte [ebp - 0x13], dl
je short loc_fffb0cfc  ; je 0xfffb0cfc
imul eax, ecx, 0x12
imul edx, ecx, 0x90
add eax, dword [ebp - 0x34]
add eax, esi
lea eax, [edi + eax*8]
mov dword [ebp - 0x2c], eax
mov eax, dword [ebp - 0x30]
mov edx, dword [eax + edx]
mov eax, dword [ebp - 0x3c]
cmp dword [edi + eax*8], edx
jbe short loc_fffb0cee  ; jbe 0xfffb0cee
mov dword [edi + eax*8], edx

loc_fffb0cee:  ; not directly referenced
mov edx, dword [ebp - 0x2c]
mov eax, dword [edx + 4]
cmp dword [ebx + 4], eax
jbe short loc_fffb0cfc  ; jbe 0xfffb0cfc
mov dword [ebx + 4], eax

loc_fffb0cfc:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffb0cb4  ; jne 0xfffb0cb4
add esi, dword [ebp - 0x24]
mov eax, dword [ebp - 0x28]
mov cl, 0xa
xor edx, edx
inc byte [ebp - 0x11]
imul eax, dword [edi + esi*8]
div ecx
xor edx, edx
mov dword [edi + esi*8], eax
mov eax, dword [ebp - 0x28]
imul eax, dword [ebx + 4]
div ecx
mov dword [ebx + 4], eax

loc_fffb0d26:  ; not directly referenced
mov eax, dword [ebp - 0x20]
mov bl, byte [ebp - 0x11]
cmp bl, byte [eax + 0x1755]
jae loc_fffb0c7e  ; jae 0xfffb0c7e
movzx esi, bl
mov eax, dword [ebp - 0x24]
mov edx, dword [ebp - 0x1c]
add eax, esi
add edx, esi
xor ecx, ecx
mov dword [ebp - 0x3c], eax
lea ebx, [edi + eax*8]
lea edx, [edi + edx*8]
mov dword [ebp - 0x30], edx
jmp near loc_fffb0cb4  ; jmp 0xfffb0cb4

loc_fffb0d58:  ; not directly referenced
mov eax, 2

loc_fffb0d5d:  ; not directly referenced
lea esp, [esp + 0x30]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb0d66:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0xc58]
mov esi, ref_fffcba4c  ; mov esi, 0xfffcba4c
push ebx
lea esp, [esp - 0xcfc]
mov byte [ebp - 0xc88], cl
mov cl, byte [ebp + 0x1c]
mov bl, byte [ebp + 8]
mov byte [ebp - 0xcaa], cl
mov ecx, 7
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov dword [ebp - 0xc7c], eax
mov al, byte [ebp + 0x14]
mov byte [ebp - 0xca9], bl
mov byte [ebp - 0xcd4], al
mov esi, ref_fffcba68  ; mov esi, 0xfffcba68
lea edi, [ebp - 0xc3c]
mov cl, 7
mov al, byte [ebp - 0xca9]
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
dec eax
mov bl, byte [ebp + 0xc]
mov dword [ebp - 0xcdc], edx
cmp al, 1
mov dl, byte [ebp + 0x18]
mov byte [ebp - 0xcd3], bl
mov esi, ref_fffcba84  ; mov esi, 0xfffcba84
lea edi, [ebp - 0xc20]
mov cl, 7
mov bl, byte [ebp + 0x10]
mov byte [ebp - 0xca8], dl
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
ja loc_fffb1cc4  ; ja 0xfffb1cc4
mov edx, 0x10
lea eax, [ebp - 0xc68]
call mrc_setmem
xor eax, eax

loc_fffb0e06:  ; not directly referenced
mov byte [ebp + eax - 0xc71], al
inc eax
cmp eax, 9
jne short loc_fffb0e06  ; jne 0xfffb0e06
movzx eax, byte [ebp - 0xca9]
sub esp, 0xc
mov cl, byte [ebp - 0xca8]
dec ecx
push 0
movzx esi, byte [eax + ref_fffcc308]  ; movzx esi, byte [eax - 0x33cf8]
movzx eax, byte [ebp - 0xc88]
mov edx, eax
mov dword [ebp - 0xce8], eax
movzx ecx, cl
mov eax, dword [ebp - 0xc7c]
call fcn_fffc5844  ; call 0xfffc5844
mov eax, dword [ebp - 0xc7c]
add esp, 0x10
mov dl, 0
cmp byte [ebp - 0xca9], 1
cmove edx, ebx
mov byte [ebp - 0xcac], dl
inc edx
cmp byte [ebp - 0xcaa], 0
mov byte [eax + 0x1768], 9
mov byte [ebp - 0xcd2], dl
jne short loc_fffb0e90  ; jne 0xfffb0e90
xor ecx, ecx
mov edx, 0x1c
lea eax, [ebp - 0xc04]
call mrc_setmem
jmp short loc_fffb0ea6  ; jmp 0xfffb0ea6

loc_fffb0e90:  ; not directly referenced
mov ecx, 0x1c
lea edx, [ebp - 0xc20]
lea eax, [ebp - 0xc04]
call mrc_memcpy

loc_fffb0ea6:  ; not directly referenced
mov dword [ebp - 0xcd0], 0
mov dword [ebp - 0xccc], 0
xor eax, eax
mov cl, 6

loc_fffb0ebe:  ; not directly referenced
movzx edx, al
mov ebx, dword [ebp + edx*4 - 0xc58]
add dword [ebp - 0xccc], ebx
mov ebx, dword [ebp + edx*4 - 0xc3c]
add dword [ebp - 0xcd0], ebx
cmp byte [ebp - 0xcaa], 0
cmove eax, ecx
inc eax
cmp al, 7
jne short loc_fffb0ebe  ; jne 0xfffb0ebe
cmp byte [ebp - 0xca9], 1
mov dword [ebp - 0xc88], 0
sete byte [ebp - 0xcd1]
add byte [ebp - 0xcd1], 8
cmp byte [ebp - 0xca9], 1
setne byte [ebp - 0xcab]
and esi, 0xff
add byte [ebp - 0xcab], 4
imul esi, esi, 0x240
add esi, dword [ebp - 0xcdc]
movzx ebx, byte [ebp - 0xcab]
mov dword [ebp - 0xcbc], esi
movzx esi, byte [ebp - 0xca9]
mov dword [ebp - 0xcd8], ebx
mov dword [ebp - 0xcec], esi
jmp near loc_fffb1c67  ; jmp 0xfffb1c67

loc_fffb0f55:  ; not directly referenced
mov eax, dword [ebp - 0xce8]
bt eax, ebx
jae short loc_fffb0fa2  ; jae 0xfffb0fa2
mov ecx, edi
mov edx, ebx
mov eax, dword [ebp - 0xc7c]
call fcn_fffc41bb  ; call 0xfffc41bb
or byte [ebp - 0xca8], al
movzx eax, byte [ebp - 0xca8]
bt eax, ebx
jae short loc_fffb0fa2  ; jae 0xfffb0fa2
mov eax, dword [ebp - 0xc7c]
xor edx, edx
movzx ecx, byte [eax + 0x1755]
imul eax, ebx, 0x1347
lea eax, [esi + eax + 0x101]
call mrc_fillword

loc_fffb0fa2:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffb0f55  ; jne 0xfffb0f55
cmp byte [ebp - 0xca8], 0
je loc_fffb1c58  ; je 0xfffb1c58
cmp byte [ebp - 0xcd4], 1
jne short loc_fffb0fec  ; jne 0xfffb0fec
push 0
movzx edx, byte [ebp - 0xcd1]
mov ecx, 0x88888888
push 0
mov eax, dword [ebp - 0xc7c]
push 1
push 0
push dword [ebp - 0xc88]
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffb0fec:  ; not directly referenced
cmp byte [ebp - 0xcaa], 0
je short loc_fffb106a  ; je 0xfffb106a
sub esp, 0xc
lea eax, [ebp - 0xc68]
push eax
lea ebx, [ebp - 0xbe8]
lea eax, [ebp - 0xba0]
push ebx
movzx edx, byte [ebp - 0xca8]
mov ecx, dword [ebp - 0xc88]
push eax
lea eax, [ebp - 0xc71]
push eax
push dword [ebp - 0xcd8]
mov eax, dword [ebp - 0xc7c]
call fcn_fffc3116  ; call 0xfffc3116
add esp, 0x20
test eax, eax
je loc_fffb10de  ; je 0xfffb10de
mov eax, dword [ebp - 0xc7c]
mov edx, 0x18
movzx ecx, byte [eax + 0x1755]
mov eax, ebx
call mrc_fillword
mov eax, dword [ebp - 0xc7c]
mov edx, 0x18
movzx ecx, byte [eax + 0x1755]
jmp short loc_fffb10d3  ; jmp 0xfffb10d3

loc_fffb106a:  ; not directly referenced
mov eax, dword [ebp - 0xc7c]
mov edx, 1
movzx ecx, byte [eax + 0x1755]
lea eax, [ebp - 0xba0]
call mrc_fillword
mov eax, dword [ebp - 0xc7c]
mov edx, 1
movzx ecx, byte [eax + 0x1755]
lea eax, [ebp - 0xbe8]
call mrc_fillword
mov eax, dword [ebp - 0xc7c]
mov edx, 1
movzx ecx, byte [eax + 0x1755]
lea eax, [ebp - 0xb7c]
call mrc_fillword
mov eax, dword [ebp - 0xc7c]
mov edx, 1
movzx ecx, byte [eax + 0x1755]

loc_fffb10d3:  ; not directly referenced
lea eax, [ebp - 0xbc4]
call mrc_fillword

loc_fffb10de:  ; not directly referenced
push eax
mov ecx, dword [ebp - 0xcec]
mov edx, dword [ebp - 0xcdc]
push eax
mov eax, dword [ebp - 0xc7c]
push edi
push dword [ebp - 0xc88]
call fcn_fffb0bed  ; call 0xfffb0bed
imul esi, dword [ebp - 0xc88], 0x12
add esp, 0x10
movzx ebx, byte [ebp - 0xca8]
mov dword [ebp - 0xc90], 0
mov dword [ebp - 0xc98], ebx
mov dword [ebp - 0xcb4], esi
sar ebx, 1
mov dword [ebp - 0xcc0], ebx
mov bl, byte [ebp - 0xca8]
and ebx, 2
mov byte [ebp - 0xcc8], bl
jmp near loc_fffb1650  ; jmp 0xfffb1650

loc_fffb1141:  ; not directly referenced
cmp byte [ebp - 0xcac], 0
je short loc_fffb11a4  ; je 0xfffb11a4
test byte [ebp - 0xca8], 1
je short loc_fffb1177  ; je 0xfffb1177
mov ebx, dword [ebp - 0xc7c]
mov cl, byte [ebp - 0xc90]
mov eax, 0x55
shl eax, cl
and eax, 0xff
mov edx, dword [ebx + 0x103f]
mov byte [edx + 0x409a], al

loc_fffb1177:  ; not directly referenced
cmp byte [ebp - 0xcc8], 0
je short loc_fffb11a4  ; je 0xfffb11a4
mov ebx, dword [ebp - 0xc7c]
mov cl, byte [ebp - 0xc90]
mov eax, 0x55
shl eax, cl
and eax, 0xff
mov edx, dword [ebx + 0x103f]
mov byte [edx + 0x449a], al

loc_fffb11a4:  ; not directly referenced
xor ebx, ebx
jmp near loc_fffb1455  ; jmp 0xfffb1455

loc_fffb11ab:  ; not directly referenced
mov esi, dword [ebp - 0xc98]
bt esi, edi
jb short loc_fffb11c9  ; jb 0xfffb11c9

loc_fffb11b6:  ; not directly referenced
inc edi
add dword [ebp - 0xc80], 0x24
cmp edi, 2
je loc_fffb125d  ; je 0xfffb125d
jmp short loc_fffb11ab  ; jmp 0xfffb11ab

loc_fffb11c9:  ; not directly referenced
lea ecx, [edi + 1]
mov esi, dword [ebp - 0xc98]
mov byte [ebp - 0xc84], 1
sar esi, cl
cmp byte [ebp - 0xcab], 4
mov dword [ebp - 0xc8c], esi
jne short loc_fffb11fc  ; jne 0xfffb11fc
mov eax, dword [ebp - 0xc7c]
mov al, byte [eax + 0x1755]
mov byte [ebp - 0xc84], al

loc_fffb11fc:  ; not directly referenced
xor esi, esi
jmp short loc_fffb124e  ; jmp 0xfffb124e

loc_fffb1200:  ; not directly referenced
mov edx, dword [ebp - 0xc80]
mov ecx, dword [ebp - 0xc94]
mov eax, dword [edx + esi*4]
imul eax, dword [ebp + ecx*4 - 0xc04]
mov ecx, 0x18
cdq
idiv ecx
push 0
movzx edx, byte [ebp - 0xc8c]
push edx
mov edx, dword [ebp - 0xcd8]
push 0
push esi
push dword [ebp - 0xc88]
inc esi
push edi
push 0
push 0
mov ecx, eax
mov eax, dword [ebp - 0xc7c]
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffb124e:  ; not directly referenced
mov eax, esi
cmp byte [ebp - 0xc84], al
ja short loc_fffb1200  ; ja 0xfffb1200
jmp near loc_fffb11b6  ; jmp 0xfffb11b6

loc_fffb125d:  ; not directly referenced
push eax
mov ecx, dword [ebp - 0xc98]
mov edx, dword [ebp - 0xcdc]
push eax
lea eax, [ebp - 0xc68]
push eax
lea eax, [ebp - 0xc71]
push 0x1f
push eax
push dword [ebp - 0xcec]
push dword [ebp - 0xc88]
push dword [ebp - 0xc88]
mov eax, dword [ebp - 0xc7c]
call fcn_fffc69bc  ; call 0xfffc69bc
movzx ecx, bl
add esp, 0x20
imul esi, ecx, 0x12
mov dword [ebp - 0xc80], 0
mov dword [ebp - 0xc84], ecx
mov dword [ebp - 0xce4], esi

loc_fffb12b7:  ; not directly referenced
mov esi, dword [ebp - 0xc98]
mov ecx, dword [ebp - 0xc80]
bt esi, ecx
jb loc_fffb140a  ; jb 0xfffb140a

loc_fffb12cc:  ; not directly referenced
inc dword [ebp - 0xc80]
cmp dword [ebp - 0xc80], 2
je loc_fffb1443  ; je 0xfffb1443
jmp short loc_fffb12b7  ; jmp 0xfffb12b7

loc_fffb12e1:  ; not directly referenced
mov edx, dword [ebp - 0xcb4]
mov esi, dword [ebp - 0xcbc]
movzx ecx, byte [ebp - 0xc8c]
add edx, edi
add edx, ecx
lea esi, [esi + edx*8]
mov dword [ebp - 0xc94], esi
mov eax, dword [esi + 4]
mov esi, dword [ebp - 0xcbc]
mov edx, dword [esi + edx*8]
mov esi, eax
sub esi, edx
test bl, bl
mov dword [ebp - 0xcb0], edx
mov dword [ebp - 0xcc4], esi
jne short loc_fffb1353  ; jne 0xfffb1353
add eax, edx
lea esi, [edi + ecx]
xor edx, edx
mov dword [ebp - 0xd00], esi
mov esi, 0xa
mov dword [ebp - 0xcf0], eax
div esi
mov esi, dword [ebp - 0xd00]
mov dword [ebp + esi*4 - 0xb10], 0
mov dword [ebp + esi*4 - 0xb58], eax

loc_fffb1353:  ; not directly referenced
mov esi, dword [ebp - 0xc84]
lea eax, [edi + ecx]
mov edx, dword [ebp + eax*4 - 0xb58]
imul edx, dword [ebp + esi*4 - 0xc3c]
mov dword [ebp - 0xcf0], edx
mov edx, dword [ebp + eax*4 - 0xba0]
imul edx, dword [ebp + esi*4 - 0xc58]
add edx, dword [ebp - 0xcf0]
imul edx, dword [ebp - 0xcc4]
add dword [ebp + eax*4 - 0xb10], edx
mov edx, dword [ebp - 0xce0]
mov esi, dword [ebp - 0xcb0]
add edx, ecx
mov dword [ebp + edx*8 - 0x888], esi
mov esi, dword [ebp - 0xc94]
mov esi, dword [esi + 4]
mov dword [ebp + edx*8 - 0x884], esi
mov esi, dword [ebp - 0xc84]
cmp dword [ebp + esi*4 - 0xc04], 0
jns short loc_fffb1402  ; jns 0xfffb1402
cmp bl, 6
je short loc_fffb1402  ; je 0xfffb1402
cmp dword [ebp + esi*4 - 0xc00], 0
jle short loc_fffb1402  ; jle 0xfffb1402
mov edx, dword [ebp - 0xcb4]
mov esi, dword [ebp + eax*8 - 0x888]
add edx, edi
add ecx, edx
mov edx, dword [ebp - 0xcbc]
mov dword [edx + ecx*8], esi
mov ecx, dword [ebp - 0xc94]
mov eax, dword [ebp + eax*8 - 0x884]
mov dword [ecx + 4], eax

loc_fffb1402:  ; not directly referenced
inc byte [ebp - 0xc8c]
jmp short loc_fffb1426  ; jmp 0xfffb1426

loc_fffb140a:  ; not directly referenced
imul edi, dword [ebp - 0xc80], 9
mov esi, dword [ebp - 0xce4]
add esi, edi
mov byte [ebp - 0xc8c], 0
mov dword [ebp - 0xce0], esi

loc_fffb1426:  ; not directly referenced
mov eax, dword [ebp - 0xc7c]
mov cl, byte [ebp - 0xc8c]
cmp cl, byte [eax + 0x1755]
jb loc_fffb12e1  ; jb 0xfffb12e1
jmp near loc_fffb12cc  ; jmp 0xfffb12cc

loc_fffb1443:  ; not directly referenced
cmp byte [ebp - 0xcaa], 0
mov al, 7
cmove ebx, eax
inc ebx
cmp bl, 6
ja short loc_fffb1471  ; ja 0xfffb1471

loc_fffb1455:  ; not directly referenced
lea esi, [ebp - 0xbe8]
mov dword [ebp - 0xc80], esi
movzx esi, bl
xor edi, edi
mov dword [ebp - 0xc94], esi
jmp near loc_fffb11ab  ; jmp 0xfffb11ab

loc_fffb1471:  ; not directly referenced
imul ebx, dword [ebp - 0xc88], 9
xor esi, esi
mov dword [ebp - 0xc94], ebx

loc_fffb1480:  ; not directly referenced
mov ebx, dword [ebp - 0xc98]
bt ebx, esi
jae loc_fffb1640  ; jae 0xfffb1640
imul eax, esi, 0x1347
mov edx, dword [ebp - 0xc7c]
mov byte [ebp - 0xc80], 0
lea eax, [edx + eax + 0x297c]
mov dword [ebp - 0xc84], eax
add eax, dword [ebp - 0xc94]
mov dword [ebp - 0xc8c], eax
jmp near loc_fffb1615  ; jmp 0xfffb1615

loc_fffb14c0:  ; not directly referenced
movzx ebx, byte [ebp - 0xc80]
lea ecx, [esi + esi*8]
add ecx, ebx
mov edi, dword [ebp - 0xcd0]
mov eax, dword [ebp - 0xccc]
imul edi, dword [ebp + ecx*4 - 0xb58]
imul eax, dword [ebp + ecx*4 - 0xba0]
add edi, eax
je loc_fffb1ccb  ; je 0xfffb1ccb
mov edx, dword [ebp + ecx*4 - 0xb10]
mov eax, edx
sar eax, 0x1f
or eax, 1
movsx eax, al
imul eax, edi
imul edi, edi, 0x14
imul eax, eax, 0xa
add eax, edx
cdq
idiv edi
cmp byte [ebp - 0xca9], 1
mov edi, eax
mov dword [ebp + ecx*4 - 0xb10], eax
jne short loc_fffb157d  ; jne 0xfffb157d
cmp byte [ebp - 0xcb8], 0
jne short loc_fffb1538  ; jne 0xfffb1538
mov ecx, dword [ebp - 0xc8c]
add byte [ebx + ecx + 0x1106], al

loc_fffb1538:  ; not directly referenced
cmp byte [ebp - 0xcb8], 1
sete dl
cmp byte [ebp - 0xcac], 0
sete al
or dl, al
je short loc_fffb15b4  ; je 0xfffb15b4
mov edx, dword [ebp - 0xc8c]
mov eax, edi
mov ecx, dword [ebp - 0xc88]
add byte [ebx + edx + 0x112a], al
mov edx, esi
push eax
mov eax, dword [ebp - 0xc7c]
push 0
push 0xff
push ebx
call fcn_fffb0168  ; call 0xfffb0168
jmp short loc_fffb15b1  ; jmp 0xfffb15b1

loc_fffb157d:  ; not directly referenced
mov ecx, dword [ebp - 0xc94]
mov edx, dword [ebp - 0xc84]
lea eax, [ebx + ecx + 0x110]
mov ecx, dword [ebp - 0xc88]
add word [edx + eax*2 + 5], di
mov edx, esi
push eax
mov eax, dword [ebp - 0xc7c]
push 0
push 0xff
push ebx
call fcn_fffb02b4  ; call 0xfffb02b4

loc_fffb15b1:  ; not directly referenced
add esp, 0x10

loc_fffb15b4:  ; not directly referenced
imul edi, edi, 0xa
xor ecx, ecx
lea edx, [esi + esi*8]

loc_fffb15bc:  ; not directly referenced
movzx eax, cl
imul eax, eax, 0x12
add eax, edx
add eax, ebx
add dword [ebp + eax*8 - 0x888], edi
sub dword [ebp + eax*8 - 0x884], edi
cmp byte [ebp - 0xcaa], 0
mov al, 7
cmove ecx, eax
inc ecx
cmp cl, 6
jbe short loc_fffb15bc  ; jbe 0xfffb15bc
lea ecx, [esi + esi*8]
inc byte [ebp - 0xc80]
lea eax, [ecx + ebx]
add ecx, dword [ebp - 0xcb4]
add ebx, ecx
mov ecx, dword [ebp - 0xcbc]
mov edx, dword [ebp + eax*8 - 0x888]
mov dword [ecx + ebx*8], edx
mov eax, dword [ebp + eax*8 - 0x884]
mov dword [ecx + ebx*8 + 4], eax

loc_fffb1615:  ; not directly referenced
mov eax, dword [ebp - 0xc7c]
movzx ecx, byte [eax + 0x1755]
cmp byte [ebp - 0xc80], cl
jb loc_fffb14c0  ; jb 0xfffb14c0
mov eax, dword [ebp - 0xc84]
xor edx, edx
add eax, 0xf9
call mrc_fillword

loc_fffb1640:  ; not directly referenced
inc esi
cmp esi, 2
jne loc_fffb1480  ; jne 0xfffb1480
inc dword [ebp - 0xc90]

loc_fffb1650:  ; not directly referenced
mov dl, byte [ebp - 0xc90]
mov bl, byte [ebp - 0xcd2]
cmp dl, bl
mov byte [ebp - 0xcb8], dl
jb loc_fffb1141  ; jb 0xfffb1141
cmp byte [ebp - 0xcd3], 0
je loc_fffb1c58  ; je 0xfffb1c58
cmp byte [ebp - 0xcaa], 0
je short loc_fffb16f9  ; je 0xfffb16f9
sub esp, 0xc
lea eax, [ebp - 0xc68]
push eax
lea ebx, [ebp - 0xbe8]
lea eax, [ebp - 0xba0]
push ebx
mov ecx, dword [ebp - 0xc88]
mov edx, dword [ebp - 0xc98]
push eax
lea eax, [ebp - 0xc71]
push eax
push dword [ebp - 0xcd8]
mov eax, dword [ebp - 0xc7c]
call fcn_fffc3116  ; call 0xfffc3116
add esp, 0x20
test eax, eax
je short loc_fffb16f9  ; je 0xfffb16f9
mov eax, dword [ebp - 0xc7c]
mov edx, 0x18
movzx ecx, byte [eax + 0x1755]
mov eax, ebx
call mrc_fillword
mov eax, dword [ebp - 0xc7c]
mov edx, 0x18
movzx ecx, byte [eax + 0x1755]
lea eax, [ebp - 0xbc4]
call mrc_fillword

loc_fffb16f9:  ; not directly referenced
mov bl, byte [ebp - 0xca8]
and ebx, 1
mov dword [ebp - 0xca8], ebx
je short loc_fffb1720  ; je 0xfffb1720
mov esi, dword [ebp - 0xc7c]
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x4098], 0xffff3001

loc_fffb1720:  ; not directly referenced
mov ebx, dword [ebp - 0xcc0]
and ebx, 1
mov dword [ebp - 0xcc0], ebx
je short loc_fffb1747  ; je 0xfffb1747
mov esi, dword [ebp - 0xc7c]
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x4498], 0xffff3001

loc_fffb1747:  ; not directly referenced
movzx ebx, byte [ebp - 0xcd1]
xor edi, edi
mov dword [ebp - 0xcb8], ebx
jmp near loc_fffb19e3  ; jmp 0xfffb19e3

loc_fffb175b:  ; not directly referenced
mov esi, dword [ebp - 0xc98]
bt esi, ebx
jb short loc_fffb1795  ; jb 0xfffb1795

loc_fffb1766:  ; not directly referenced
imul eax, ebx, 0x240
lea esi, [ebp - 0x498]
mov ecx, 0x90
add eax, esi
mov edx, 8
inc ebx
call mrc_fillword
add dword [ebp - 0xc90], 0x24
cmp ebx, 2
jne short loc_fffb175b  ; jne 0xfffb175b
jmp near loc_fffb1829  ; jmp 0xfffb1829

loc_fffb1795:  ; not directly referenced
lea ecx, [ebx + 1]
mov esi, dword [ebp - 0xc98]
mov byte [ebp - 0xc80], 1
sar esi, cl
cmp byte [ebp - 0xcab], 4
mov dword [ebp - 0xc84], esi
jne short loc_fffb17c8  ; jne 0xfffb17c8
mov eax, dword [ebp - 0xc7c]
mov al, byte [eax + 0x1755]
mov byte [ebp - 0xc80], al

loc_fffb17c8:  ; not directly referenced
xor esi, esi
jmp short loc_fffb181a  ; jmp 0xfffb181a

loc_fffb17cc:  ; not directly referenced
mov edx, dword [ebp - 0xc90]
mov ecx, dword [ebp - 0xc8c]
mov eax, dword [edx + esi*4]
imul eax, dword [ebp + ecx*4 - 0xc04]
mov ecx, 0x18
cdq
idiv ecx
push 0
movzx edx, byte [ebp - 0xc84]
push edx
mov edx, dword [ebp - 0xcd8]
push 0
push esi
push dword [ebp - 0xc88]
inc esi
push ebx
push 0
push 0
mov ecx, eax
mov eax, dword [ebp - 0xc7c]
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffb181a:  ; not directly referenced
mov eax, esi
cmp byte [ebp - 0xc80], al
ja short loc_fffb17cc  ; ja 0xfffb17cc
jmp near loc_fffb1766  ; jmp 0xfffb1766

loc_fffb1829:  ; not directly referenced
mov eax, dword [ebp - 0xc7c]
mov edx, edi
movzx edx, dl
mov ecx, dword [ebp - 0xc88]
mov dword [ebp - 0xc84], edx
mov byte [eax + 0x1769], 1
imul eax, edx, 0x90
mov edx, dword [ebp - 0xc98]
push ebx
push dword [ebp - 0xcb8]
lea ebx, [ebp - 0xba0]
lea eax, [ebp + eax - 0x888]
push eax
mov eax, dword [ebp - 0xc7c]
push esi
call fcn_fffc23ac  ; call 0xfffc23ac
lea ecx, [ebp - 0xac8]
lea eax, [ebp - 0xb58]
mov dword [ebp - 0xc94], ecx
mov dword [ebp - 0xc8c], ebx
mov dword [ebp - 0xc80], eax
add esp, 0x10
mov dword [ebp - 0xc90], 0

loc_fffb189f:  ; not directly referenced
mov ebx, dword [ebp - 0xc98]
mov esi, dword [ebp - 0xc90]
bt ebx, esi
jb short loc_fffb18dc  ; jb 0xfffb18dc

loc_fffb18b0:  ; not directly referenced
inc dword [ebp - 0xc90]
add dword [ebp - 0xc94], 0x120
add dword [ebp - 0xc8c], 0x24
add dword [ebp - 0xc80], 0x24
cmp dword [ebp - 0xc90], 2
jne short loc_fffb189f  ; jne 0xfffb189f
jmp near loc_fffb19d0  ; jmp 0xfffb19d0

loc_fffb18dc:  ; not directly referenced
imul edx, dword [ebp - 0xc90], 9
mov eax, dword [ebp - 0xc7c]
mov dword [ebp - 0xcb0], edx
mov ebx, dword [ebp - 0xcb0]
mov ecx, dword [ebp - 0xc94]
xor edx, edx
mov dword [ebp - 0xce4], ebx
mov al, byte [eax + 0x1755]
mov byte [ebp - 0xcb4], al
jmp near loc_fffb19bf  ; jmp 0xfffb19bf

loc_fffb1914:  ; not directly referenced
mov esi, dword [ebp - 0xc80]
mov ebx, dword [esi + edx*4]
mov esi, dword [ebp - 0xc84]
imul ebx, dword [ebp + esi*4 - 0xc3c]
mov esi, dword [ebp - 0xc8c]
mov eax, dword [esi + edx*4]
mov esi, dword [ebp - 0xc84]
imul eax, dword [ebp + esi*4 - 0xc58]
mov esi, dword [ebp - 0xce4]
add eax, ebx
mov ebx, dword [ebp - 0xcb0]
add ebx, edx
add esi, edx
shl ebx, 6
mov dword [ebp - 0xcc4], eax
shl esi, 3
lea eax, [ebp - 0x498]
add eax, ebx
mov dword [ebp - 0xce0], esi
mov dword [ebp - 0xcf0], eax
xor eax, eax

loc_fffb1976:  ; not directly referenced
mov esi, dword [ebp - 0xce0]
add esi, eax
mov ebx, dword [ebp + esi*8 - 0x494]
mov esi, dword [ebp - 0xcf0]
mov esi, dword [esi + eax*8]
lea ebx, [ebx + esi - 0x10]
mov dword [ebp - 0xcc8], ebx
mov ebx, edi
test bl, bl
jne short loc_fffb19a5  ; jne 0xfffb19a5
mov dword [ecx + eax*4], 0

loc_fffb19a5:  ; not directly referenced
mov esi, dword [ebp - 0xcc8]
imul esi, dword [ebp - 0xcc4]
add dword [ecx + eax*4], esi
inc eax
cmp eax, 8
jne short loc_fffb1976  ; jne 0xfffb1976
inc edx
add ecx, 0x20

loc_fffb19bf:  ; not directly referenced
cmp byte [ebp - 0xcb4], dl
ja loc_fffb1914  ; ja 0xfffb1914
jmp near loc_fffb18b0  ; jmp 0xfffb18b0

loc_fffb19d0:  ; not directly referenced
cmp byte [ebp - 0xcaa], 0
mov al, 7
cmove edi, eax
inc edi
mov eax, edi
cmp al, 6
ja short loc_fffb1a01  ; ja 0xfffb1a01

loc_fffb19e3:  ; not directly referenced
mov eax, edi
lea ebx, [ebp - 0xbe8]
movzx eax, al
mov dword [ebp - 0xc90], ebx
mov dword [ebp - 0xc8c], eax
xor ebx, ebx
jmp near loc_fffb175b  ; jmp 0xfffb175b

loc_fffb1a01:  ; not directly referenced
imul ebx, dword [ebp - 0xc88], 0xd8
mov edx, dword [ebp - 0xc7c]
add edx, 0x2974
xor edi, edi
mov dword [ebp - 0xcc4], edx
mov dword [ebp - 0xcc8], ebx

loc_fffb1a25:  ; not directly referenced
mov esi, dword [ebp - 0xc98]
bt esi, edi
jae loc_fffb1bd2  ; jae 0xfffb1bd2
imul eax, edi, 0x1347
mov ebx, dword [ebp - 0xcc4]
mov esi, dword [ebp - 0xc7c]
mov edx, edi
shl edx, 0xa
mov byte [ebp - 0xc90], 0
lea eax, [ebx + eax + 8]
mov dword [ebp - 0xc94], eax
mov eax, dword [esi + 0x103f]
lea ebx, [edi + edi*8]
mov dword [ebp - 0xcb4], ebx
lea eax, [edx + eax + 0x4098]
mov dword [eax], 0xffff0001
jmp near loc_fffb1ba7  ; jmp 0xfffb1ba7

loc_fffb1a7d:  ; not directly referenced
movzx esi, byte [ebp - 0xc90]
mov eax, dword [ebp - 0xcb4]
add eax, esi
mov ecx, dword [ebp - 0xcd0]
mov edx, dword [ebp - 0xccc]
mov dword [ebp - 0xc8c], esi
mov dword [ebp - 0xc84], 0
imul edx, dword [ebp + eax*4 - 0xba0]
imul ecx, dword [ebp + eax*4 - 0xb58]
add ecx, edx
mov edx, 1
cmovne edx, ecx
xor ecx, ecx
shl eax, 5
mov dword [ebp - 0xc80], edx
add edx, edx
mov dword [ebp - 0xcb0], edx
mov edx, dword [ebp - 0xc94]
lea ebx, [ebp + eax - 0xac8]
imul eax, esi, 0x18
mov esi, dword [ebp - 0xcc8]
lea eax, [eax + esi + 0x330]
lea esi, [edx + eax + 0xe]

loc_fffb1af6:  ; not directly referenced
mov edx, dword [ebx]
mov eax, edx
sar eax, 0x1f
or eax, 1
movsx eax, al
imul eax, dword [ebp - 0xc80]
add eax, edx
cdq
idiv dword [ebp - 0xcb0]
cmp byte [ebp - 0xca9], 1
jne short loc_fffb1b21  ; jne 0xfffb1b21
movzx edx, byte [esi]
jmp short loc_fffb1b28  ; jmp 0xfffb1b28

loc_fffb1b21:  ; not directly referenced
movzx edx, byte [esi + 0x360]

loc_fffb1b28:  ; not directly referenced
add eax, edx
cmp eax, 0xf
jle short loc_fffb1b37  ; jle 0xfffb1b37
mov dword [ebx], 0xf
jmp short loc_fffb1b43  ; jmp 0xfffb1b43

loc_fffb1b37:  ; not directly referenced
test eax, eax
mov edx, 0
cmovs eax, edx
mov dword [ebx], eax

loc_fffb1b43:  ; not directly referenced
cmp byte [ebp - 0xca9], 1
mov eax, dword [ebx]
jne short loc_fffb1b52  ; jne 0xfffb1b52
mov byte [esi], al
jmp short loc_fffb1b58  ; jmp 0xfffb1b58

loc_fffb1b52:  ; not directly referenced
mov byte [esi + 0x360], al

loc_fffb1b58:  ; not directly referenced
mov eax, dword [ebx]
add esi, 3
shl eax, cl
add ecx, 4
or dword [ebp - 0xc84], eax
add ebx, 4
cmp ecx, 0x20
jne short loc_fffb1af6  ; jne 0xfffb1af6
push 0
mov ecx, dword [ebp - 0xc84]
mov edx, dword [ebp - 0xcb8]
push 0
mov eax, dword [ebp - 0xc7c]
push 0
push dword [ebp - 0xc8c]
push dword [ebp - 0xc88]
push edi
push 0
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
inc byte [ebp - 0xc90]
add esp, 0x20

loc_fffb1ba7:  ; not directly referenced
mov eax, dword [ebp - 0xc7c]
movzx ecx, byte [eax + 0x1755]
cmp byte [ebp - 0xc90], cl
jb loc_fffb1a7d  ; jb 0xfffb1a7d
mov eax, dword [ebp - 0xc94]
xor edx, edx
add eax, 0xf9
call mrc_fillword

loc_fffb1bd2:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffb1a25  ; jne 0xfffb1a25
cmp dword [ebp - 0xca8], 0
je short loc_fffb1bfb  ; je 0xfffb1bfb
mov edx, dword [ebp - 0xc7c]
mov eax, dword [edx + 0x103f]
mov dword [eax + 0x4098], 0xffff3001

loc_fffb1bfb:  ; not directly referenced
cmp dword [ebp - 0xcc0], 0
je short loc_fffb1c1a  ; je 0xfffb1c1a
mov ecx, dword [ebp - 0xc7c]
mov eax, dword [ecx + 0x103f]
mov dword [eax + 0x4498], 0xffff3001

loc_fffb1c1a:  ; not directly referenced
cmp dword [ebp - 0xca8], 0
je short loc_fffb1c39  ; je 0xfffb1c39
mov ebx, dword [ebp - 0xc7c]
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4098], 0xffff0001

loc_fffb1c39:  ; not directly referenced
cmp dword [ebp - 0xcc0], 0
je short loc_fffb1c58  ; je 0xfffb1c58
mov esi, dword [ebp - 0xc7c]
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x4498], 0xffff0001

loc_fffb1c58:  ; not directly referenced
inc dword [ebp - 0xc88]
cmp dword [ebp - 0xc88], 4
je short loc_fffb1c94  ; je 0xfffb1c94

loc_fffb1c67:  ; not directly referenced
mov cl, byte [ebp - 0xc88]
mov edi, 1
mov esi, dword [ebp - 0xc7c]
xor ebx, ebx
shl edi, cl
mov byte [ebp - 0xca8], 0
and edi, 0xff
add esi, 0x2974
jmp near loc_fffb0f55  ; jmp 0xfffb0f55

loc_fffb1c94:  ; not directly referenced
mov eax, dword [ebp - 0xc7c]
xor ecx, ecx
movzx edx, byte [ebp - 0xcab]
mov byte [eax + 0x1741], 0
push 2
push 0
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20
jmp short loc_fffb1cd0  ; jmp 0xfffb1cd0

loc_fffb1cc4:  ; not directly referenced
mov eax, 2
jmp short loc_fffb1cd0  ; jmp 0xfffb1cd0

loc_fffb1ccb:  ; not directly referenced
mov eax, 1

loc_fffb1cd0:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb1cd8:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
cmp dword [eax + 0x1005], HASWELL_FAMILY_MOBILE
mov ebx, eax
mov al, byte [edx + 2]
jne short loc_fffb1d03  ; jne 0xfffb1d03
cmp dword [ebx + 0x1001], 1
jne short loc_fffb1d03  ; jne 0xfffb1d03
shl ecx, 4
and eax, 0xf
or eax, ecx
mov byte [edx + 2], al
jmp short loc_fffb1d21  ; jmp 0xfffb1d21

loc_fffb1d03:  ; not directly referenced
mov bl, cl
and eax, 0x3f
shl ebx, 6
shr cl, 2
or eax, ebx
mov byte [edx + 2], al
mov al, byte [edx + 3]
and ecx, 3
and eax, 0xfffffffc
or eax, ecx
mov byte [edx + 3], al

loc_fffb1d21:  ; not directly referenced
pop ebx
pop ebp
ret

fcn_fffb1d24:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x54]
mov dword [ebp - 0x50], edx
movzx ebx, byte [ebp + 8]
mov edx, dword [ebp + 0xc]
mov dword [ebp - 0x54], ecx
mov word [ebp - 0x5e], dx
mov byte [ebp - 0x30], 0xaa
mov byte [ebp - 0x2f], 0xc0
mov byte [ebp - 0x2e], 0xcc
mov byte [ebp - 0x2d], 0xf0
mov dword [ebp - 0x58], 0
mov word [ebp - 0x60], bx
jmp near loc_fffb1ea0  ; jmp 0xfffb1ea0

loc_fffb1d5f:  ; not directly referenced
xor ecx, ecx

loc_fffb1d61:  ; not directly referenced
mov esi, 1
mov edx, dword [ebp - 0x54]
shl esi, cl
and edx, esi
setne byte [ebp - 0x4c]
and esi, dword [ebp - 0x50]
mov dword [ebp - 0x5c], edx
setne bl
test byte [ebp - 0x4c], bl
mov dl, 1
jne short loc_fffb1d98  ; jne 0xfffb1d98
test esi, esi
sete bl
xor edx, edx
test byte [ebp - 0x4c], bl
jne short loc_fffb1d98  ; jne 0xfffb1d98
or esi, dword [ebp - 0x5c]
cmp esi, 1
sbb edx, edx
add edx, 3

loc_fffb1d98:  ; not directly referenced
movzx edx, dl
mov dl, byte [ebp + edx - 0x30]
mov byte [ebp + ecx - 0x2c], dl
inc ecx
cmp ecx, 0x20
jne short loc_fffb1d61  ; jne 0xfffb1d61
mov dword [ebp - 0x5c], 0
add di, word [ebp - 0x5e]

loc_fffb1db4:  ; not directly referenced
mov cl, byte [ebp - 0x5c]
mov ebx, 1
xor edx, edx
shl ebx, cl
xor ecx, ecx
mov byte [ebp - 0x4c], bl

loc_fffb1dc5:  ; not directly referenced
mov bl, byte [ebp - 0x4c]
test byte [ebp + ecx - 0x2c], bl
je short loc_fffb1dd7  ; je 0xfffb1dd7
mov esi, 1
shl esi, cl
or edx, esi

loc_fffb1dd7:  ; not directly referenced
inc ecx
cmp ecx, 0x20
jne short loc_fffb1dc5  ; jne 0xfffb1dc5
mov esi, dword [ebp - 0x5c]
add esi, 0x10000
cmp dword [eax + 0x297c], 2
jne short loc_fffb1e38  ; jne 0xfffb1e38
mov ecx, dword [eax + 0x103f]
cmp di, 0xfff
mov dword [ecx + 0x42dc], edx
mov ecx, dword [eax + 0x103f]
mov dword [ecx + 0x42e0], edx
mov ecx, dword [eax + 0x103f]
mov dword [ecx + 0x42d4], esi
mov ecx, 0xfff
mov ebx, dword [eax + 0x103f]
cmovbe ecx, edi
and ecx, 0xfff
or ecx, 0x8000000
mov dword [ebx + 0x42d0], ecx

loc_fffb1e38:  ; not directly referenced
cmp dword [eax + 0x3cc3], 2
jne short loc_fffb1e8a  ; jne 0xfffb1e8a
mov ecx, dword [eax + 0x103f]
cmp di, 0xfff
mov dword [ecx + 0x46dc], edx
mov ecx, dword [eax + 0x103f]
mov dword [ecx + 0x46e0], edx
mov edx, dword [eax + 0x103f]
mov dword [edx + 0x46d4], esi
mov edx, 0xfff
mov ecx, dword [eax + 0x103f]
cmovbe edx, edi
and edx, 0xfff
or edx, 0x8000000
mov dword [ecx + 0x46d0], edx

loc_fffb1e8a:  ; not directly referenced
inc dword [ebp - 0x5c]
cmp dword [ebp - 0x5c], 8
jne loc_fffb1db4  ; jne 0xfffb1db4
rol dword [ebp - 0x54], 1
inc dword [ebp - 0x58]
rol dword [ebp - 0x50], 1

loc_fffb1ea0:  ; not directly referenced
mov edi, dword [ebp - 0x58]
cmp di, word [ebp - 0x60]
jb loc_fffb1d5f  ; jb 0xfffb1d5f
cmp dword [eax + 0x297c], 2
jne short loc_fffb1ec6  ; jne 0xfffb1ec6
mov edx, dword [eax + 0x103f]
mov dword [edx + 0x42d4], 0

loc_fffb1ec6:  ; not directly referenced
cmp dword [eax + 0x3cc3], 2
jne short loc_fffb1edf  ; jne 0xfffb1edf
mov eax, dword [eax + 0x103f]
mov dword [eax + 0x46d4], 0

loc_fffb1edf:  ; not directly referenced
lea esp, [esp + 0x54]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb1ee8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, eax
lea esp, [esp - 0x1c]
mov dword [ebp - 0x24], edx
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x28], ecx
movzx edx, byte [ebp + 8]
mov word [ebp - 0x12], ax
mov dword [ebp - 0x10], 0
mov dword [ebp - 0x18], edx
jmp near loc_fffb2010  ; jmp 0xfffb2010

loc_fffb1f14:  ; not directly referenced
mov eax, dword [ebp - 0x20]
add eax, ecx
cdq
idiv dword [ebp - 0x18]
movzx eax, dl
mov edx, dword [ebp - 0x28]
movzx eax, byte [edx + eax]
mov edx, dword [ebp - 0x24]
movzx eax, byte [edx + eax]
test dword [ebp - 0x1c], eax
je short loc_fffb1f3c  ; je 0xfffb1f3c
mov eax, 1
shl eax, cl
or edi, eax

loc_fffb1f3c:  ; not directly referenced
inc ecx
cmp ecx, 0x20
jne short loc_fffb1f14  ; jne 0xfffb1f14
cmp dword [ebx + 0x297c], 2
jne short loc_fffb1f5a  ; jne 0xfffb1f5a
mov eax, dword [ebx + 0x103f]
lea eax, [esi + eax - 0x400]
mov dword [eax], edi

loc_fffb1f5a:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffb1f6d  ; jne 0xfffb1f6d
mov eax, dword [ebx + 0x103f]
add eax, esi
mov dword [eax], edi

loc_fffb1f6d:  ; not directly referenced
add esi, 4
cmp esi, 0x46e4
je short loc_fffb1f88  ; je 0xfffb1f88

loc_fffb1f78:  ; not directly referenced
lea ecx, [esi*8 - 0x236e0]
xor edi, edi
mov dword [ebp - 0x20], ecx
xor ecx, ecx
jmp short loc_fffb1f14  ; jmp 0xfffb1f14

loc_fffb1f88:  ; not directly referenced
mov edx, dword [ebp - 0x10]
add edx, 0x10000
cmp dword [ebx + 0x297c], 2
jne short loc_fffb1fcc  ; jne 0xfffb1fcc
mov eax, dword [ebx + 0x103f]
cmp word [ebp - 0x12], 0xfff
mov dword [eax + 0x42d4], edx
mov ecx, dword [ebx + 0x103f]
mov eax, 0xfff
cmovbe ax, word [ebp - 0x12]
and eax, 0xfff
or eax, 0x8000000
mov dword [ecx + 0x42d0], eax

loc_fffb1fcc:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffb2007  ; jne 0xfffb2007
mov eax, dword [ebx + 0x103f]
cmp word [ebp - 0x12], 0xfff
mov dword [eax + 0x46d4], edx
mov edx, dword [ebx + 0x103f]
mov eax, 0xfff
cmovbe ax, word [ebp - 0x12]
and eax, 0xfff
or eax, 0x8000000
mov dword [edx + 0x46d0], eax

loc_fffb2007:  ; not directly referenced
inc dword [ebp - 0x10]
cmp dword [ebp - 0x10], 8
je short loc_fffb2027  ; je 0xfffb2027

loc_fffb2010:  ; not directly referenced
mov cl, byte [ebp - 0x10]
mov eax, 1
mov esi, 0x46dc
shl eax, cl
mov dword [ebp - 0x1c], eax
jmp near loc_fffb1f78  ; jmp 0xfffb1f78

loc_fffb2027:  ; not directly referenced
cmp dword [ebx + 0x297c], 2
jne short loc_fffb2040  ; jne 0xfffb2040
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x42d4], 0

loc_fffb2040:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffb2059  ; jne 0xfffb2059
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x46d4], 0

loc_fffb2059:  ; not directly referenced
lea esp, [esp + 0x1c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb2062:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
lea esp, [esp - 0x10]
mov dword [ebp - 0x1c], edx
lea edx, [eax + 0x297c]
mov dword [ebp - 0x10], edx

loc_fffb207a:  ; not directly referenced
mov ecx, dword [ebp - 0x10]
cmp dword [ecx], 2
je short loc_fffb2099  ; je 0xfffb2099

loc_fffb2082:  ; not directly referenced
add ebx, 0x400
add dword [ebp - 0x10], 0x1347
cmp ebx, 0x800
jne short loc_fffb207a  ; jne 0xfffb207a
jmp short loc_fffb20db  ; jmp 0xfffb20db

loc_fffb2099:  ; not directly referenced
lea esi, [ebx + 0x4060]
mov dword [ebp - 0x14], esi
mov esi, dword [ebp - 0x1c]
lea ecx, [ebx + 0x4054]
sub esi, ebx

loc_fffb20ad:  ; not directly referenced
mov edi, dword [eax + 0x103f]
mov edx, dword [esi + ecx - 0x4054]
add edi, ecx
mov dword [edi], edx
mov edi, dword [eax + 0x103f]
mov edx, dword [esi + ecx - 0x4054]
lea edi, [ecx + edi - 0xc]
add ecx, 4
cmp ecx, dword [ebp - 0x14]
mov dword [edi], edx
jne short loc_fffb20ad  ; jne 0xfffb20ad
jmp short loc_fffb2082  ; jmp 0xfffb2082

loc_fffb20db:  ; not directly referenced
lea esp, [esp + 0x10]
pop ebx
pop esi
pop edi
pop ebp
ret

MCHBAR64:
push ebp
mov ebp, esp
lea esp, [esp - 0x10]
mov eax, dword [eax + 0x103f]
movq qword [ebp - 8], mm0
movq mm0, qword [edx + eax]
movq qword [ebp - 0x10], mm0
movq mm0, qword [ebp - 8]
emms
mov eax, dword [ebp - 0x10]
mov edx, dword [ebp - 0xc]
leave
ret

MCHBAR_WRITE64:
push ebp
mov ebp, esp
push esi
push ebx
lea esp, [esp - 0x10]
mov ebx, dword [ebp + 8]
mov esi, dword [ebp + 0xc]
mov ecx, dword [eax + 0x103f]
mov dword [ebp - 0x18], ebx
mov dword [ebp - 0x14], esi
movq qword [ebp - 0x10], mm0
movq mm0, qword [ebp - 0x18]
movq qword [edx + ecx], mm0
movq mm0, qword [ebp - 0x10]
emms
lea esp, [esp + 0x10]
pop ebx
pop esi
pop ebp
ret

fcn_fffb2140:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push ebx
mov ebx, 0xa9e
jmp short loc_fffb215a  ; jmp 0xfffb215a

loc_fffb214d:  ; not directly referenced
imul eax, eax, 0x3e8
xor edx, edx
div ebx
add ecx, 0x64

loc_fffb215a:  ; not directly referenced
cmp eax, 0x10f
ja short loc_fffb214d  ; ja 0xfffb214d
imul edx, eax, 0xfffffffffffffff0
mov ebx, 0x2710
add edx, 0x2d3a
imul edx, eax
lea eax, [edx - 0xeefac]
xor edx, edx
div ebx
pop ebx
pop ebp
add eax, ecx
ret

fcn_fffb2181:  ; not directly referenced
push ebp
mov ecx, 0x11
xor edx, edx
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x19]
mov esi, ref_fffcbaa0  ; mov esi, 0xfffcbaa0
lea esp, [esp - 0x20]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
lea ecx, [eax + eax]
jmp short loc_fffb21ab  ; jmp 0xfffb21ab

loc_fffb21a0:  ; not directly referenced
mov ecx, eax
add edx, 0xa
shr ecx, 2
shr eax, 3

loc_fffb21ab:  ; not directly referenced
cmp eax, 8
ja short loc_fffb21a0  ; ja 0xfffb21a0
movzx eax, byte [ebp + ecx - 0x19]
lea esp, [esp + 0x20]
pop esi
add eax, edx
pop edi
pop ebp
ret

fcn_fffb21f3:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, eax
lea esp, [esp - 0x6c]
mov al, byte [ebp + 0xc]
mov byte [ebp - 0x4a], dl
mov byte [ebp - 0x49], cl
mov byte [ebp - 0x5c], al
mov ecx, 1
mov edx, 8
lea eax, [ebp - 0x38]
call mrc_setmem
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0x30]
call mrc_setmem
mov ecx, 9
mov edx, 8
lea eax, [ebp - 0x28]
call mrc_setmem
xor edx, edx
mov ecx, 2
lea eax, [ebp - 0x20]
call mrc_fillword
cmp byte [ebp - 0x49], 1
jne short loc_fffb2278  ; jne 0xfffb2278
mov byte [ebp - 0x35], 0xa
mov byte [ebp - 0x36], 0x13
mov byte [ebp - 0x37], 0x19
mov byte [ebp - 0x38], 0x19
mov byte [ebp - 0x2d], 0xa
mov byte [ebp - 0x2e], 0xa
mov byte [ebp - 0x25], 0x3f
mov byte [ebp - 0x26], 0x3f
jmp near loc_fffb2301  ; jmp 0xfffb2301

loc_fffb2278:  ; not directly referenced
cmp byte [ebp - 0x49], 2
je short loc_fffb22fb  ; je 0xfffb22fb
cmp byte [ebp - 0x49], 5
jne short loc_fffb2286  ; jne 0xfffb2286
jmp short loc_fffb22f5  ; jmp 0xfffb22f5

loc_fffb2286:  ; not directly referenced
cmp byte [ebp - 0x49], 6
je short loc_fffb2301  ; je 0xfffb2301
cmp byte [ebp - 0x49], 9
jne short loc_fffb22b8  ; jne 0xfffb22b8
movzx eax, byte [ebp - 0x4a]
test byte [ebp - 0x4a], 1
je short loc_fffb22a5  ; je 0xfffb22a5
mov edx, dword [ebx + 0x2b25]
mov dword [ebp - 0x20], edx

loc_fffb22a5:  ; not directly referenced
test al, 2
mov byte [ebp - 0x4b], 2
je short loc_fffb2305  ; je 0xfffb2305
mov eax, dword [ebx + 0x3e6c]
mov dword [ebp - 0x1c], eax
jmp short loc_fffb2305  ; jmp 0xfffb2305

loc_fffb22b8:  ; not directly referenced
cmp byte [ebp - 0x49], 0xa
mov byte [ebp - 0x4b], 1
jne short loc_fffb2305  ; jne 0xfffb2305
movzx edx, byte [ebp - 0x4a]
test byte [ebp - 0x4a], 1
je short loc_fffb22de  ; je 0xfffb22de
mov eax, dword [ebx + 0x2b25]
mov dword [ebp - 0x20], eax
shr eax, 0xf
and eax, 0xf
mov byte [ebp - 0x3a], al

loc_fffb22de:  ; not directly referenced
and dl, 2
je short loc_fffb22f5  ; je 0xfffb22f5
mov eax, dword [ebx + 0x3e6c]
mov dword [ebp - 0x1c], eax
shr eax, 0xf
and eax, 0xf
mov byte [ebp - 0x39], al

loc_fffb22f5:  ; not directly referenced
mov byte [ebp - 0x4b], 8
jmp short loc_fffb2305  ; jmp 0xfffb2305

loc_fffb22fb:  ; not directly referenced
mov byte [ebp - 0x4b], 7
jmp short loc_fffb2305  ; jmp 0xfffb2305

loc_fffb2301:  ; not directly referenced
mov byte [ebp - 0x4b], 4

loc_fffb2305:  ; not directly referenced
movzx edx, byte [ebp - 0x4a]
xor edi, edi
movzx ecx, byte [ebp - 0x4b]
mov byte [ebp - 0x5a], 0
mov dword [ebp - 0x60], edx
mov dword [ebp - 0x68], ecx

loc_fffb2319:  ; not directly referenced
mov dl, byte [ebp + edi - 0x38]
mov eax, edi
mov byte [ebp - 0x50], al
mov byte [ebp - 0x70], dl
movzx eax, dl
dec eax
call mrc_highest_bit
mov dl, byte [ebp - 0x70]
cmp dl, 0x1f
jbe short loc_fffb2368  ; jbe 0xfffb2368
mov byte [ebp + edi - 0x38], al

loc_fffb233a:  ; not directly referenced
mov al, byte [ebp - 0x50]
mov dword [ebp - 0x58], 0x4004
shl eax, 4
add eax, dword [ebp - 0x50]
cmp byte [ebp - 0x50], 4
mov byte [ebp - 0x5b], al
sbb eax, eax
mov dword [ebp - 0x54], 0x4910
and eax, 0x1f
xor esi, esi
mov byte [ebp - 0x59], al
or byte [ebp - 0x59], 0x80
jmp short loc_fffb2371  ; jmp 0xfffb2371

loc_fffb2368:  ; not directly referenced
add edx, 0x20
mov byte [ebp + edi - 0x38], dl
jmp short loc_fffb233a  ; jmp 0xfffb233a

loc_fffb2371:  ; not directly referenced
mov edx, dword [ebp - 0x60]
bt edx, esi
jae loc_fffb2578  ; jae 0xfffb2578
mov edx, dword [ebx + 0x103f]
mov ecx, dword [ebp - 0x58]
lea eax, [edx + ecx + 0x94]
mov eax, dword [eax]
shr eax, 0xc
and eax, 1
cmp byte [ebp - 0x49], 1
mov byte [ebp - 0x5a], al
jne loc_fffb2456  ; jne 0xfffb2456
movzx ecx, byte [ebp + edi - 0x28]
movzx eax, byte [ebp + edi - 0x30]
and ecx, 0x3f
shl ecx, 0x10
and eax, 0x3f
shl eax, 8
mov dword [ebp - 0x74], ecx
mov cl, byte [ebp + edi - 0x38]
or eax, dword [ebp - 0x74]
and ecx, 0x1f
mov dword [ebp - 0x64], ecx
mov cl, byte [ebp + edi - 0x38]
shr cl, 5
or eax, dword [ebp - 0x64]
and ecx, 1
shl ecx, 5
or eax, ecx
mov ecx, dword [ebp - 0x58]
lea edx, [edx + ecx + 0x1fc]
mov dword [edx], eax
mov eax, dword [ebx + 0x1005]
cmp eax, HASWELL_FAMILY_MOBILE
jne short loc_fffb23fe  ; jne 0xfffb23fe
cmp dword [ebx + 0x1001], 2
jbe short loc_fffb2419  ; jbe 0xfffb2419
jmp short loc_fffb2436  ; jmp 0xfffb2436

loc_fffb23fe:  ; not directly referenced
cmp eax, HASWELL_FAMILY_GT3E
jne short loc_fffb2410  ; jne 0xfffb2410

loc_fffb2405:  ; not directly referenced
cmp dword [ebx + 0x1001], 0
je short loc_fffb2419  ; je 0xfffb2419
jmp short loc_fffb2436  ; jmp 0xfffb2436

loc_fffb2410:  ; not directly referenced
cmp eax, HASWELL_FAMILY_ULT
je short loc_fffb2405  ; je 0xfffb2405
jmp short loc_fffb2436  ; jmp 0xfffb2436

loc_fffb2419:  ; not directly referenced
mov eax, dword [ebp + 8]
mov ecx, dword [ebp - 0x54]
mov al, byte [eax + edi]
mov dl, al
mov eax, dword [ebx + 0x103f]
inc edx
lea eax, [ecx + eax - 0x66]
mov byte [eax], dl
jmp near loc_fffb2578  ; jmp 0xfffb2578

loc_fffb2436:  ; not directly referenced
mov eax, dword [ebp + 8]
mov edx, dword [ebx + 0x103f]
movzx ecx, byte [eax + edi]
mov eax, 1
lea edx, [edx + esi*4 + 0x4980]
shl eax, cl
jmp near loc_fffb2519  ; jmp 0xfffb2519

loc_fffb2456:  ; not directly referenced
cmp byte [ebp - 0x49], 2
jne short loc_fffb2474  ; jne 0xfffb2474
sub esp, 0xc
mov ecx, dword [ebp - 0x68]
push edi
mov edx, esi
mov eax, ebx
call fcn_fffc4283  ; call 0xfffc4283
add esp, 0x10
jmp near loc_fffb2578  ; jmp 0xfffb2578

loc_fffb2474:  ; not directly referenced
mov al, byte [ebp - 0x49]
sub eax, 5
cmp al, 1
ja short loc_fffb24f0  ; ja 0xfffb24f0
mov ecx, dword [ebp - 0x54]
cmp byte [ebp - 0x49], 5
lea eax, [edx + ecx - 0x65]
mov dl, byte [ebp - 0x5b]
mov byte [eax], dl
jne short loc_fffb24ab  ; jne 0xfffb24ab
cmp byte [ebp - 0x50], 7
mov eax, 1
setne cl
cmp byte [ebp - 0x50], 0
setne dl
test cl, dl
jne short loc_fffb24b8  ; jne 0xfffb24b8

loc_fffb24a7:  ; not directly referenced
xor eax, eax
jmp short loc_fffb24b8  ; jmp 0xfffb24b8

loc_fffb24ab:  ; not directly referenced
test edi, 0xfd
je short loc_fffb24a7  ; je 0xfffb24a7
mov eax, 1

loc_fffb24b8:  ; not directly referenced
lea ecx, [eax - 0x80]
mov edx, dword [ebx + 0x103f]
mov byte [ebp - 0x4c], cl
mov ecx, dword [ebp - 0x54]
sub eax, 0xffffffffffffff80
shl eax, 0xc
lea edx, [ecx + edx + 7]
mov cl, byte [ebp - 0x4c]
mov byte [edx], cl
mov ecx, dword [ebp - 0x54]
add ecx, dword [ebx + 0x103f]
mov edx, dword [ecx]
and edx, 0xfff00fff
or eax, edx
mov dword [ecx], eax
jmp near loc_fffb2578  ; jmp 0xfffb2578

loc_fffb24f0:  ; not directly referenced
cmp byte [ebp - 0x49], 9
jne short loc_fffb251d  ; jne 0xfffb251d
cmp byte [ebp - 0x50], 1
mov al, byte [ebp + esi*4 - 0x1f]
sbb ecx, ecx
and eax, 0xffffff8f
add ecx, 5
and ecx, 7
shl ecx, 4
or eax, ecx
mov byte [ebp + esi*4 - 0x1f], al
mov eax, dword [ebp + esi*4 - 0x20]
add edx, dword [ebp - 0x58]

loc_fffb2519:  ; not directly referenced
mov dword [edx], eax
jmp short loc_fffb2578  ; jmp 0xfffb2578

loc_fffb251d:  ; not directly referenced
cmp byte [ebp - 0x49], 0xa
jne short loc_fffb2578  ; jne 0xfffb2578
mov eax, edi
and eax, 3
mov cl, al
mov byte [ebp - 0x4c], al
add ecx, 4
mov al, byte [ebp + esi*4 - 0x1f]
and ecx, 7
and eax, 0xffffff8f
shl ecx, 4
or eax, ecx
mov byte [ebp + esi*4 - 0x1f], al
mov al, byte [ebp - 0x4c]
add al, byte [ebp + esi - 0x3a]
mov ecx, eax
mov eax, dword [ebp + esi*4 - 0x20]
and ecx, 0xf
and eax, 0xfff87fff
shl ecx, 0xf
or eax, ecx
mov dword [ebp + esi*4 - 0x20], eax
add edx, dword [ebp - 0x58]
mov cl, byte [ebp - 0x59]
mov dword [edx], eax
mov edx, dword [ebp - 0x54]
mov eax, dword [ebx + 0x103f]
lea eax, [edx + eax + 7]
mov byte [eax], cl

loc_fffb2578:  ; not directly referenced
inc esi
add dword [ebp - 0x54], 8
add dword [ebp - 0x58], 0x400
cmp esi, 2
jne loc_fffb2371  ; jne 0xfffb2371
mov eax, ebx
call wait_5030
cmp byte [ebp - 0x50], 0
mov eax, 1
sete cl
cmp byte [ebp - 0x5c], 0
setne dl
test cl, dl
mov edx, 5
cmovne eax, edx
mov edx, dword [ebx + 0x103f]
mov dword [edx + 0x4800], eax
mov esi, dword [ebx + 0x103f]
lea eax, [esi + 0x4804]
mov dword [ebp - 0x50], eax

loc_fffb25cc:  ; not directly referenced
mov edx, dword [ebp - 0x50]
mov eax, dword [edx]
mov ecx, eax
mov edx, eax
shr ecx, 0x10
shr edx, 0x10
and ecx, 2
and edx, 1
or edx, ecx
and dl, byte [ebp - 0x4a]
cmp dl, byte [ebp - 0x4a]
jne short loc_fffb25cc  ; jne 0xfffb25cc
mov ecx, eax
mov dl, al
and ecx, 2
and edx, 1
or edx, ecx
test byte [ebp - 0x4a], dl
je short loc_fffb2604  ; je 0xfffb2604
cmp byte [ebp - 0x5a], 0
je short loc_fffb2604  ; je 0xfffb2604
jmp short loc_fffb2645  ; jmp 0xfffb2645

loc_fffb2604:  ; not directly referenced
inc edi
mov ecx, edi
cmp byte [ebp - 0x4b], cl
ja loc_fffb2319  ; ja 0xfffb2319
mov dl, byte [ebp - 0x49]
sub edx, 9
cmp dl, 1
ja short loc_fffb2645  ; ja 0xfffb2645
test byte [ebp - 0x60], 1
je short loc_fffb262d  ; je 0xfffb262d
mov edx, dword [ebx + 0x2b25]
mov dword [esi + 0x4004], edx

loc_fffb262d:  ; not directly referenced
test byte [ebp - 0x60], 2
je short loc_fffb2645  ; je 0xfffb2645
mov edx, dword [ebx + 0x103f]
mov ecx, dword [ebx + 0x3e6c]
mov dword [edx + 0x4404], ecx

loc_fffb2645:  ; not directly referenced
and al, byte [ebp - 0x4a]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb2650:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
lea esp, [esp - 0xdc]
mov esi, dword [ebp + 8]
mov byte [ebp - 0x5e], dl
mov bl, byte [ebp + 0x14]
mov dl, byte [ebp + 0xc]
mov byte [ebp - 0xd8], bl
movzx eax, si
mov byte [ebp - 0x49], dl
mov bl, byte [ebp + 0x1c]
mov dl, byte [ebp + 0x20]
dec eax
mov byte [ebp - 0x4a], cl
mov byte [ebp - 0xb8], bl
mov byte [ebp - 0x50], dl
mov dword [ebp - 0x45], 0
mov dword [ebp - 0x41], 0
mov dword [ebp - 0x3d], 0
mov ebx, dword [ebp + 0x24]
call mrc_highest_bit
mov cl, byte [ebp - 0x49]
mov byte [ebp - 0x5d], al
inc ecx
sub ecx, eax
test cl, cl
mov byte [ebp - 0x49], cl
setle cl
cmp byte [ebp - 0x4a], 4
sete al
or cl, al
jne short loc_fffb26d4  ; jne 0xfffb26d4
mov dl, byte [ebp - 0x49]
cmp byte [ebp - 0x4a], 5
mov al, 1
cmove edx, eax
mov byte [ebp - 0x49], dl
jmp short loc_fffb26d8  ; jmp 0xfffb26d8

loc_fffb26d4:  ; not directly referenced
mov byte [ebp - 0x49], 1

loc_fffb26d8:  ; not directly referenced
movsx ecx, byte [ebp - 0x49]
mov dword [ebp - 0x64], 1
dec ecx
lea edx, [esi + esi]
shl dword [ebp - 0x64], cl
cmp si, 0x7f
mov cl, byte [ebp - 0x5d]
lea eax, [esi - 0x80]
cmovbe ecx, eax
cmp dx, 0x7f
mov byte [ebp - 0x88], cl
lea ecx, [edx - 0x80]
mov byte [ebp - 0x98], cl
jbe short loc_fffb271d  ; jbe 0xfffb271d
movzx edx, dx
lea eax, [edx - 1]
call mrc_highest_bit
mov byte [ebp - 0x98], al

loc_fffb271d:  ; not directly referenced
mov eax, dword [ebp + 0x18]
mov si, word [eax]
movzx eax, si
dec eax
call mrc_highest_bit
cmp si, 0x1f
jbe short loc_fffb273d  ; jbe 0xfffb273d
mov edx, dword [ebp + 0x18]
movzx eax, al
mov word [edx], ax
jmp short loc_fffb2746  ; jmp 0xfffb2746

loc_fffb273d:  ; not directly referenced
mov ecx, dword [ebp + 0x18]
add esi, 0x20
mov word [ecx], si

loc_fffb2746:  ; not directly referenced
cmp byte [ebp - 0x50], 0
je short loc_fffb2765  ; je 0xfffb2765
mov eax, dword [edi + 0x103f]
mov eax, dword [eax + 0x4cb0]
and ax, 0xfff
add eax, 0x10
cmp bx, ax
cmovb ebx, eax

loc_fffb2765:  ; not directly referenced
cmp bx, 0xff
mov word [ebp - 0x78], 0xff
cmova bx, word [ebp - 0x78]
mov al, byte [ebp - 0x98]
mov word [ebp - 0x78], bx
mov bl, byte [ebp - 0x88]
shr bl, 7
mov dword [ebp - 0x50], 0x4960
mov byte [ebp - 0xa8], bl
mov bl, byte [ebp - 0xb8]
shr al, 7
and ebx, 1
mov byte [ebp - 0xc8], al
mov esi, 0x4040
mov dword [ebp - 0x58], 0
mov dword [ebp - 0xdc], ebx

loc_fffb27b9:  ; not directly referenced
movzx edx, byte [ebp - 0x5e]
mov ebx, dword [ebp - 0x58]
bt edx, ebx
mov dword [ebp - 0x68], edx
mov eax, dword [edi + 0x103f]
jb short loc_fffb27e3  ; jb 0xfffb27e3
mov ebx, dword [ebp - 0x50]
lea eax, [eax + ebx*2 - 0x4a18]
mov dword [eax], 0
jmp near loc_fffb2c38  ; jmp 0xfffb2c38

loc_fffb27e3:  ; not directly referenced
lea eax, [esi + eax + 0x158]
mov dl, byte [ebp - 0xdc]
cmp byte [ebp - 0xb8], 0
mov byte [eax], dl
je short loc_fffb2812  ; je 0xfffb2812
sub esp, 0xc
mov ecx, 7
push 8
mov edx, dword [ebp - 0x58]
mov eax, edi
call fcn_fffc4283  ; call 0xfffc4283
add esp, 0x10

loc_fffb2812:  ; not directly referenced
cmp byte [ebp - 0x4a], 5
ja short loc_fffb282a  ; ja 0xfffb282a
movzx eax, byte [ebp - 0x4a]
mov bl, byte [eax + ref_fffcbab4]  ; mov bl, byte [eax - 0x3454c]
mov cl, byte [eax + ref_fffcbabc]  ; mov cl, byte [eax - 0x34544]
jmp short loc_fffb282e  ; jmp 0xfffb282e

loc_fffb282a:  ; not directly referenced
xor ecx, ecx
xor ebx, ebx

loc_fffb282e:  ; not directly referenced
and ebx, 7
and ecx, 7
shl ebx, 0x18
xor edx, edx
shl ecx, 0x1c
or ecx, ebx
mov ebx, ecx
xor ecx, ecx
and bh, 0xcf
or bh, 0x18
cmp byte [edi + 0x1741], 0
setne cl
shl ecx, 7
or ecx, ebx
mov ebx, ecx
or ebx, 0x20
cmp byte [ebp - 0x4a], 6
cmove ecx, ebx
mov eax, ecx
mov ecx, edx
and ecx, 0xfffffc00
mov edx, ecx
mov ecx, dword [edi + 0x1005]
or edx, 2
cmp ecx, HASWELL_FAMILY_MOBILE
jne short loc_fffb288b  ; jne 0xfffb288b
cmp dword [edi + 0x1001], 2
jbe short loc_fffb28a8  ; jbe 0xfffb28a8
jmp short loc_fffb28c8  ; jmp 0xfffb28c8

loc_fffb288b:  ; not directly referenced
cmp ecx, HASWELL_FAMILY_GT3E
jne short loc_fffb289e  ; jne 0xfffb289e

loc_fffb2893:  ; not directly referenced
cmp dword [edi + 0x1001], 0
je short loc_fffb28a8  ; je 0xfffb28a8
jmp short loc_fffb28c8  ; jmp 0xfffb28c8

loc_fffb289e:  ; not directly referenced
cmp ecx, HASWELL_FAMILY_ULT
je short loc_fffb2893  ; je 0xfffb2893
jmp short loc_fffb28c8  ; jmp 0xfffb28c8

loc_fffb28a8:  ; not directly referenced
cmp byte [ebp - 0x49], 0x1f
mov bl, byte [ebp - 0x49]
mov cl, 0x1f
cmovle ecx, ebx
mov ebx, eax
and ecx, 0x1f
and ebx, 0xffe0ffff
shl ecx, 0x10
mov eax, ebx
or eax, ecx
jmp short loc_fffb28da  ; jmp 0xfffb28da

loc_fffb28c8:  ; not directly referenced
mov ecx, dword [edi + 0x103f]
mov ebx, dword [ebp - 0x50]
lea ecx, [ebx + ecx + 0x20]
mov ebx, dword [ebp - 0x64]
mov dword [ecx], ebx

loc_fffb28da:  ; not directly referenced
push ecx
mov ebx, dword [ebp - 0x50]
push ecx
push edx
lea ecx, [ebx + ebx - 0x4a18]
mov edx, ecx
push eax
mov eax, edi
call MCHBAR_WRITE64
mov eax, dword [edi + 0x103f]
add esp, 0x10
lea eax, [ebx + eax - 0xa8]
mov bl, byte [ebp - 0x88]
mov byte [eax], 4
mov al, byte [ebp - 0xa8]
and eax, 1
and ebx, 0x7f
shl eax, 7
or ebx, eax
cmp dword [edi + 0x1005], HASWELL_FAMILY_MOBILE
mov eax, dword [ebp - 0x78]
jne short loc_fffb2943  ; jne 0xfffb2943
cmp dword [edi + 0x1001], 1
jne short loc_fffb2943  ; jne 0xfffb2943
and eax, 0x3ff
or ebx, 0x4000000
shl eax, 8
jmp short loc_fffb2951  ; jmp 0xfffb2951

loc_fffb2943:  ; not directly referenced
and eax, 0x3fff
or ebx, 0x8000000
shl eax, 8

loc_fffb2951:  ; not directly referenced
or ebx, eax
mov dl, byte [ebp - 0x98]
mov eax, ebx
and edx, 0x7f
and eax, 0xc3fff00
mov dword [ebp - 0x54], eax
mov al, byte [ebp - 0xc8]
and eax, 1
or dword [ebp - 0x54], edx
shl eax, 7
or dword [ebp - 0x54], eax
cmp byte [ebp - 0x4a], 4
lea edx, [ebp - 0x38]
je short loc_fffb2993  ; je 0xfffb2993
cmp byte [ebp - 0x4a], 5
je short loc_fffb29fc  ; je 0xfffb29fc
cmp byte [ebp - 0x4a], 3
jne loc_fffb2a4a  ; jne 0xfffb2a4a
jmp short loc_fffb29e4  ; jmp 0xfffb29e4

loc_fffb2993:  ; not directly referenced
mov ecx, 1
mov eax, edi
mov dword [ebp - 0x38], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
mov dword [ebp - 0x5c], 1

loc_fffb29a9:  ; not directly referenced
mov edx, dword [ebp - 0x5c]
mov ecx, dword [ebp - 0x54]
mov eax, edi
mov dword [ebp + edx*4 - 0x38], ecx
lea edx, [ebp + edx*4 - 0x38]
mov ecx, 2
call fcn_fffb1cd8  ; call 0xfffb1cd8
inc dword [ebp - 0x5c]
cmp dword [ebp - 0x5c], 7
jne short loc_fffb29a9  ; jne 0xfffb29a9
xor ecx, ecx
lea edx, [ebp - 0x1c]
mov eax, edi
mov dword [ebp - 0x1c], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
mov byte [ebp - 0x39], 0xff
jmp near loc_fffb2a6c  ; jmp 0xfffb2a6c

loc_fffb29e4:  ; not directly referenced
mov ebx, dword [ebp - 0x54]
mov ecx, 3
mov eax, edi
mov dword [ebp - 0x38], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
mov byte [ebp - 0x39], 1
jmp short loc_fffb2a6c  ; jmp 0xfffb2a6c

loc_fffb29fc:  ; not directly referenced
mov ecx, 1
mov eax, edi
mov dword [ebp - 0x38], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
mov eax, dword [ebp - 0x54]
mov ecx, 2
mov dword [ebp - 0x34], eax
lea edx, [ebp - 0x34]
mov eax, edi
call fcn_fffb1cd8  ; call 0xfffb1cd8
xor ecx, ecx
lea edx, [ebp - 0x30]
mov eax, edi
mov dword [ebp - 0x30], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
mov ebx, dword [ebp - 0x54]
mov ecx, 3
lea edx, [ebp - 0x2c]
mov eax, edi
mov dword [ebp - 0x2c], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
mov byte [ebp - 0x39], 0xf
jmp short loc_fffb2a6c  ; jmp 0xfffb2a6c

loc_fffb2a4a:  ; not directly referenced
mov ecx, 1
mov eax, edi
mov dword [ebp - 0x38], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
xor ecx, ecx
lea edx, [ebp - 0x34]
mov eax, edi
mov dword [ebp - 0x34], ebx
call fcn_fffb1cd8  ; call 0xfffb1cd8
mov byte [ebp - 0x39], 3

loc_fffb2a6c:  ; not directly referenced
imul eax, dword [ebp - 0x58], 0x28
lea ecx, [ebp - 0x39]
mov dword [ebp - 0x5c], 0
sub ecx, eax
lea edx, [eax + 0x4808]

loc_fffb2a82:  ; not directly referenced
movzx ebx, byte [ebp - 0x39]
mov eax, dword [ebp - 0x5c]
bt ebx, eax
jb loc_fffb2b39  ; jb 0xfffb2b39

loc_fffb2a92:  ; not directly referenced
push edx
lea eax, [ebp - 0x3d]
mov ecx, dword [ebp + 0x10]
push eax
lea eax, [ebp - 0x41]
mov edx, dword [ebp - 0x58]
push eax
lea eax, [ebp - 0x45]
push eax
mov eax, dword [ebp + 0x10]
add eax, 0x24
push eax
mov eax, dword [ebp + 0x10]
add eax, 0x14
push eax
mov eax, dword [ebp + 0x10]
add eax, 0x10
push eax
mov eax, dword [ebp + 0x10]
add eax, 8
push eax
mov eax, edi
call fcn_fffc3d24  ; call 0xfffc3d24
mov ebx, dword [ebp + 0x18]
add esp, 0x20
movzx eax, byte [ebx + 6]
movzx edx, byte [ebx + 2]
and eax, 0x3f
mov bx, word [ebx]
and edx, 0x3f
shl edx, 8
mov ecx, ebx
shl eax, 0x10
and ecx, 0x1f
shr bx, 5
or eax, edx
and ebx, 1
or eax, ecx
shl ebx, 5
mov edx, dword [edi + 0x103f]
or eax, ebx
mov ebx, dword [ebp + 0x18]
lea edx, [esi + edx + 0x1c0]
mov dword [edx], eax
mov dl, byte [ebx + 0xa]
cmp dl, 2
sete al
cmp dl, 4
sete dl
or eax, edx
mov dl, byte [ebp - 0x4a]
cmp al, 1
sbb eax, eax
sub edx, 4
and eax, 2
movzx eax, al
or eax, 0x8090
cmp dl, 1
ja short loc_fffb2b75  ; ja 0xfffb2b75
jmp short loc_fffb2b5f  ; jmp 0xfffb2b5f

loc_fffb2b39:  ; not directly referenced
mov eax, dword [edi + 0x103f]
mov ebx, dword [ecx + edx - 0x4807]
add eax, edx
inc dword [ebp - 0x5c]
add edx, 4
cmp dword [ebp - 0x5c], 8
mov dword [eax], ebx
jne loc_fffb2a82  ; jne 0xfffb2a82
jmp near loc_fffb2a92  ; jmp 0xfffb2a92

loc_fffb2b5f:  ; not directly referenced
mov dl, byte [ebp - 0x5d]
and eax, 0xf8c0ffff
inc edx
and edx, 7
shl edx, 0x18
or eax, edx
or eax, 0x10000

loc_fffb2b75:  ; not directly referenced
mov edx, dword [edi + 0x103f]
add edx, esi
mov dword [edx], eax
mov eax, dword [edi + 0x103f]
lea eax, [esi + eax + 0x44]
mov dword [eax], 0
mov edx, dword [edi + 0x103f]
mov al, byte [ebp - 0xd8]
and eax, 3
shl eax, 0xc
or eax, 0xffff0001
lea edx, [esi + edx + 0x58]
mov dword [edx], eax
lea edx, [esi + 0x98]
push eax
push eax
mov eax, edi
push 0
push 0
call MCHBAR_WRITE64
mov eax, dword [edi + 0x103f]
add esp, 0x10
lea eax, [esi + eax + 0x5c]
mov byte [eax], 0
cmp byte [edi + 0x1741], 0
je short loc_fffb2c38  ; je 0xfffb2c38
mov eax, dword [edi + 0x103f]
mov ebx, dword [ebp - 0x50]
lea eax, [ebx + eax - 8]
mov byte [eax], 0xfc
movzx ecx, word [edi + 0x1766]
test cx, cx
je short loc_fffb2c08  ; je 0xfffb2c08
mov eax, 0x9c40
cdq
idiv ecx
mov ebx, eax
mov eax, 0x30d40
cdq
idiv ecx
jmp short loc_fffb2c12  ; jmp 0xfffb2c12

loc_fffb2c08:  ; not directly referenced
mov eax, 0xff
mov ebx, 0xff

loc_fffb2c12:  ; not directly referenced
shl eax, 0x18
mov ecx, ebx
shl ecx, 8
movzx ebx, bl
and ecx, 0xff00
shl ebx, 0x10
or ebx, ecx
or ebx, eax
mov eax, dword [ebp - 0x50]
add eax, dword [edi + 0x103f]
or ebx, 2
mov dword [eax], ebx

loc_fffb2c38:  ; not directly referenced
inc dword [ebp - 0x58]
add esi, 0x400
add dword [ebp - 0x50], 4
cmp dword [ebp - 0x58], 2
jne loc_fffb27b9  ; jne 0xfffb27b9
mov edx, dword [ebp - 0x68]
mov eax, edi
mov ecx, 2
call fcn_fffb958c  ; call 0xfffb958c
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb2c66:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, edx
push esi
mov esi, ecx
push ebx
lea esp, [esp - 0xc]
mov dl, byte [ebp + 8]
mov byte [ebp - 0xf], dl
mov dl, cl
mov bl, byte [ebp + 0xc]
inc dl
mov byte [ebp - 0x10], bl
mov bl, byte [ebp + 0x10]
je short loc_fffb2c91  ; je 0xfffb2c91
lea edx, [esi + 1]
mov byte [ebp - 0xe], dl
jmp short loc_fffb2c97  ; jmp 0xfffb2c97

loc_fffb2c91:  ; not directly referenced
mov byte [ebp - 0xe], 4
xor ecx, ecx

loc_fffb2c97:  ; not directly referenced
and edi, 0xff
mov byte [ebp - 0xd], cl
imul edx, edi, 0x1347
lea esi, [eax + edx + 0x297c]
add edx, eax
mov dword [ebp - 0x14], esi
mov dword [ebp - 0x18], edx
jmp short loc_fffb2d27  ; jmp 0xfffb2d27

loc_fffb2cb7:  ; not directly referenced
mov esi, dword [ebp - 0x18]
mov cl, byte [ebp - 0xd]
movzx edx, byte [ebp - 0xd]
mov eax, 1
shl eax, cl
test byte [esi + 0x3acb], al
je short loc_fffb2d24  ; je 0xfffb2d24
movzx ecx, byte [ebp - 0xf]
lea eax, [edx + edx*8]
add eax, dword [ebp - 0x14]
add eax, ecx
cmp byte [ebp - 0x10], 0
mov dl, byte [eax + 0x1106]
mov al, byte [eax + 0x112a]
jne short loc_fffb2cfa  ; jne 0xfffb2cfa
cmp al, dl
cmova eax, edx
cmp bl, al
cmova ebx, eax
jmp short loc_fffb2d24  ; jmp 0xfffb2d24

loc_fffb2cfa:  ; not directly referenced
movzx edi, dl
mov ecx, 0x3f
movzx esi, bl
sub ecx, edi
cmp esi, ecx
jle short loc_fffb2d0f  ; jle 0xfffb2d0f
mov bl, 0x3f
sub ebx, edx

loc_fffb2d0f:  ; not directly referenced
movzx esi, al
mov edx, 0x3f
movzx ecx, bl
sub edx, esi
cmp ecx, edx
jle short loc_fffb2d24  ; jle 0xfffb2d24
mov bl, 0x3f
sub ebx, eax

loc_fffb2d24:  ; not directly referenced
inc byte [ebp - 0xd]

loc_fffb2d27:  ; not directly referenced
mov al, byte [ebp - 0xe]
cmp byte [ebp - 0xd], al
jb short loc_fffb2cb7  ; jb 0xfffb2cb7
lea esp, [esp + 0xc]
mov al, bl
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb2d3a:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
lea esp, [esp - 0x10]
mov eax, dword [eax + 0x104b]
mov ecx, dword [eax + 0xf0]
lea ebx, [eax + 0xf0]
add edx, ecx
mov dword [ebp - 8], edx

loc_fffb2d59:  ; not directly referenced
mov eax, dword [ebx]
mov edx, dword [ebp - 8]
cmp edx, ecx
jbe short loc_fffb2d64  ; jbe 0xfffb2d64
jmp short loc_fffb2d68  ; jmp 0xfffb2d68

loc_fffb2d64:  ; not directly referenced
cmp eax, ecx
jae short loc_fffb2d59  ; jae 0xfffb2d59

loc_fffb2d68:  ; not directly referenced
mov edx, dword [ebp - 8]
cmp eax, edx
jb short loc_fffb2d59  ; jb 0xfffb2d59
lea esp, [esp + 0x10]
pop ebx
pop ebp
ret

fcn_fffb2d76:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
lea esp, [esp - 0x10]
cmp edx, 0x4a
ja short loc_fffb2d8a  ; ja 0xfffb2d8a
inc edx
xor ecx, ecx
shr edx, 1
jmp short loc_fffb2da1  ; jmp 0xfffb2da1

loc_fffb2d8a:  ; not directly referenced
call fcn_fffb2d3a  ; call 0xfffb2d3a
jmp short loc_fffb2da5  ; jmp 0xfffb2da5

loc_fffb2d91:  ; not directly referenced
mov ebx, dword [eax + 0x103f]
inc ecx
mov ebx, dword [ebx + 0x4ce0]
mov dword [ebp - 8], ebx

loc_fffb2da1:  ; not directly referenced
cmp ecx, edx
jne short loc_fffb2d91  ; jne 0xfffb2d91

loc_fffb2da5:  ; not directly referenced
lea esp, [esp + 0x10]
pop ebx
pop ebp
ret

loc_fffb2dac:
dd 0x103f908b
dd 0x89550000
dd 0x6082c7e5
dd 0x00000050
dd 0xba000002
dd 0x0000000f
dd 0xfface95d
db 0xff
db 0xff

fcn_fffb2dca:  ; not directly referenced
mov edx, dword [eax + 0x103f]
push ebp
mov ebp, esp
mov dword [edx + 0x5060], 0x10200
mov edx, 0xf
pop ebp
jmp near fcn_fffb2d76  ; jmp 0xfffb2d76

fcn_fffb2de8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, eax
mov esi, dword [eax + 0x176c]
xor eax, eax

loc_fffb2df8:  ; not directly referenced
cmp dl, byte [esi + eax]
lea edi, [esi + eax]
jne short loc_fffb2e0a  ; jne 0xfffb2e0a
movzx eax, cl
mov ax, word [edi + eax*2 + 1]
jmp short loc_fffb2e14  ; jmp 0xfffb2e14

loc_fffb2e0a:  ; not directly referenced
add eax, 7
cmp eax, 0x3f
jne short loc_fffb2df8  ; jne 0xfffb2df8
xor al, al

loc_fffb2e14:  ; not directly referenced
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffb2e61  ; jne 0xfffb2e61
cmp dword [ebx + 0x1749], 1
jne short loc_fffb2e61  ; jne 0xfffb2e61
cmp cl, 2
setne cl
cmp dl, 5
sete dl
test cl, dl
je short loc_fffb2e61  ; je 0xfffb2e61
cmp dword [ebx + 0x297c], 2
jne short loc_fffb2e4b  ; jne 0xfffb2e4b
cmp byte [ebx + 0x3bb1], 5
je short loc_fffb2e5d  ; je 0xfffb2e5d

loc_fffb2e4b:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffb2e61  ; jne 0xfffb2e61
cmp byte [ebx + 0x4ef8], 5
jne short loc_fffb2e61  ; jne 0xfffb2e61

loc_fffb2e5d:  ; not directly referenced
add ax, 0xc8

loc_fffb2e61:  ; not directly referenced
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb2e66:  ; not directly referenced
push ebp
xor ecx, ecx
mov edx, 0x10
mov ebp, esp
push edi
push esi
push ebx
lea ebx, [ebp - 0x28]
mov eax, ebx
lea esp, [esp - 0x3c]
mov edi, dword [ebp + 8]
add edi, 0x1774
mov dword [ebp - 0x40], edi
xor edi, edi
call mrc_setmem
sub esp, 0xc
mov eax, dword [ebp + 8]
push 0
mov ecx, 0x11
mov edx, 3
call fcn_fffc5844  ; call 0xfffc5844
mov eax, dword [ebp + 8]
add esp, 0x10
add eax, 0x2974
mov dword [ebp - 0x34], 0
mov dword [ebp - 0x3c], eax

loc_fffb2ebb:  ; not directly referenced
mov ecx, edi
mov eax, 1
xor esi, esi
mov byte [ebp - 0x29], 0
shl eax, cl
and eax, 0xff
mov dword [ebp - 0x38], eax

loc_fffb2ed2:  ; not directly referenced
mov ecx, dword [ebp - 0x38]
mov edx, esi
mov eax, dword [ebp + 8]
call fcn_fffc41bb  ; call 0xfffc41bb
or byte [ebp - 0x29], al
movzx eax, byte [ebp - 0x29]
bt eax, esi
mov dword [ebp - 0x30], eax
jae short loc_fffb2f0f  ; jae 0xfffb2f0f
imul eax, esi, 0x1347
mov edx, dword [ebp + 8]
movzx ecx, byte [edx + 0x1755]
mov edx, dword [ebp - 0x3c]
lea eax, [edx + eax + 0x101]
xor edx, edx
call mrc_fillword

loc_fffb2f0f:  ; not directly referenced
cmp byte [ebp - 0x29], 0
je short loc_fffb2f76  ; je 0xfffb2f76
mov ebx, 1

loc_fffb2f1a:  ; not directly referenced
cmp ebx, 3
je short loc_fffb2f70  ; je 0xfffb2f70
cmp ebx, 1
jne short loc_fffb2f30  ; jne 0xfffb2f30
mov ecx, dword [ebp + 8]
mov byte [ecx + 0x1768], 9
jmp short loc_fffb2f3f  ; jmp 0xfffb2f3f

loc_fffb2f30:  ; not directly referenced
cmp ebx, 4
jne short loc_fffb2f3f  ; jne 0xfffb2f3f
mov eax, dword [ebp + 8]
mov byte [eax + 0x1768], 0

loc_fffb2f3f:  ; not directly referenced
lea eax, [ebx - 4]
lea edx, [ebp - 0x28]
cmp eax, 2
mov ecx, dword [ebp - 0x30]
sbb eax, eax
sub esp, 0xc
and eax, 0x17
push edx
add eax, 0x1f
mov edx, dword [ebp - 0x40]
movzx eax, al
push eax
mov eax, dword [ebp + 8]
push 1
push ebx
push edi
call fcn_fffc0a00  ; call 0xfffc0a00
mov dword [ebp - 0x34], eax
add esp, 0x20

loc_fffb2f70:  ; not directly referenced
inc ebx
cmp ebx, 6
jne short loc_fffb2f1a  ; jne 0xfffb2f1a

loc_fffb2f76:  ; not directly referenced
inc esi
cmp esi, 2
jne loc_fffb2ed2  ; jne 0xfffb2ed2
inc edi
cmp edi, 4
jne loc_fffb2ebb  ; jne 0xfffb2ebb
xor si, si
mov dword [ebp - 0x38], 0
mov byte [ebp - 0x29], 0
jmp near loc_fffb30fd  ; jmp 0xfffb30fd

loc_fffb2f9d:  ; not directly referenced
movzx eax, byte [ebp - 0x30]
mov cl, byte [ebp - 0x29]
imul ebx, eax, 0x1347
movzx edi, byte [ebp - 0x29]
mov dword [ebp - 0x3c], edi
mov edi, 1
shl edi, cl
mov ecx, dword [ebp + 8]
mov edx, edi
test byte [ecx + ebx + 0x3acb], dl
je loc_fffb30e7  ; je 0xfffb30e7
imul edi, eax, 0x48
imul edx, dword [ebp - 0x3c], 0x90
mov ebx, 1
add edx, edi
mov dword [ebp - 0x48], edx

loc_fffb2fde:  ; not directly referenced
cmp ebx, 3
je loc_fffb30d3  ; je 0xfffb30d3
mov ecx, 2
mov edx, ebx
mov eax, dword [ebp + 8]
mov edi, 0xa
call fcn_fffb2de8  ; call 0xfffb2de8
xor edx, edx
div di
mov edi, dword [ebp - 0x48]
xor edx, edx
mov word [ebp - 0x3c], ax
movzx eax, bl
movzx ecx, byte [eax + ref_fffcc308]  ; movzx ecx, byte [eax - 0x33cf8]
imul ecx, ecx, 0x240
add ecx, dword [ebp - 0x40]
mov edi, dword [ecx + edi]
mov eax, edi
mov word [ebp - 0x2c], di
mov edi, 0xa
div di
mov edx, dword [ebp - 0x3c]
cmp ax, dx
ja short loc_fffb3072  ; ja 0xfffb3072
cmp ebx, 4
sete dl
cmp ebx, 1
sete al
or dl, al
jne short loc_fffb3064  ; jne 0xfffb3064
cmp ebx, 5
mov edi, 1
sete dl
cmp ebx, 2
sete al
mov dword [ebp - 0x34], 0x1b
or dl, al
cmovne esi, edi
jmp short loc_fffb3072  ; jmp 0xfffb3072

loc_fffb3064:  ; not directly referenced
mov dword [ebp - 0x38], 1
mov dword [ebp - 0x34], 0x1b

loc_fffb3072:  ; not directly referenced
mov edi, dword [ebp - 0x48]
xor edx, edx
mov eax, dword [ecx + edi + 4]
mov ecx, 0xa
div cx
cmp ax, word [ebp - 0x3c]
ja short loc_fffb30c8  ; ja 0xfffb30c8
cmp ebx, 4
sete dl
cmp ebx, 1
sete al
or dl, al
jne short loc_fffb30b8  ; jne 0xfffb30b8
cmp ebx, 5
mov edi, 1
sete dl
cmp ebx, 2
sete al
mov dword [ebp - 0x34], 0x1b
or dl, al
cmovne esi, edi
jmp short loc_fffb30c8  ; jmp 0xfffb30c8

loc_fffb30b8:  ; not directly referenced
mov dword [ebp - 0x38], 1
mov dword [ebp - 0x34], 0x1b
jmp short loc_fffb30ce  ; jmp 0xfffb30ce

loc_fffb30c8:  ; not directly referenced
cmp dword [ebp - 0x38], 1
jne short loc_fffb30d3  ; jne 0xfffb30d3

loc_fffb30ce:  ; not directly referenced
cmp esi, 1
je short loc_fffb30df  ; je 0xfffb30df

loc_fffb30d3:  ; not directly referenced
inc ebx
cmp ebx, 6
jne loc_fffb2fde  ; jne 0xfffb2fde
jmp short loc_fffb30e7  ; jmp 0xfffb30e7

loc_fffb30df:  ; not directly referenced
mov byte [ebp - 0x29], 4
mov byte [ebp - 0x30], 2

loc_fffb30e7:  ; not directly referenced
inc byte [ebp - 0x30]
cmp byte [ebp - 0x30], 1
jbe loc_fffb2f9d  ; jbe 0xfffb2f9d
inc byte [ebp - 0x29]
cmp byte [ebp - 0x29], 3
ja short loc_fffb3106  ; ja 0xfffb3106

loc_fffb30fd:  ; not directly referenced
mov byte [ebp - 0x30], 0
jmp near loc_fffb2f9d  ; jmp 0xfffb2f9d

loc_fffb3106:  ; not directly referenced
cmp dword [ebp - 0x34], 0x1b
jne loc_fffb31a3  ; jne 0xfffb31a3
mov eax, 1

loc_fffb3115:  ; not directly referenced
cmp dword [ebp - 0x38], 0
jne short loc_fffb3133  ; jne 0xfffb3133
cmp eax, 4
sete cl
cmp eax, 1
sete dl
or cl, dl
je short loc_fffb3133  ; je 0xfffb3133

loc_fffb312b:  ; not directly referenced
inc eax
cmp eax, 6
jne short loc_fffb3115  ; jne 0xfffb3115
jmp short loc_fffb31a3  ; jmp 0xfffb31a3

loc_fffb3133:  ; not directly referenced
test esi, esi
jne short loc_fffb3147  ; jne 0xfffb3147
cmp eax, 5
sete cl
cmp eax, 2
sete dl
or cl, dl
jne short loc_fffb312b  ; jne 0xfffb312b

loc_fffb3147:  ; not directly referenced
cmp eax, 3
je short loc_fffb312b  ; je 0xfffb312b
xor edx, edx
mov byte [ebp - 0x29], al

loc_fffb3151:  ; not directly referenced
mov ecx, dword [ebp + 8]
mov dword [ebp - 0x30], 0
mov edi, dword [ecx + 0x176c]
mov ebx, edi

loc_fffb3163:  ; not directly referenced
mov cl, byte [ebp - 0x29]
cmp cl, byte [ebx]
jne short loc_fffb3171  ; jne 0xfffb3171
movzx ebx, word [ebx + edx*2 + 1]
jmp short loc_fffb317f  ; jmp 0xfffb317f

loc_fffb3171:  ; not directly referenced
inc dword [ebp - 0x30]
add ebx, 7
cmp dword [ebp - 0x30], 9
jne short loc_fffb3163  ; jne 0xfffb3163
xor ebx, ebx

loc_fffb317f:  ; not directly referenced
imul ecx, dword [ebp - 0x30], 7
add ebx, 0x28
add ecx, edi
cmp ebx, 0xffff
mov edi, 0xffff
cmovg ebx, edi
mov word [ecx + edx*2 + 1], bx
inc edx
cmp edx, 2
jne short loc_fffb3151  ; jne 0xfffb3151
jmp short loc_fffb312b  ; jmp 0xfffb312b

loc_fffb31a3:  ; not directly referenced
mov eax, dword [ebp - 0x34]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb31ae:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x30]
mov dword [ebp - 0x10], edx
mov edx, dword [eax + 0x1021]
mov dword [ebp - 0x34], ecx
movzx ebx, word [ebp + 0xc]
movzx ecx, word [ebp + 0x14]
mov dword [ebp - 0x18], ebx
movzx esi, word [ebp + 0x10]
mov dword [ebp - 0x30], ecx
mov dword [ebp - 0x2c], esi
mov ecx, dword [eax + edx*4 + 0x172c]
add esi, 0xf
mov eax, ebx
imul eax, esi
add ebx, esi
cdq
mov dword [ebp - 0x14], esi
idiv ebx
xor edx, edx
mov esi, 0x2710
mov edi, eax
mov eax, ecx
shr ax, 1
and ecx, 0xffff
movzx eax, ax
mov dword [ebp - 0x20], ecx
mov dword [ebp - 0x28], eax
movzx eax, byte [ebp + 8]
add eax, 0xf
mov ebx, eax
mov dword [ebp - 0x1c], eax
add ebx, edi
mov eax, dword [ebp - 0x28]
div ebx
mov ebx, 0x3e8
xor edx, edx
mov dword [ebp - 0x24], eax
imul eax, dword [ebp - 0x1c]
sub ecx, eax
mov dword [ebp - 0x3c], eax
lea eax, [ecx + ecx]
sub eax, dword [ebp - 0x20]
imul eax, eax
div ebx
xor edx, edx
imul eax, eax, 0xd2f0
div esi
mov si, 0x64
xor edx, edx
div esi
xor edx, edx
mov si, 0x3e8
mov ebx, eax
imul eax, edi, 0x3e8
add edi, 0x1e
div edi
xor edx, edx
mov edi, dword [ebp - 0x18]
imul ebx, eax
mov eax, ebx
mov ebx, dword [ebp - 0x20]
div esi
mov esi, dword [ebp - 0x3c]
imul esi, esi
mov dword [ebp - 0x38], eax
mov eax, ecx
imul eax, ecx
add eax, esi
add edi, edi
imul edi, edi, 0x64
xor edx, edx
div edi
mov edx, dword [ebp - 0x10]
mov edi, 0x64
mov dword [ebp - 0x3c], eax
mov dword [edx], eax
mov eax, ecx
xor edx, edx
sub eax, dword [ebp - 0x28]
div dword [ebp - 0x14]
imul edx, eax, 0xf
imul eax, eax
sub ecx, edx
mov edx, dword [ebp - 0x2c]
sub ebx, ecx
add edx, edx
imul edx, edx, 0x64
imul eax, eax, 0xf
imul ebx, ebx
imul ecx, ecx
mov dword [ebp - 0x18], edx
xor edx, edx
div edi
xor edx, edx
mov esi, eax
mov eax, dword [ebp - 0x24]
imul eax, eax
imul eax, dword [ebp - 0x1c]
div edi
xor edx, edx
mov edi, dword [ebp - 0x30]
add edi, 0xf
add esi, eax
lea eax, [ebx + ecx]
div dword [ebp - 0x18]
mov edx, dword [ebp - 0x10]
mov ebx, dword [ebp - 0x14]
add ebx, edi
add eax, esi
mov esi, dword [ebp - 0x34]
mov dword [ebp - 0x2c], eax
mov dword [edx + 4], eax
mov eax, dword [ebp - 0x14]
imul eax, edi
cdq
idiv ebx
xor edx, edx
lea ebx, [eax + esi]
mov ecx, eax
mov eax, dword [ebp - 0x28]
div ebx
mov ebx, dword [ebp - 0x20]
mov edx, eax
imul edx, esi
imul eax, eax
sub ebx, edx
imul eax, esi
xor edx, edx
mov esi, 0x64
mov dword [ebp - 0x1c], ebx
div esi
xor edx, edx
mov si, 0x2710
mov dword [ebp - 0x34], eax
mov eax, ebx
add eax, eax
sub eax, dword [ebp - 0x20]
imul eax, eax
mov ebx, 0x3e8
div ebx
xor edx, edx
imul eax, eax, 0xd2f0
div esi
mov si, 0x64
xor edx, edx
div esi
xor edx, edx
mov esi, dword [ebp - 0x30]
add esi, esi
mov ebx, eax
imul eax, ecx, 0x3e8
add ecx, 0x1e
div ecx
mov ecx, 0x3e8
xor edx, edx
imul ebx, eax
mov eax, ebx
div ecx
mov edx, dword [ebp - 0x10]
mov ecx, dword [ebp - 0x1c]
sub ecx, dword [ebp - 0x28]
mov dword [ebp - 0x24], eax
mov eax, dword [ebp - 0x34]
mov dword [edx + 8], eax
mov eax, ecx
xor edx, edx
div edi
mov edi, dword [ebp - 0x1c]
mov ebx, eax
imul eax, eax, 0xf
sub edi, eax
mov eax, dword [ebp - 0x20]
sub eax, edi
imul eax, eax
imul edi, edi
add eax, edi
imul esi, esi, 0x64
imul ebx, ebx
xor edx, edx
div esi
xor edx, edx
mov edi, eax
imul eax, ebx, 0xf
mov ebx, 0x64
div ebx
mov edx, dword [ebp - 0x10]
lea ebx, [edi + eax]
mov eax, ecx
mov dword [edx + 0x10], ebx
xor edx, edx
div dword [ebp - 0x14]
mov edi, dword [ebp - 0x1c]
xor edx, edx
mov ecx, eax
imul eax, eax, 0xf
imul ecx, ecx
sub edi, eax
mov eax, dword [ebp - 0x20]
sub eax, edi
imul eax, eax
imul edi, edi
add eax, edi
div dword [ebp - 0x18]
xor edx, edx
mov edi, eax
imul eax, ecx, 0xf
mov ecx, 0x64
div ecx
mov edx, dword [ebp - 0x10]
lea esi, [edi + eax]
mov dword [edx + 0xc], esi
mov eax, dword [ebp - 0x38]
add esi, ebx
mov dword [edx + 0x14], eax
mov ebx, dword [ebp - 0x34]
mov eax, dword [ebp - 0x24]
mov edi, 0x64
add ebx, eax
mov dword [edx + 0x18], eax
mov edx, dword [ebp - 0x38]
add edx, dword [ebp - 0x2c]
mov dword [ebp - 0x18], edx
mov eax, dword [ebp - 0x18]
add eax, dword [ebp - 0x3c]
lea edx, [ebx + esi]
imul edx, edx, 0x28
imul eax, eax, 0x3c
add eax, edx
xor edx, edx
div cx
mov edx, dword [ebp - 0x10]
mov word [edx + 0x24], ax
imul edx, dword [ebp - 0x24], 0x28
imul eax, dword [ebp - 0x38], 0x3c
add eax, edx
xor edx, edx
div edi
mov edx, dword [ebp - 0x10]
imul ebx, ebx, 0x28
imul esi, esi, 0x28
imul di, word [ebp - 0x18], 0x3c
mov dword [edx + 0x1c], eax
imul dx, word [ebp - 0x3c], 0x3c
lea eax, [ebx + edx]
xor edx, edx
div cx
mov edx, dword [ebp - 0x10]
mov word [edx + 0x20], ax
lea eax, [esi + edi]
xor edx, edx
div cx
mov edx, dword [ebp - 0x10]
mov word [edx + 0x22], ax
lea esp, [esp + 0x30]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb348c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x2c]
mov dword [ebp - 0x10], eax
add eax, 0x16be
mov byte [ebp - 0x12], dl
mov dword [ebp - 0x30], eax
mov eax, dword [ebp - 0x10]
add eax, 0x2974
mov dword [ebp - 0x18], 0
movzx edx, dl
mov dword [ebp - 0x38], eax
mov dword [ebp - 0x2c], edx

loc_fffb34bc:  ; not directly referenced
imul ecx, dword [ebp - 0x18], 0x1347
mov eax, dword [ebp - 0x30]
mov dword [ebp - 0x1c], ecx
cmp dword [eax + ecx + 0x12be], 2
je short loc_fffb34e2  ; je 0xfffb34e2

loc_fffb34d3:  ; not directly referenced
inc dword [ebp - 0x18]
cmp dword [ebp - 0x18], 2
je loc_fffb3651  ; je 0xfffb3651
jmp short loc_fffb34bc  ; jmp 0xfffb34bc

loc_fffb34e2:  ; not directly referenced
mov ecx, dword [ebp - 0x38]
mov edx, dword [ebp - 0x1c]
mov byte [ebp - 0x11], 0
lea edx, [ecx + edx + 8]
mov ecx, dword [ebp - 0x18]
shl ecx, 8
mov dword [ebp - 0x24], edx
mov dword [ebp - 0x34], ecx
jmp near loc_fffb361a  ; jmp 0xfffb361a

loc_fffb3501:  ; not directly referenced
mov edi, 1
shl edi, cl
mov eax, edi
test byte [ebp - 0x20], al
je short loc_fffb3526  ; je 0xfffb3526
imul edi, ecx, 0x12
mov di, word [esi + edi + 0x26d]
cmp dx, di
cmovb edx, edi
cmp bx, di
cmova ebx, edi

loc_fffb3526:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffb3501  ; jne 0xfffb3501
shr dx, 6
mov eax, dword [ebp - 0x10]
movzx ecx, word [eax + 0x1766]
lea esi, [edx + 1]
mov eax, 0x13880
xor edx, edx
div ecx
movzx ecx, bx
mov edx, 0x80
cmp eax, 0x7f
cmova edx, eax
sub ecx, edx
shr ecx, 6
sub cl, byte [ebp - 0x12]
cmp cl, 0xfc
jl short loc_fffb356f  ; jl 0xfffb356f
cmp cl, 6
mov al, 6
mov bl, al
cmovle ebx, ecx
mov cl, bl
jmp short loc_fffb3573  ; jmp 0xfffb3573

loc_fffb356f:  ; not directly referenced
mov bl, 0xfc
mov cl, 0xfc

loc_fffb3573:  ; not directly referenced
movzx esi, si
movsx eax, bl
mov edx, esi
sub edx, eax
mov eax, edx
mov edx, dword [ebp - 0x2c]
lea edi, [eax + edx - 1]
movsx eax, cl
sub esi, eax
cmp edi, 7
mov eax, 7
cmovg edi, eax
mov dword [ebp - 0x20], edi
lea esi, [esi + edx - 1]
mov edx, dword [ebp - 0x24]
cmp esi, 7
cmovg esi, eax
movzx eax, byte [ebp - 0x11]
mov dword [ebp - 0x28], eax
lea edi, [edx + eax*4 + 0x140]
mov dl, cl
shl edx, 5
shr cl, 3
mov byte [ebp - 0x13], dl
mov dl, byte [edi + 6]
and ecx, 1
and edx, 0x1f
or dl, byte [ebp - 0x13]
mov byte [edi + 6], dl
xor edx, edx
test esi, esi
cmovs esi, edx
shl ebx, 4
and esi, 7
add esi, esi
or esi, ecx
or esi, ebx
mov ecx, esi
mov byte [edi + 7], cl
mov cl, byte [edi + 8]
cmp dword [ebp - 0x20], 0
cmovns edx, dword [ebp - 0x20]
and edx, 7
and ecx, 0xfffffff8
or ecx, edx
mov byte [edi + 8], cl
mov eax, dword [ebp - 0x28]
mov ecx, dword [ebp - 0x34]
mov edx, dword [edi + 5]
shl eax, 9
inc byte [ebp - 0x11]
lea eax, [ecx + eax + 0x60]
mov ecx, dword [ebp - 0x10]
add eax, dword [ecx + 0x103f]
mov dword [eax], edx

loc_fffb361a:  ; not directly referenced
mov edx, dword [ebp - 0x10]
mov al, byte [ebp - 0x11]
cmp al, byte [edx + 0x1755]
jae loc_fffb34d3  ; jae 0xfffb34d3
mov eax, dword [ebp - 0x1c]
mov ecx, dword [ebp - 0x24]
mov ebx, 0x200
mov al, byte [edx + eax + 0x3acb]
movzx edx, byte [ebp - 0x11]
mov byte [ebp - 0x20], al
lea esi, [ecx + edx*2]
xor ecx, ecx
xor edx, edx
jmp near loc_fffb3501  ; jmp 0xfffb3501

loc_fffb3651:  ; not directly referenced
lea esp, [esp + 0x2c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb365a:  ; not directly referenced
push ebp
xor eax, eax
mov ebp, esp
push edi
push esi
xor esi, esi
push ebx
lea esp, [esp - 0x2c]
mov edi, dword [ebp + 8]
mov byte [ebp - 0x1c], 4
mov byte [ebp - 0x1b], 1
mov byte [ebp - 0x1a], 5
mov byte [ebp - 0x19], 2
mov byte [ebp - 0x22], 4
mov byte [ebp - 0x21], 1
mov byte [ebp - 0x20], 5
mov byte [ebp - 0x1f], 2
mov byte [ebp - 0x1e], 0xf9
mov byte [ebp - 0x1d], 7
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x2c], 0
add edi, 0x2974

loc_fffb36a7:  ; not directly referenced
imul edx, eax, 0x1347
lea edx, [edi + edx + 8]
mov cl, byte [edx + 0x114f]
test cl, cl
je short loc_fffb3714  ; je 0xfffb3714
cmp dword [ebp - 0x2c], 0
mov ebx, 1
jne short loc_fffb36d2  ; jne 0xfffb36d2
xor ebx, ebx
cmp dword [edx + 0xf5], 2
sete bl

loc_fffb36d2:  ; not directly referenced
cmp dword [ebp - 0x30], 0
mov dword [ebp - 0x2c], ebx
mov dword [ebp - 0x34], 1
jne short loc_fffb36ff  ; jne 0xfffb36ff
mov esi, 0xc
and esi, ecx
mov ebx, esi
cmp bl, 0xc
je short loc_fffb36ff  ; je 0xfffb36ff
and ecx, 3
cmp cl, 3
sete cl
movzx ecx, cl
mov dword [ebp - 0x34], ecx

loc_fffb36ff:  ; not directly referenced
mov esi, dword [edx + 0x1ad]
mov ebx, dword [ebp - 0x34]
and esi, 0x3c0
mov dword [ebp - 0x30], ebx
shr esi, 6

loc_fffb3714:  ; not directly referenced
inc eax
cmp eax, 2
jne short loc_fffb36a7  ; jne 0xfffb36a7
mov edx, 1
mov eax, dword [ebp + 8]
call fcn_fffb348c  ; call 0xfffb348c
push ecx
lea edi, [ebp - 0x1e]
mov ebx, dword [ebp + 8]
push ecx
add ebx, 0x1774
lea ecx, [ebp - 0x22]
push 1
mov edx, 0xa
mov eax, dword [ebp + 8]
push 0xf
push 0
push 2
push edi
push ebx
push 0xc
push 3
push 0
push 2
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x28
lea ecx, [ebp - 0x22]
push 1
mov edx, 0xb
mov eax, dword [ebp + 8]
push 0xf
push 0
push 2
push edi
push ebx
push 0xc
push 0
push 0xfffffffffffffffe
push 2
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x30
cmp dword [ebp - 0x2c], 0
je short loc_fffb3800  ; je 0xfffb3800
push edx
lea ecx, [ebp - 0x22]
mov eax, dword [ebp + 8]
push edx
mov edx, 1
push 0
push 0xf
push 0
push 2
push edi
push ebx
push 0xc
push 7
push 6
push 2
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x28
lea ecx, [ebp - 0x20]
push 0
mov edx, 3
mov eax, dword [ebp + 8]
push 0xf
push 0
push 2
push edi
push ebx
push 0xc
push 8
push 7
push 2
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x28
lea eax, [esi + 1]
push 0
movsx eax, al
lea ecx, [ebp - 0x1c]
push 0xf
mov edx, 7
push 0
push 2
push edi
push ebx
push 0xc
push eax
lea eax, [esi - 1]
movsx eax, al
push eax
mov eax, dword [ebp + 8]
push 4
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x30

loc_fffb3800:  ; not directly referenced
cmp dword [ebp - 0x30], 0
je short loc_fffb3881  ; je 0xfffb3881
push eax
lea edi, [ebp - 0x1e]
lea ecx, [ebp - 0x22]
push eax
xor edx, edx
mov eax, dword [ebp + 8]
push 0
push 0xf
push 0
push 2
push edi
push ebx
push 0xc
push 7
push 6
push 2
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x28
lea ecx, [ebp - 0x20]
push 0
mov edx, 2
mov eax, dword [ebp + 8]
push 0xf
push 0
push 2
push edi
push ebx
push 0xc
push 8
push 7
push 2
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x28
lea eax, [esi + 1]
push 0
movsx eax, al
lea ecx, [ebp - 0x1c]
push 0xf
mov edx, 6
push 0
push 2
push edi
push ebx
push 0xc
push eax
lea eax, [esi - 1]
movsx esi, al
mov eax, dword [ebp + 8]
push esi
push 4
call fcn_fffc4850  ; call 0xfffc4850
add esp, 0x30

loc_fffb3881:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb3889:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, ecx
mov cl, dl
push esi
mov esi, eax
push ebx
lea esp, [esp - 0x3c]
cmp dl, 9
mov al, byte [ebp + 8]
mov ebx, dword [esi + 0x1756]
mov byte [ebp - 0x19], al
mov eax, dword [esi + 0x175a]
ja loc_fffb39d5  ; ja 0xfffb39d5
movzx edx, dl
jmp dword [edx*4 + ref_fffcbac4]  ; ujmp: jmp dword [edx*4 - 0x3453c]

loc_fffb38be:  ; not directly referenced
and edi, 0x1f
and ebx, 0xfff07bff
shl edi, 0xf
jmp short loc_fffb38d5  ; jmp 0xfffb38d5

loc_fffb38cc:  ; not directly referenced
and edi, 0xf
and bh, 0x87
shl edi, 0xb

loc_fffb38d5:  ; not directly referenced
or ebx, edi
jmp near loc_fffb39d5  ; jmp 0xfffb39d5

loc_fffb38dc:  ; not directly referenced
and edi, 0xf
and ebx, 0xff0fffff
shl edi, 0x14
jmp short loc_fffb38d5  ; jmp 0xfffb38d5

loc_fffb38ea:  ; not directly referenced
and edi, 0xf
and ebx, 0xf0ffffff
shl edi, 0x18
jmp short loc_fffb38d5  ; jmp 0xfffb38d5

loc_fffb38f8:  ; not directly referenced
shl edi, 0x1c
and ebx, 0xfffffff
jmp short loc_fffb38d5  ; jmp 0xfffb38d5

loc_fffb3903:  ; not directly referenced
mov edx, edi
and eax, 0xffffffe0
and edx, 0xf
and edi, 0x10
jmp short loc_fffb3954  ; jmp 0xfffb3954

loc_fffb3910:  ; not directly referenced
mov edx, edi
and eax, 0xfffffc1f
shl edi, 5
and edx, 0xf
shl edx, 5
and edi, 0x200
jmp short loc_fffb3954  ; jmp 0xfffb3954

loc_fffb3928:  ; not directly referenced
mov edx, edi
and ah, 0x83
shl edi, 0xa
and edx, 0xf
shl edx, 0xa
and edi, 0x4000
jmp short loc_fffb3954  ; jmp 0xfffb3954

loc_fffb393e:  ; not directly referenced
mov edx, edi
and eax, 0xfff07fff
shl edi, 0xf
and edx, 0xf
shl edx, 0xf
and edi, 0x80000

loc_fffb3954:  ; not directly referenced
or eax, edx
or eax, edi
jmp short loc_fffb39d5  ; jmp 0xfffb39d5

loc_fffb395a:  ; not directly referenced
mov edx, edi
and ebx, 0xfffffff7
and edx, 1
mov byte [ebp - 0x38], dl
and edx, 1
mov edi, edx
shl edi, 0x1a
lea edx, [edx*8]
or ebx, edx
mov edx, dword [esi + 0x2abd]
and edx, 0xfbffffff
or edx, edi
mov edi, dword [esi + 0x103f]
cmp byte [ebp - 0x19], 0
mov dword [edi + 0x3074], edx
je short loc_fffb399c  ; je 0xfffb399c
mov dword [esi + 0x2abd], edx

loc_fffb399c:  ; not directly referenced
mov edx, dword [esi + 0x3e04]
mov dword [ebp - 0x40], edx
mov dl, byte [ebp - 0x38]
and edx, 1
and dword [ebp - 0x40], 0xfbffffff
mov edi, edx
shl edi, 0x1a
or dword [ebp - 0x40], edi
mov edi, dword [esi + 0x103f]
mov edx, dword [ebp - 0x40]
cmp byte [ebp - 0x19], 0
mov dword [edi + 0x3174], edx
je short loc_fffb39d5  ; je 0xfffb39d5
mov dword [esi + 0x3e04], edx

loc_fffb39d5:  ; not directly referenced
mov edx, dword [esi + 0x103f]
cmp byte [ebp - 0x19], 0
mov dword [edx + 0x3a14], ebx
mov edx, dword [esi + 0x103f]
mov dword [edx + 0x3a18], eax
je short loc_fffb39ff  ; je 0xfffb39ff
mov dword [esi + 0x1756], ebx
mov dword [esi + 0x175a], eax

loc_fffb39ff:  ; not directly referenced
mov eax, dword [esi + 0x103f]
mov edx, 0x78
mov dword [eax + 0x5f08], 0x115
mov eax, esi
mov byte [ebp - 0x3c], cl
call fcn_fffb2d3a  ; call 0xfffb2d3a
mov cl, byte [ebp - 0x3c]
test cl, cl
jne loc_fffb3ae7  ; jne 0xfffb3ae7
mov edi, dword [esi + 0x103f]
mov edx, dword [edi + 0x3a04]
and edx, 0x3f
lea eax, [edx + 0x30]
and eax, 0x3f
cmp al, 0x20
jbe loc_fffb3b02  ; jbe 0xfffb3b02
movzx eax, dl
mov edx, ebx
or edx, 8
and ebx, 0xfffffff7
cmp eax, 0xf
mov al, byte [esi + 0x2ac0]
cmovle ebx, edx
and eax, 0xfffffffb
mov edx, ebx
shr edx, 3
and edx, 1
lea ecx, [edx*4]
or eax, ecx
mov byte [esi + 0x2ac0], al
mov eax, dword [esi + 0x2abd]
mov dword [edi + 0x3074], eax
mov al, byte [esi + 0x3e07]
and eax, 0xfffffffb
and edx, 1
shl edx, 3
or eax, ecx
mov byte [esi + 0x3e07], al
mov eax, dword [esi + 0x103f]
mov ecx, dword [esi + 0x3e04]
mov dword [eax + 0x3174], ecx
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x3a14], ebx
mov eax, dword [esi + 0x1756]
and eax, 0xfffffff7
or eax, edx
mov edx, 0x78
mov dword [esi + 0x1756], eax
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x5f08], 0x115
mov eax, esi
call fcn_fffb2d3a  ; call 0xfffb2d3a
jmp short loc_fffb3b02  ; jmp 0xfffb3b02

loc_fffb3ae7:  ; not directly referenced
xor eax, eax
cmp cl, 9
ja loc_fffb3b93  ; ja 0xfffb3b93
movzx edx, cl
mov eax, dword [esi + 0x103f]
jmp dword [edx*4 + ref_fffcbaec]  ; ujmp: jmp dword [edx*4 - 0x34514]

loc_fffb3b02:  ; not directly referenced
mov ecx, dword [esi + 0x103f]
and ebx, 0xfffffc0f
mov edx, dword [ecx + 0x3a04]
mov al, dl
shr edx, 9
and eax, 0x3f
sub edx, eax
and edx, 0x3f
shl edx, 4
or ebx, edx
or bh, 4
cmp byte [ebp - 0x19], 0
mov dword [ecx + 0x3a14], ebx
je short loc_fffb3b3b  ; je 0xfffb3b3b
mov dword [esi + 0x1756], ebx

loc_fffb3b3b:  ; not directly referenced
movzx eax, al
jmp short loc_fffb3b93  ; jmp 0xfffb3b93

loc_fffb3b40:  ; not directly referenced
dec cl
mov eax, dword [eax + 0x3a00]
jne short loc_fffb3b4c  ; jne 0xfffb3b4c
jmp short loc_fffb3b90  ; jmp 0xfffb3b90

loc_fffb3b4c:  ; not directly referenced
shr eax, 0x1a
and eax, 0x1f
jmp short loc_fffb3b93  ; jmp 0xfffb3b93

loc_fffb3b54:  ; not directly referenced
mov edx, dword [eax + 0x3a08]
mov eax, edx
and eax, 0x3f
cmp cl, 2
jmp short loc_fffb3b72  ; jmp 0xfffb3b72

loc_fffb3b64:  ; not directly referenced
mov edx, dword [eax + 0x3a0c]
mov eax, edx
and eax, 0x3f
cmp cl, 3

loc_fffb3b72:  ; not directly referenced
jne short loc_fffb3b93  ; jne 0xfffb3b93
mov eax, edx
shr eax, 0xc
jmp short loc_fffb3b90  ; jmp 0xfffb3b90

loc_fffb3b7b:  ; not directly referenced
mov edx, dword [eax + 0x3a10]
mov eax, edx
and eax, 0x1f
cmp cl, 4
jne short loc_fffb3b93  ; jne 0xfffb3b93
mov eax, edx
shr eax, 0xb

loc_fffb3b90:  ; not directly referenced
and eax, 0x3f

loc_fffb3b93:  ; not directly referenced
lea esp, [esp + 0x3c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb3b9c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x28]
mov bl, byte [ebp + 0x18]
mov byte [ebp - 0xe], bl
mov byte [ebp - 0x20], cl
imul ebx, edx, 0x1347
mov cl, byte [ebp + 0x10]
mov esi, dword [ebp + 8]
mov byte [ebp - 0xd], cl
mov ecx, esi
mov edi, dword [ebp + 0xc]
cmp cl, 0xe
lea ebx, [eax + ebx + 0x297c]
ja loc_fffb3f61  ; ja 0xfffb3f61
and esi, 0xff
jmp dword [esi*4 + ref_fffcbb14]  ; ujmp: jmp dword [esi*4 - 0x344ec]

loc_fffb3be0:  ; not directly referenced
mov ecx, dword [ebx + 0x1a9]
and edi, 0xf
shl edi, 0xf
and ecx, 0xfff87fff
jmp near loc_fffb3f0d  ; jmp 0xfffb3f0d

loc_fffb3bf7:  ; not directly referenced
mov ecx, dword [ebx + 0x1a9]
and edi, 0xf
shl edi, 0x13
and ecx, 0xff87ffff
jmp near loc_fffb3f0d  ; jmp 0xfffb3f0d

loc_fffb3c0e:  ; not directly referenced
mov ecx, dword [ebx + 0x1ad]
and edi, 0xf
shl edi, 0x11
and ecx, 0xffe1ffff
jmp short loc_fffb3c87  ; jmp 0xfffb3c87

loc_fffb3c22:  ; not directly referenced
mov ecx, dword [ebx + 0x1ad]
and edi, 0xf
shl edi, 0x15
and ecx, 0xfe1fffff
jmp short loc_fffb3c87  ; jmp 0xfffb3c87

loc_fffb3c36:  ; not directly referenced
mov ecx, dword [ebx + 0x1b1]
and edi, 0x1f
shl edi, 0x13
and ecx, 0xff07ffff
jmp near loc_fffb3f41  ; jmp 0xfffb3f41

loc_fffb3c4d:  ; not directly referenced
mov ecx, dword [ebx + 0x1b1]
and edi, 0x1f
shl edi, 0x18
and ecx, 0xe0ffffff
jmp near loc_fffb3f41  ; jmp 0xfffb3f41

loc_fffb3c64:  ; not directly referenced
mov ecx, dword [ebx + 0x1ad]
and edi, 0xf
shl edi, 6
and ecx, 0xfffffc3f
jmp short loc_fffb3c87  ; jmp 0xfffb3c87

loc_fffb3c78:  ; not directly referenced
mov ecx, dword [ebx + 0x1ad]
and edi, 0xf
shl edi, 0xa
and ch, 0xc3

loc_fffb3c87:  ; not directly referenced
shl edx, 0xa
mov eax, dword [eax + 0x103f]
or ecx, edi
lea eax, [edx + eax + 0x4008]
mov dword [eax], ecx
cmp byte [ebp - 0xd], 0
je loc_fffb3f61  ; je 0xfffb3f61
mov dword [ebx + 0x1ad], ecx
jmp near loc_fffb3f61  ; jmp 0xfffb3f61

loc_fffb3cb0:  ; not directly referenced
sub edi, 6
mov ecx, dword [ebx + 0x1b5]
and edi, 3
and ecx, 0xfff9ffff
shl edi, 0x11
jmp short loc_fffb3cf3  ; jmp 0xfffb3cf3

loc_fffb3cc7:  ; not directly referenced
sub edi, 6
cmp dword [eax + 0x1749], 2
mov ecx, dword [ebx + 0x1b5]
jne short loc_fffb3ce7  ; jne 0xfffb3ce7
and edi, 7
and ecx, 0xffc7ffff
shl edi, 0x13
jmp short loc_fffb3cf3  ; jmp 0xfffb3cf3

loc_fffb3ce7:  ; not directly referenced
and edi, 3
and ecx, 0xffe7ffff
shl edi, 0x13

loc_fffb3cf3:  ; not directly referenced
shl edx, 0xa
mov eax, dword [eax + 0x103f]
or ecx, edi
lea eax, [edx + eax + 0x4014]
mov dword [eax], ecx
cmp byte [ebp - 0xd], 0
je loc_fffb3f61  ; je 0xfffb3f61
mov dword [ebx + 0x1b5], ecx
jmp near loc_fffb3f61  ; jmp 0xfffb3f61

loc_fffb3d1c:  ; not directly referenced
movzx ecx, byte [ebp - 0x20]
mov dword [ebp - 0x24], ecx
add ecx, 0x50
mov dword [ebp - 0x28], ecx
mov ecx, dword [ebx + ecx*4 + 5]
mov esi, ecx
mov dword [ebp - 0x20], ecx
shr esi, 0xd
and esi, 0xf
mov ecx, esi
or ecx, 0xfffffff0
test esi, 8
cmovne esi, ecx
add esi, edi
mov edi, 6
mov ecx, esi
cmp cl, 6
cmovle edi, esi
mov esi, 0xfffffffc
mov ecx, edi
cmp cl, 0xfc
mov ecx, dword [ebp - 0x20]
cmovge esi, edi
and ecx, 0xff0e1fff
and esi, 0xf
mov edi, esi
shl edi, 0xd
shl esi, 0x14
jmp short loc_fffb3dc0  ; jmp 0xfffb3dc0

loc_fffb3d78:  ; not directly referenced
movzx ecx, byte [ebp - 0x20]
mov dword [ebp - 0x24], ecx
add ecx, 0x50
mov dword [ebp - 0x28], ecx
mov ecx, dword [ebx + ecx*4 + 5]
mov esi, ecx
mov dword [ebp - 0x20], ecx
shr esi, 0x11
and esi, 7
add esi, edi
mov edi, 7
mov ecx, esi
cmp cl, 7
cmovle edi, esi
xor esi, esi
mov ecx, edi
test cl, cl
mov ecx, dword [ebp - 0x20]
cmovns esi, edi
and ecx, 0xf8f1ffff
and esi, 7
mov edi, esi
shl edi, 0x11
shl esi, 0x18

loc_fffb3dc0:  ; not directly referenced
shl edx, 8
or ecx, edi
or ecx, esi
mov esi, dword [ebp - 0x24]
shl esi, 9
lea edx, [edx + esi + 0x60]
add edx, dword [eax + 0x103f]
mov dword [edx], ecx
cmp byte [ebp - 0xd], 0
je loc_fffb3f61  ; je 0xfffb3f61
mov eax, dword [ebp - 0x28]
mov dword [ebx + eax*4 + 5], ecx
jmp near loc_fffb3f61  ; jmp 0xfffb3f61

loc_fffb3def:  ; not directly referenced
shl edx, 0xa
mov esi, ebx
mov ebx, edi
mov dword [ebp - 0x24], 0
and ebx, 0x3f
mov dword [ebp - 0x28], ebx
lea ecx, [edx + 0x4028]
add edx, 0x4024
mov dword [ebp - 0x34], ecx
mov dword [ebp - 0x2c], edx

loc_fffb3e15:  ; not directly referenced
movzx ecx, byte [ebp - 0xe]
mov ebx, dword [ebp - 0x24]
bt ecx, ebx
mov dl, byte [ebp - 0x24]
jae loc_fffb3eee  ; jae 0xfffb3eee
mov ecx, edi
add cl, byte [esi + 0x10cd]
sub cl, byte [esi + 0x10d1]
mov byte [ebp - 0x20], cl
js loc_fffb3eee  ; js 0xfffb3eee
mov ecx, dword [ebp - 0x34]
add ecx, dword [eax + 0x103f]
mov dword [ebp - 0x30], ecx
mov ebx, dword [ecx]
mov ecx, dword [eax + 0x103f]
add ecx, dword [ebp - 0x2c]
cmp dl, 2
mov ecx, dword [ecx]
je short loc_fffb3e8f  ; je 0xfffb3e8f
cmp dl, 3
je short loc_fffb3eab  ; je 0xfffb3eab
dec dl
mov dl, byte [ebp - 0x20]
je short loc_fffb3e79  ; je 0xfffb3e79
and edx, 0xf
and ebx, 0xfffffff0
and ecx, 0xffffffc0
or ebx, edx
or ecx, dword [ebp - 0x28]
jmp short loc_fffb3ec7  ; jmp 0xfffb3ec7

loc_fffb3e79:  ; not directly referenced
and edx, 0xf
and bl, 0xf
shl edx, 4
and ch, 0xc0
or ebx, edx
mov edx, dword [ebp - 0x28]
shl edx, 8
jmp short loc_fffb3ec5  ; jmp 0xfffb3ec5

loc_fffb3e8f:  ; not directly referenced
mov dl, byte [ebp - 0x20]
and bh, 0xf0
and edx, 0xf
and ecx, 0xffc0ffff
shl edx, 8
or ebx, edx
mov edx, dword [ebp - 0x28]
shl edx, 0x10
jmp short loc_fffb3ec5  ; jmp 0xfffb3ec5

loc_fffb3eab:  ; not directly referenced
mov dl, byte [ebp - 0x20]
and bh, 0xf
and edx, 0xf
and ecx, 0xc0ffffff
shl edx, 0xc
or ebx, edx
mov edx, dword [ebp - 0x28]
shl edx, 0x18

loc_fffb3ec5:  ; not directly referenced
or ecx, edx

loc_fffb3ec7:  ; not directly referenced
mov edx, dword [ebp - 0x30]
mov dword [edx], ebx
mov edx, dword [ebp - 0x2c]
add edx, dword [eax + 0x103f]
cmp byte [ebp - 0xd], 0
mov dword [edx], ecx
je short loc_fffb3eee  ; je 0xfffb3eee
mov ecx, edi
mov bl, byte [ebp - 0x20]
mov byte [esi + 0x10d1], cl
mov byte [esi + 0x10cd], bl

loc_fffb3eee:  ; not directly referenced
inc dword [ebp - 0x24]
inc esi
cmp dword [ebp - 0x24], 4
jne loc_fffb3e15  ; jne 0xfffb3e15
jmp short loc_fffb3f61  ; jmp 0xfffb3f61

loc_fffb3efe:  ; not directly referenced
mov ecx, dword [ebx + 0x1a9]
and edi, 7
shl edi, 0xc
and ch, 0x8f

loc_fffb3f0d:  ; not directly referenced
shl edx, 0xa
mov eax, dword [eax + 0x103f]
or ecx, edi
lea eax, [edx + eax + 0x4004]
mov dword [eax], ecx
cmp byte [ebp - 0xd], 0
je short loc_fffb3f61  ; je 0xfffb3f61
mov dword [ebx + 0x1a9], ecx
jmp short loc_fffb3f61  ; jmp 0xfffb3f61

loc_fffb3f2f:  ; not directly referenced
mov ecx, dword [ebx + 0x1b1]
and edi, 0x1f
shl edi, 0xe
and ecx, 0xfff83fff

loc_fffb3f41:  ; not directly referenced
shl edx, 0xa
mov eax, dword [eax + 0x103f]
or ecx, edi
lea eax, [edx + eax + 0x400c]
mov dword [eax], ecx
cmp byte [ebp - 0xd], 0
je short loc_fffb3f61  ; je 0xfffb3f61
mov dword [ebx + 0x1b1], ecx

loc_fffb3f61:  ; not directly referenced
lea esp, [esp + 0x28]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffb3f6a:
db 0x00
db 0x00

fcn_fffb3f6c:  ; not directly referenced
push ebp
mov edx, 0x12
mov ebp, esp
push edi
push esi
lea eax, [ebp - 0x192]
push ebx
lea esp, [esp - 0x1fc]
mov edi, dword [ebp + 8]
lea ebx, [edi + 0x16be]
mov dword [ebp - 0x1ec], ebx
xor ebx, ebx
cmp dword [edi + 0x1749], 2
sete bl
xor ecx, ecx
mov dword [ebp - 0x1f8], ebx
lea esi, [edi + 0x2974]
call mrc_setmem
mov ecx, 0xf8
mov edx, 0x12
lea eax, [ebp - 0x1a4]
call mrc_setmem
mov ecx, 0xff
mov edx, 0x12
lea eax, [ebp - 0x16e]
call mrc_setmem
xor ecx, ecx
mov edx, 0x12
lea eax, [ebp - 0x180]
call mrc_setmem
mov dword [ebp - 0x1c4], 0x64
xor eax, eax
mov dword [ebp - 0x1c0], esi

loc_fffb4000:  ; not directly referenced
imul edx, eax, 0x1347
mov ebx, dword [ebp - 0x1ec]
cmp dword [ebx + edx + 0x12be], 2
je short loc_fffb4032  ; je 0xfffb4032

loc_fffb4016:  ; not directly referenced
inc eax
add dword [ebp - 0x1c4], 0x100
cmp eax, 2
jne short loc_fffb4000  ; jne 0xfffb4000
mov dword [ebp - 0x1bc], 0xfffffff8
jmp short loc_fffb4075  ; jmp 0xfffb4075

loc_fffb4032:  ; not directly referenced
mov esi, dword [ebp - 0x1c0]
lea edx, [esi + edx + 8]
mov dword [ebp - 0x1bc], edx
xor edx, edx
jmp short loc_fffb406b  ; jmp 0xfffb406b

loc_fffb4046:  ; not directly referenced
movzx ebx, dl
mov ecx, dword [ebp - 0x1bc]
inc edx
mov esi, dword [ecx + ebx*4 + 0x169]
shl ebx, 9
add ebx, dword [ebp - 0x1c4]
add ebx, dword [edi + 0x103f]
or esi, 0x60
mov dword [ebx], esi

loc_fffb406b:  ; not directly referenced
cmp dl, byte [edi + 0x1755]
jb short loc_fffb4046  ; jb 0xfffb4046
jmp short loc_fffb4016  ; jmp 0xfffb4016

loc_fffb4075:  ; not directly referenced
push 0
mov bl, byte [ebp - 0x1bc]
mov ecx, dword [ebp - 0x1bc]
push 0
mov edx, 4
mov eax, edi
push 0
mov byte [ebp - 0x1e0], bl
lea esi, [ebp - 0x1b6]
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
mov eax, dword [edi + 0x103f]
mov dword [ebp - 0x1d8], esi
add esp, 0x20
lea esi, [ebp - 0x16e]
mov dword [ebp - 0x1c0], 0
mov dword [eax + 0x364c], 0xffffffff

loc_fffb40d2:  ; not directly referenced
imul eax, dword [ebp - 0x1c0], 0x1347
mov ebx, dword [ebp - 0x1ec]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffb41bb  ; jne 0xfffb41bb
mov ecx, dword [ebp - 0x1c0]
mov ebx, dword [edi + eax + 0x2abd]
shl ecx, 8
and ebx, 0xfe0ffff7
or ebx, 0x1100008
mov edx, 0xf
lea eax, [ecx + 0x3074]
mov dword [ebp - 0x1dc], eax
add eax, dword [edi + 0x103f]
mov dword [eax], ebx
mov eax, edi
mov dword [ebp - 0x200], ecx
call fcn_fffb2d76  ; call 0xfffb2d76
mov ecx, dword [ebp - 0x200]
mov dl, byte [edi + 0x1755]
add ecx, 0x54
mov byte [ebp - 0x1e4], dl
mov dword [ebp - 0x1c4], ecx
xor eax, eax
jmp short loc_fffb41a0  ; jmp 0xfffb41a0

loc_fffb4151:  ; not directly referenced
add edx, dword [ebp - 0x1c4]
mov byte [ebp - 0x1f0], 0
mov edx, dword [edx]
movzx edx, dl
mov word [ebp - 0x1c8], dx
jmp short loc_fffb4177  ; jmp 0xfffb4177

loc_fffb416c:  ; not directly referenced
lea ecx, [edx - 1]
inc byte [ebp - 0x1f0]
and edx, ecx

loc_fffb4177:  ; not directly referenced
test edx, edx
jne short loc_fffb416c  ; jne 0xfffb416c
mov edx, dword [ebp - 0x1d8]
mov cl, byte [ebp - 0x1f0]
neg ecx
add dword [ebp - 0x1c4], 0x200
mov byte [edx + eax], cl
mov cl, byte [ebp - 0x1c8]
and byte [esi + eax], cl
inc eax

loc_fffb41a0:  ; not directly referenced
cmp byte [ebp - 0x1e4], al
mov edx, dword [edi + 0x103f]
ja short loc_fffb4151  ; ja 0xfffb4151
add edx, dword [ebp - 0x1dc]
mov eax, ebx
and eax, 0xfffffff7
mov dword [edx], eax

loc_fffb41bb:  ; not directly referenced
inc dword [ebp - 0x1c0]
add dword [ebp - 0x1d8], 9
add esi, 9
cmp dword [ebp - 0x1c0], 2
jne loc_fffb40d2  ; jne 0xfffb40d2
mov eax, dword [edi + 0x103f]
lea ebx, [edi + 0x2974]
mov dword [ebp - 0x1c0], 0
mov dword [ebp - 0x1f4], ebx
mov dword [eax + 0x364c], 0x11111111

loc_fffb41fe:  ; not directly referenced
imul eax, dword [ebp - 0x1c0], 0x1347
mov esi, dword [ebp - 0x1ec]
cmp dword [esi + eax + 0x12be], 2
jne loc_fffb435c  ; jne 0xfffb435c
mov ecx, dword [ebp - 0x1f4]
mov ebx, dword [ebp - 0x1c0]
shl ebx, 8
mov edx, 0xf
lea eax, [ecx + eax + 8]
mov dword [ebp - 0x1c4], eax
mov esi, dword [eax + 0x141]
mov eax, dword [edi + 0x103f]
lea ecx, [ebx + 0x3074]
add eax, ecx
and esi, 0xfe0ffff7
mov dword [ebp - 0x1c8], ecx
or esi, 0x1100008
add ebx, 0x54
mov dword [eax], esi
mov eax, edi
call fcn_fffb2d76  ; call 0xfffb2d76
imul eax, dword [ebp - 0x1c0], 9
mov dword [ebp - 0x1e8], ebx
lea ebx, [ebp - 0x18]
add ebx, eax
mov byte [ebp - 0x1d8], 0
mov dword [ebp - 0x1dc], ebx
jmp near loc_fffb4337  ; jmp 0xfffb4337

loc_fffb4290:  ; not directly referenced
movzx eax, byte [ebp - 0x1d8]
mov ecx, eax
shl ecx, 9
add ecx, dword [ebp - 0x1e8]
add edx, ecx
xor ecx, ecx
mov ebx, dword [edx]
mov edx, dword [ebp - 0x1dc]
movzx ebx, bl
mov dl, byte [eax + edx - 0x19e]
mov word [ebp - 0x1fc], bx
mov byte [ebp - 0x1e4], dl
movzx edx, bx
jmp short loc_fffb42d0  ; jmp 0xfffb42d0

loc_fffb42ca:  ; not directly referenced
lea ebx, [edx - 1]
inc ecx
and edx, ebx

loc_fffb42d0:  ; not directly referenced
test edx, edx
jne short loc_fffb42ca  ; jne 0xfffb42ca
mov edx, dword [ebp - 0x1dc]
add ecx, dword [ebp - 0x1e4]
add edx, eax
mov bl, byte [ebp - 0x1fc]
or byte [edx - 0x168], bl
cmp cl, byte [edx - 0x18c]
mov byte [edx - 0x19e], cl
jle short loc_fffb4323  ; jle 0xfffb4323
mov byte [edx - 0x18c], cl
mov ecx, dword [ebp - 0x1c4]
mov bl, byte [ebp - 0x1e0]
mov byte [edx - 0x17a], bl
mov dl, byte [ebp - 0x1bc]
mov byte [ecx + eax + 0x10d9], dl
jmp short loc_fffb4331  ; jmp 0xfffb4331

loc_fffb4323:  ; not directly referenced
jne short loc_fffb4331  ; jne 0xfffb4331
mov bl, byte [ebp - 0x1e0]
mov byte [edx - 0x17a], bl

loc_fffb4331:  ; not directly referenced
inc byte [ebp - 0x1d8]

loc_fffb4337:  ; not directly referenced
mov al, byte [ebp - 0x1d8]
cmp al, byte [edi + 0x1755]
mov edx, dword [edi + 0x103f]
jb loc_fffb4290  ; jb 0xfffb4290
add edx, dword [ebp - 0x1c8]
mov eax, esi
and eax, 0xfffffff7
mov dword [edx], eax

loc_fffb435c:  ; not directly referenced
inc dword [ebp - 0x1c0]
cmp dword [ebp - 0x1c0], 2
jne loc_fffb41fe  ; jne 0xfffb41fe
inc dword [ebp - 0x1bc]
cmp dword [ebp - 0x1bc], 9
jne loc_fffb4075  ; jne 0xfffb4075
push 0
xor ecx, ecx
mov edx, 4
push 0
mov eax, edi
lea ebx, [edi + 0x2974]
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20
mov dword [ebp - 0x1bc], 0
mov dword [ebp - 0x1dc], ebx

loc_fffb43b9:  ; not directly referenced
imul esi, dword [ebp - 0x1bc], 0x1347
mov ebx, dword [ebp - 0x1ec]
mov dword [ebp - 0x1d8], esi
cmp dword [ebx + esi + 0x12be], 2
je short loc_fffb43ee  ; je 0xfffb43ee

loc_fffb43d9:  ; not directly referenced
inc dword [ebp - 0x1bc]
cmp dword [ebp - 0x1bc], 2
je loc_fffb44c2  ; je 0xfffb44c2
jmp short loc_fffb43b9  ; jmp 0xfffb43b9

loc_fffb43ee:  ; not directly referenced
imul eax, dword [ebp - 0x1bc], 9
mov ebx, dword [ebp - 0x1dc]
mov esi, dword [ebp - 0x1d8]
mov byte [ebp - 0x1c0], 0
lea esi, [ebx + esi + 8]
lea ebx, [ebp - 0x18]
add ebx, eax
mov dword [ebp - 0x1c4], esi
mov dword [ebp - 0x1c8], ebx
jmp near loc_fffb44ab  ; jmp 0xfffb44ab

loc_fffb4422:  ; not directly referenced
movzx esi, byte [ebp - 0x1c0]
mov eax, dword [ebp - 0x1c4]
mov edx, dword [ebp - 0x1c8]
mov bl, byte [eax + esi + 0x10d9]
mov al, byte [esi + edx - 0x17a]
mov dl, 2
sub eax, ebx
cbw
idiv dl
lea ecx, [ebx + eax]
test cl, cl
lea ebx, [ecx + 1]
lea eax, [ecx - 1]
cmovns eax, ebx
mov ebx, dword [ebp - 0x1c4]
cbw
idiv dl
mov byte [ebx + esi + 0x10d9], al
xor ebx, ebx

loc_fffb446c:  ; not directly referenced
mov edx, dword [ebp - 0x1d8]
mov cl, bl
mov eax, 1
shl eax, cl
test byte [edi + edx + 0x3acb], al
je short loc_fffb449f  ; je 0xfffb449f
push eax
mov ecx, ebx
mov edx, dword [ebp - 0x1bc]
push 0
mov eax, edi
push 0xff
push esi
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10

loc_fffb449f:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffb446c  ; jne 0xfffb446c
inc byte [ebp - 0x1c0]

loc_fffb44ab:  ; not directly referenced
mov bl, byte [ebp - 0x1c0]
cmp bl, byte [edi + 0x1755]
jb loc_fffb4422  ; jb 0xfffb4422
jmp near loc_fffb43d9  ; jmp 0xfffb43d9

loc_fffb44c2:  ; not directly referenced
xor ecx, ecx
mov edx, 0xa2
lea eax, [ebp - 0x15c]
lea esi, [edi + 0x2974]
call mrc_setmem
xor ecx, ecx
mov edx, 0xa2
lea eax, [ebp - 0xba]
call mrc_setmem
cmp dword [ebp - 0x1f8], 1
mov dword [ebp - 0x1c0], 1
sbb ebx, ebx
mov dword [ebp - 0x1fc], esi
add ebx, 9
mov byte [ebp - 0x1d8], bl
jmp near loc_fffb4700  ; jmp 0xfffb4700

loc_fffb4513:  ; not directly referenced
mov edx, dword [ebp - 0x1c0]
shl edx, cl
add ecx, 4
add eax, edx
cmp ecx, 0x20
jne short loc_fffb4513  ; jne 0xfffb4513
mov edx, dword [edi + 0x103f]
mov esi, dword [ebp - 0x1c0]
and esi, 0xf
lea ecx, [ebp - 0xba]
shl esi, 9
lea ebx, [ebp - 0x15c]
mov dword [ebp - 0x1c8], ecx
mov dword [ebp - 0x1c4], ebx
mov dword [edx + 0x364c], eax
mov dword [ebp - 0x1bc], 0
mov dword [ebp - 0x1e0], esi

loc_fffb4565:  ; not directly referenced
imul eax, dword [ebp - 0x1bc], 0x1347
mov ebx, dword [ebp - 0x1ec]
cmp dword [ebx + eax + 0x12be], 2
jne loc_fffb46d0  ; jne 0xfffb46d0
mov esi, dword [ebp - 0x1fc]
cmp dword [ebp - 0x1f8], 0
lea ebx, [esi + eax + 8]
jne short loc_fffb45f3  ; jne 0xfffb45f3

loc_fffb4596:  ; not directly referenced
mov esi, dword [ebx + 0x141]
mov ebx, dword [ebp - 0x1bc]
shl ebx, 8
mov eax, dword [edi + 0x103f]
and esi, 0xfe0ffff7
mov edx, 0xf
or esi, 0x1100008
lea ecx, [ebx + 0x3074]
add eax, ecx
mov dword [ebp - 0x1e8], ecx
add ebx, 0x54
mov dword [eax], esi
mov eax, edi
call fcn_fffb2d76  ; call 0xfffb2d76
movzx eax, byte [edi + 0x1755]
mov dword [ebp - 0x1dc], ebx
xor edx, edx
lea eax, [eax + eax*8]
mov dword [ebp - 0x1f0], eax
jmp near loc_fffb46b1  ; jmp 0xfffb46b1

loc_fffb45f3:  ; not directly referenced
mov esi, dword [ebp - 0x1bc]
xor edx, edx
shl esi, 8
add esi, 0x64
jmp short loc_fffb462c  ; jmp 0xfffb462c

loc_fffb4603:  ; not directly referenced
movzx ecx, dl
inc edx
mov eax, dword [ebx + ecx*4 + 0x169]
shl ecx, 9
and ah, 0xe1
add ecx, esi
add ecx, dword [edi + 0x103f]
or eax, dword [ebp - 0x1e0]
or eax, 0x60
and eax, 0xfffffe7f
mov dword [ecx], eax

loc_fffb462c:  ; not directly referenced
cmp dl, byte [edi + 0x1755]
jb short loc_fffb4603  ; jb 0xfffb4603
jmp near loc_fffb4596  ; jmp 0xfffb4596

loc_fffb4639:  ; not directly referenced
add eax, dword [ebp - 0x1dc]
mov ebx, dword [ebp - 0x1c4]
mov ecx, dword [ebp - 0x1c8]
add ebx, edx
add ecx, edx
mov dword [ebp - 0x208], ebx
mov dword [ebp - 0x1f4], ecx
mov eax, dword [eax]
and eax, 0x1ff
mov dword [ebp - 0x204], eax
xor eax, eax

loc_fffb466a:  ; not directly referenced
mov ebx, dword [ebp - 0x204]
bt ebx, eax
jae short loc_fffb4686  ; jae 0xfffb4686
mov ecx, dword [ebp - 0x1f4]
mov bl, byte [ebp - 0x1e4]
mov byte [ecx + eax], bl
jmp short loc_fffb469b  ; jmp 0xfffb469b

loc_fffb4686:  ; not directly referenced
mov ebx, dword [ebp - 0x208]
cmp byte [ebx + eax], 0
jne short loc_fffb469b  ; jne 0xfffb469b
mov cl, byte [ebp - 0x1e4]
mov byte [ebx + eax], cl

loc_fffb469b:  ; not directly referenced
inc eax
cmp byte [ebp - 0x1d8], al
ja short loc_fffb466a  ; ja 0xfffb466a
add edx, 9
add dword [ebp - 0x1dc], 0x200

loc_fffb46b1:  ; not directly referenced
cmp edx, dword [ebp - 0x1f0]
mov eax, dword [edi + 0x103f]
jne loc_fffb4639  ; jne 0xfffb4639
add eax, dword [ebp - 0x1e8]
mov edx, esi
and edx, 0xfffffff7
mov dword [eax], edx

loc_fffb46d0:  ; not directly referenced
inc dword [ebp - 0x1bc]
add dword [ebp - 0x1c8], 0x51
add dword [ebp - 0x1c4], 0x51
cmp dword [ebp - 0x1bc], 2
jne loc_fffb4565  ; jne 0xfffb4565
inc dword [ebp - 0x1c0]
cmp dword [ebp - 0x1c0], 0x10
je short loc_fffb4715  ; je 0xfffb4715

loc_fffb4700:  ; not directly referenced
mov bl, byte [ebp - 0x1c0]
xor ecx, ecx
mov byte [ebp - 0x1e4], bl
xor eax, eax
jmp near loc_fffb4513  ; jmp 0xfffb4513

loc_fffb4715:  ; not directly referenced
lea ebx, [edi + 0x2974]
xor esi, esi
mov dword [ebp - 0x1f4], ebx

loc_fffb4723:  ; not directly referenced
imul eax, esi, 0x1347
mov ebx, dword [ebp - 0x1ec]
cmp dword [ebx + eax + 0x12be], 2
je short loc_fffb475f  ; je 0xfffb475f

loc_fffb4739:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffb4723  ; jne 0xfffb4723
lea esi, [edi + 0x2974]
mov eax, 0x3074
mov dword [ebp - 0x1bc], 0
mov dword [ebp - 0x1c4], esi
jmp near loc_fffb48eb  ; jmp 0xfffb48eb

loc_fffb475f:  ; not directly referenced
mov ebx, dword [ebp - 0x1f4]
mov byte [ebp - 0x1bc], 0
lea eax, [ebx + eax + 8]
mov dword [ebp - 0x1c0], eax
imul ebx, esi, 0x51
mov eax, esi
shl eax, 8
mov dword [ebp - 0x1f0], ebx
add eax, 0x4c
mov dword [ebp - 0x1e8], eax
jmp near loc_fffb488b  ; jmp 0xfffb488b

loc_fffb4792:  ; not directly referenced
mov eax, dword [ebp - 0x1dc]
mov ecx, dword [ebp - 0x1e0]
movsx edx, byte [eax + ebx]
mov cl, byte [ecx + ebx]
test dl, dl
mov byte [ebp - 0x208], cl
mov al, 0xf
je short loc_fffb47d0  ; je 0xfffb47d0
movsx eax, cl
mov ecx, 2
add eax, edx
cdq
mov dword [ebp - 0x1fc], eax
idiv ecx
mov dword [ebp - 0x204], eax
mov al, byte [ebp - 0x204]

loc_fffb47d0:  ; not directly referenced
cmp byte [ebp - 0x208], 0
mov dl, 0
cmove eax, edx
cmp dword [ebp - 0x1f8], 0
je short loc_fffb4819  ; je 0xfffb4819
cmp bl, 8
jne short loc_fffb4819  ; jne 0xfffb4819
cmp al, 6
mov dl, 0xf
jg short loc_fffb47f6  ; jg 0xfffb47f6
lea edx, [eax + 8]
and edx, 0xf

loc_fffb47f6:  ; not directly referenced
mov ecx, dword [ebp - 0x1c8]
mov ebx, dword [ebp - 0x1c0]
add ecx, 0x58
and edx, 0xf
add edx, edx
mov al, byte [ebx + ecx*4 + 0xa]
and eax, 0xffffffe1
or eax, edx
mov byte [ebx + ecx*4 + 0xa], al
jmp short loc_fffb484a  ; jmp 0xfffb484a

loc_fffb4819:  ; not directly referenced
lea ecx, [ebx*4]
mov edx, eax
and edx, 0xf
shl edx, cl
mov ecx, dword [ebp - 0x1e4]
add dword [ebp - 0x1c4], edx
lea edx, [ebx + ebx*2]
inc ebx
cmp byte [ebp - 0x1d8], bl
mov byte [ecx + edx + 0x9fe], al
ja loc_fffb4792  ; ja 0xfffb4792

loc_fffb484a:  ; not directly referenced
mov eax, dword [ebp - 0x1c8]
sub esp, 0xc
shl eax, 9
add eax, dword [ebp - 0x1e8]
add eax, dword [edi + 0x103f]
mov ebx, dword [ebp - 0x1c4]
mov ecx, 1
mov edx, esi
mov dword [eax], ebx
mov eax, edi
push 0
push 1
push 0
push 0
push 0
call fcn_fffb00a3  ; call 0xfffb00a3
inc byte [ebp - 0x1bc]
add esp, 0x20

loc_fffb488b:  ; not directly referenced
mov bl, byte [ebp - 0x1bc]
cmp bl, byte [edi + 0x1755]
jae loc_fffb4739  ; jae 0xfffb4739
movzx eax, bl
lea ebx, [ebp - 0x15c]
lea edx, [eax + eax*8]
add edx, dword [ebp - 0x1f0]
add ebx, edx
mov dword [ebp - 0x1c4], 0
mov dword [ebp - 0x1dc], ebx
lea ebx, [ebp - 0xba]
add ebx, edx
mov dword [ebp - 0x1c8], eax
imul edx, eax, 0x18
add edx, dword [ebp - 0x1c0]
mov dword [ebp - 0x1e0], ebx
mov dword [ebp - 0x1e4], edx
xor ebx, ebx
jmp near loc_fffb4792  ; jmp 0xfffb4792

loc_fffb48eb:  ; not directly referenced
imul edx, dword [ebp - 0x1bc], 0x1347
mov esi, dword [ebp - 0x1ec]
cmp dword [esi + edx + 0x12be], 2
jne short loc_fffb4967  ; jne 0xfffb4967
mov ecx, dword [ebp - 0x1c4]
lea esi, [eax - 0x3010]
mov dword [ebp - 0x1d8], esi
lea ebx, [ecx + edx + 8]
xor edx, edx
jmp short loc_fffb4949  ; jmp 0xfffb4949

loc_fffb491f:  ; not directly referenced
movzx esi, dl
inc edx
mov ecx, dword [ebx + esi*4 + 0x169]
shl esi, 9
mov dword [ebp - 0x1c0], ecx
add esi, dword [ebp - 0x1d8]
mov ecx, dword [ebp - 0x1c8]
add ecx, esi
mov esi, dword [ebp - 0x1c0]
mov dword [ecx], esi

loc_fffb4949:  ; not directly referenced
mov ecx, dword [edi + 0x103f]
cmp dl, byte [edi + 0x1755]
mov dword [ebp - 0x1c8], ecx
jb short loc_fffb491f  ; jb 0xfffb491f
add ecx, eax
mov edx, dword [ebx + 0x141]
mov dword [ecx], edx

loc_fffb4967:  ; not directly referenced
inc dword [ebp - 0x1bc]
add eax, 0x100
cmp dword [ebp - 0x1bc], 2
jne loc_fffb48eb  ; jne 0xfffb48eb
mov eax, edi
call wait_5030
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb498e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x30]
mov esi, ref_fffcbb50  ; mov esi, 0xfffcbb50
push ebx
lea esp, [esp - 0x6c]
mov byte [ebp - 0x5e], cl
mov cl, byte [ebp + 0x14]
mov dword [ebp - 0x4c], eax
mov byte [ebp - 0x6c], dl
mov al, byte [ebp + 8]
mov byte [ebp - 0x5d], cl
mov ecx, 3
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
movzx esi, byte [ebp - 0x6c]
mov byte [ebp - 0x68], al
imul eax, esi, 0x1347
mov dl, byte [ebp + 0xc]
mov byte [ebp - 0x50], dl
mov edx, dword [ebp - 0x4c]
mov cl, 0xc
mov ebx, dword [ebp + 0x10]
mov word [ebp - 0x3c], 0
mov word [ebp - 0x3a], 2
mov word [ebp - 0x38], 1
mov word [ebp - 0x40], 0
lea eax, [edx + eax + 0x297c]
lea edx, [ebp - 0x30]
mov dword [ebp - 0x5c], eax
lea eax, [ebp - 0x24]
mov word [ebp - 0x3e], 2
mov byte [ebp - 0x46], 1
mov byte [ebp - 0x45], 2
mov byte [ebp - 0x44], 3
mov byte [ebp - 0x43], 0
mov byte [ebp - 0x42], 2
mov byte [ebp - 0x41], 3
mov dword [ebp - 0x54], esi
call mrc_memcpy
mov ecx, 6
lea edx, [ebp - 0x3c]
lea eax, [ebp - 0x36]
call mrc_memcpy
mov eax, dword [ebp - 0x4c]
xor edx, edx
cmp dword [eax + 0x1749], 2
sete dl
cmp byte [ebp - 0x50], 3
sete cl
cmp byte [ebp - 0x50], 1
setbe al
mov dword [ebp - 0x70], edx
or al, cl
jne loc_fffb500a  ; jne 0xfffb500a
mov al, byte [ebp - 0x50]
and eax, 0xfffffff7
cmp al, 2
je loc_fffb500a  ; je 0xfffb500a
jmp near loc_fffb4b23  ; jmp 0xfffb4b23

loc_fffb4a6d:  ; not directly referenced
cmp bx, ax
cmovl ebx, eax
jmp short loc_fffb4a77  ; jmp 0xfffb4a77

loc_fffb4a75:  ; not directly referenced
mov ebx, edx

loc_fffb4a77:  ; not directly referenced
movzx edx, byte [ebp - 0x68]
mov esi, dword [ebp - 0x5c]
cmp byte [ebp - 0x50], 0
mov eax, dword [esi + edx*4 + 0x11d]
jne short loc_fffb4aa0  ; jne 0xfffb4aa0
mov ecx, ebx
and eax, 0xfffff000
and ecx, 0x3f
mov esi, ecx
or eax, ecx
shl esi, 6
or eax, esi
jmp short loc_fffb4ae1  ; jmp 0xfffb4ae1

loc_fffb4aa0:  ; not directly referenced
cmp byte [ebp - 0x50], 1
jne short loc_fffb4abc  ; jne 0xfffb4abc
mov ecx, ebx
and eax, 0xffc00fff
and ecx, 0x1f
mov esi, ecx
shl esi, 0xc
shl ecx, 0x11
or eax, esi
jmp short loc_fffb4adf  ; jmp 0xfffb4adf

loc_fffb4abc:  ; not directly referenced
test cl, cl
je short loc_fffb4acf  ; je 0xfffb4acf
mov ecx, ebx
and eax, 0xf83fffff
and ecx, 0x1f
shl ecx, 0x16
jmp short loc_fffb4adf  ; jmp 0xfffb4adf

loc_fffb4acf:  ; not directly referenced
cmp byte [ebp - 0x50], 2
jne short loc_fffb4ae1  ; jne 0xfffb4ae1
mov ecx, ebx
and eax, 0x7ffffff
shl ecx, 0x1b

loc_fffb4adf:  ; not directly referenced
or eax, ecx

loc_fffb4ae1:  ; not directly referenced
mov esi, edx
mov ecx, dword [ebp - 0x54]
shl esi, 9
shl ecx, 8
lea ecx, [esi + ecx + 0x5c]
mov esi, dword [ebp - 0x4c]
add ecx, dword [esi + 0x103f]
cmp byte [ebp - 0x5d], 0
mov dword [ecx], eax
je short loc_fffb4b0b  ; je 0xfffb4b0b
mov esi, dword [ebp - 0x5c]
mov dword [esi + edx*4 + 0x11d], eax

loc_fffb4b0b:  ; not directly referenced
mov edx, dword [ebp - 0x4c]
mov eax, dword [edx + 0x1762]
mov edx, dword [edx + 0x103f]
or eax, 0x20
mov dword [edx + 0x2008], eax

loc_fffb4b23:  ; not directly referenced
cmp byte [ebp - 0x50], 0xa
mov al, byte [ebp - 0x50]
sete byte [ebp - 0x64]
sub eax, 4
cmp al, 1
setbe al
or al, byte [ebp - 0x64]
je loc_fffb4c83  ; je 0xfffb4c83
movzx esi, byte [ebp - 0x68]
mov eax, dword [ebp - 0x5c]
movzx edx, byte [ebp - 0x5e]
xor edi, edi
mov dword [ebp - 0x78], edx
lea eax, [eax + esi + 0x309]
mov dword [ebp - 0x58], eax
imul eax, dword [ebp - 0x54], 0x1347
add eax, dword [ebp - 0x4c]
mov dword [ebp - 0x74], eax

loc_fffb4b66:  ; not directly referenced
mov edx, dword [ebp - 0x74]
mov ecx, edi
mov eax, 1
shl eax, cl
test byte [edx + 0x3acb], al
je loc_fffb4c75  ; je 0xfffb4c75
mov ecx, dword [ebp - 0x78]
bt ecx, edi
jae loc_fffb4c75  ; jae 0xfffb4c75
cmp byte [ebp - 0x50], 4
jne short loc_fffb4bde  ; jne 0xfffb4bde
cmp bx, 0xb
jg short loc_fffb4ba3  ; jg 0xfffb4ba3
test bx, bx
mov eax, 0
cmovs ebx, eax
jmp short loc_fffb4ba8  ; jmp 0xfffb4ba8

loc_fffb4ba3:  ; not directly referenced
mov ebx, 0xb

loc_fffb4ba8:  ; not directly referenced
mov eax, ebx
mov ecx, edi
push edx
or eax, 0x30
mov edx, dword [ebp - 0x54]
mov word [ebp - 0x60], ax
cwde
push eax
mov eax, dword [ebp - 0x4c]
push 2
push esi
call fcn_fffb02b4  ; call 0xfffb02b4
add esp, 0x10
cmp byte [ebp - 0x5d], 0
je loc_fffb4c75  ; je 0xfffb4c75
mov ecx, dword [ebp - 0x58]
mov dl, byte [ebp - 0x60]
mov byte [ecx], dl
jmp near loc_fffb4c75  ; jmp 0xfffb4c75

loc_fffb4bde:  ; not directly referenced
cmp byte [ebp - 0x50], 5
jne short loc_fffb4c3e  ; jne 0xfffb4c3e
cmp bx, 0x13
jg short loc_fffb4bf7  ; jg 0xfffb4bf7
test bx, bx
mov eax, 0
cmovs ebx, eax
jmp short loc_fffb4bfc  ; jmp 0xfffb4bfc

loc_fffb4bf7:  ; not directly referenced
mov ebx, 0x13

loc_fffb4bfc:  ; not directly referenced
mov edx, ebx
mov ecx, 5
sar dx, 0xf
mov eax, ebx
idiv cx
mov ecx, edi
lea edx, [edx + eax*8]
mov byte [ebp - 0x60], dl
push eax
movzx eax, dl
mov edx, dword [ebp - 0x54]
push eax
mov eax, dword [ebp - 0x4c]
push 2
push esi
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10
cmp byte [ebp - 0x5d], 0
je short loc_fffb4c75  ; je 0xfffb4c75
mov edx, dword [ebp - 0x58]
mov al, byte [ebp - 0x60]
mov byte [edx + 0xdd9], al
jmp short loc_fffb4c75  ; jmp 0xfffb4c75

loc_fffb4c3e:  ; not directly referenced
cmp byte [ebp - 0x64], 0
je short loc_fffb4c75  ; je 0xfffb4c75
push ecx
mov edx, dword [ebp - 0x54]
mov ecx, edi
push 0
mov eax, dword [ebp - 0x4c]
push 0xff
push esi
call fcn_fffb02b4  ; call 0xfffb02b4
add esp, 0xc
mov ecx, edi
push 0
mov edx, dword [ebp - 0x54]
mov eax, dword [ebp - 0x4c]
push 0xff
push esi
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10

loc_fffb4c75:  ; not directly referenced
inc edi
add dword [ebp - 0x58], 9
cmp edi, 4
jne loc_fffb4b66  ; jne 0xfffb4b66

loc_fffb4c83:  ; not directly referenced
cmp byte [ebp - 0x50], 6
mov al, byte [ebp - 0x64]
sete cl
or al, cl
je short loc_fffb4cf2  ; je 0xfffb4cf2
cmp bx, 7
jg short loc_fffb4ca4  ; jg 0xfffb4ca4
test bx, bx
mov eax, 0
cmovs ebx, eax
jmp short loc_fffb4ca9  ; jmp 0xfffb4ca9

loc_fffb4ca4:  ; not directly referenced
mov ebx, 7

loc_fffb4ca9:  ; not directly referenced
movzx edx, byte [ebp - 0x68]
mov esi, dword [ebp - 0x5c]
test cl, cl
mov eax, dword [esi + edx*4 + 0x145]
je short loc_fffb4cc8  ; je 0xfffb4cc8
mov ecx, ebx
and ah, 0xe3
and ecx, 7
shl ecx, 0xa
or eax, ecx

loc_fffb4cc8:  ; not directly referenced
mov esi, edx
mov ecx, dword [ebp - 0x54]
shl esi, 9
shl ecx, 8
lea ecx, [esi + ecx + 0x60]
mov esi, dword [ebp - 0x4c]
add ecx, dword [esi + 0x103f]
cmp byte [ebp - 0x5d], 0
mov dword [ecx], eax
je short loc_fffb4cf2  ; je 0xfffb4cf2
mov esi, dword [ebp - 0x5c]
mov dword [esi + edx*4 + 0x145], eax

loc_fffb4cf2:  ; not directly referenced
cmp byte [ebp - 0x50], 9
je short loc_fffb4d0b  ; je 0xfffb4d0b

loc_fffb4cf8:  ; not directly referenced
mov al, byte [ebp - 0x50]
sub eax, 7
cmp al, 1
ja loc_fffb5030  ; ja 0xfffb5030
jmp near loc_fffb4e58  ; jmp 0xfffb4e58

loc_fffb4d0b:  ; not directly referenced
cmp dword [ebp - 0x70], 0
je loc_fffb4dbf  ; je 0xfffb4dbf
movzx edx, bl
mov eax, 2
cmp dl, 2
cmovbe eax, edx
xor edi, edi
imul edx, dword [ebp - 0x54], 0x1347
add edx, dword [ebp - 0x4c]
mov dword [ebp - 0x64], edx
mov dword [ebp - 0x68], eax

loc_fffb4d35:  ; not directly referenced
mov esi, dword [ebp - 0x64]
mov ecx, edi
mov eax, 1
mov edx, edi
shl eax, cl
test byte [esi + 0x3acb], al
je short loc_fffb4db0  ; je 0xfffb4db0
test byte [ebp - 0x5e], al
je short loc_fffb4db0  ; je 0xfffb4db0
shr dl, 1
mov eax, edi
and eax, 1
mov esi, dword [ebp - 0x5c]
movzx edx, dl
mov ecx, edi
imul edx, edx, 0xfb
imul eax, eax, 0xa
lea eax, [eax + edx + 0x1230]
lea eax, [esi + eax + 8]
mov dword [ebp - 0x58], eax
mov edx, dword [ebp - 0x58]
mov eax, dword [ebp - 0x68]
movzx esi, byte [ebp + eax - 0x46]
mov ax, word [edx + 6]
push 0
movzx edx, byte [ebp - 0x6c]
and eax, 0xfffffff0
push 0
or esi, eax
movzx eax, si
push eax
mov eax, dword [ebp - 0x4c]
push 3
call fcn_fffb8fda  ; call 0xfffb8fda
add esp, 0x10
cmp byte [ebp - 0x5d], 0
je short loc_fffb4db0  ; je 0xfffb4db0
mov ecx, dword [ebp - 0x58]
mov word [ecx + 6], si

loc_fffb4db0:  ; not directly referenced
inc edi
cmp edi, 4
jne loc_fffb4d35  ; jne 0xfffb4d35
jmp near loc_fffb4cf8  ; jmp 0xfffb4cf8

loc_fffb4dbf:  ; not directly referenced
xor eax, eax
test bl, bl
setne al
xor edi, edi
mov ax, word [ebp + eax*2 - 0x40]
mov word [ebp - 0x64], ax
imul eax, dword [ebp - 0x54], 0x1347
add eax, dword [ebp - 0x4c]
mov dword [ebp - 0x68], eax

loc_fffb4dde:  ; not directly referenced
mov esi, dword [ebp - 0x68]
mov ecx, edi
mov eax, 1
mov edx, edi
shl eax, cl
test byte [esi + 0x3acb], al
je short loc_fffb4e4d  ; je 0xfffb4e4d
test byte [ebp - 0x5e], al
je short loc_fffb4e4d  ; je 0xfffb4e4d
shr dl, 1
mov ecx, edi
and ecx, 1
mov esi, dword [ebp - 0x5c]
movzx edx, dl
imul ecx, ecx, 0xa
imul edx, edx, 0xfb
lea edx, [ecx + edx + 0x1230]
movzx ecx, al
lea edx, [esi + edx + 8]
mov dword [ebp - 0x58], edx
mov si, word [edx + 2]
push edx
and esi, 0xffffffdd
or esi, dword [ebp - 0x64]
push edx
movzx eax, si
mov edx, dword [ebp - 0x54]
push eax
mov eax, dword [ebp - 0x4c]
push 1
call fcn_fffb96d4  ; call 0xfffb96d4
add esp, 0x10
cmp byte [ebp - 0x5d], 0
je short loc_fffb4e4d  ; je 0xfffb4e4d
mov eax, dword [ebp - 0x58]
mov word [eax + 2], si

loc_fffb4e4d:  ; not directly referenced
inc edi
cmp edi, 4
jne short loc_fffb4dde  ; jne 0xfffb4dde
jmp near loc_fffb4cf8  ; jmp 0xfffb4cf8

loc_fffb4e58:  ; not directly referenced
cmp dword [ebp - 0x70], 0
je loc_fffb4efd  ; je 0xfffb4efd
movzx edx, bl
mov eax, 2
cmp dl, 2
cmovbe eax, edx
xor ebx, ebx
imul edx, dword [ebp - 0x54], 0x1347
add edx, dword [ebp - 0x4c]
mov dword [ebp - 0x50], edx
mov dword [ebp - 0x54], eax

loc_fffb4e82:  ; not directly referenced
mov esi, dword [ebp - 0x50]
mov cl, bl
mov eax, 1
mov dl, bl
shl eax, cl
test byte [esi + 0x3acb], al
je short loc_fffb4ef2  ; je 0xfffb4ef2
test byte [ebp - 0x5e], al
je short loc_fffb4ef2  ; je 0xfffb4ef2
shr dl, 1
mov eax, ebx
and eax, 1
mov esi, dword [ebp - 0x5c]
movzx edx, dl
mov ecx, ebx
imul eax, eax, 0xa
imul edx, edx, 0xfb
add edx, eax
lea edi, [esi + edx + 0x1230]
mov edx, dword [ebp - 0x54]
movzx esi, byte [ebp + edx - 0x43]
movzx edx, byte [ebp - 0x6c]
mov ax, word [edi + 0x10]
push 0
and eax, 0xfffffffc
push 0
or esi, eax
movzx eax, si
push eax
mov eax, dword [ebp - 0x4c]
push 0xb
call fcn_fffb8fda  ; call 0xfffb8fda
add esp, 0x10
cmp byte [ebp - 0x5d], 0
je short loc_fffb4ef2  ; je 0xfffb4ef2
mov word [edi + 0x10], si

loc_fffb4ef2:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffb4e82  ; jne 0xfffb4e82
jmp near loc_fffb5030  ; jmp 0xfffb5030

loc_fffb4efd:  ; not directly referenced
mov edx, ebx
mov al, 2
sar dx, 4
cmp byte [ebp - 0x50], 7
mov dword [ebp - 0x58], 0
cmovne edx, ebx
cmp dl, 2
cmovbe eax, edx
and ebx, 0xf
movzx eax, al
mov word [ebp - 0x68], bx
mov dword [ebp - 0x64], eax
imul eax, dword [ebp - 0x54], 0x1347
add eax, dword [ebp - 0x4c]
mov dword [ebp - 0x6c], eax

loc_fffb4f33:  ; not directly referenced
mov esi, dword [ebp - 0x6c]
mov dl, byte [ebp - 0x58]
mov cl, dl
mov eax, 1
shl eax, cl
test byte [esi + 0x3acb], al
je loc_fffb4ffb  ; je 0xfffb4ffb
test byte [ebp - 0x5e], al
je loc_fffb4ffb  ; je 0xfffb4ffb
mov ecx, dword [ebp - 0x58]
mov esi, dword [ebp - 0x5c]
shr dl, 1
and ecx, 1
movzx edx, dl
movzx ebx, al
imul ecx, ecx, 0xa
imul edx, edx, 0xfb
lea edx, [ecx + edx + 0x1230]
lea edi, [esi + edx + 8]
mov edx, dword [ebp - 0x64]
mov si, word [ebp + edx*2 - 0x36]
mov dx, word [edi + 4]
push ecx
shl esi, 9
and dh, 0xf9
push ecx
or esi, edx
mov ecx, ebx
movzx eax, si
mov edx, dword [ebp - 0x54]
push eax
mov eax, dword [ebp - 0x4c]
push 2
call fcn_fffb96d4  ; call 0xfffb96d4
add esp, 0x10
cmp byte [ebp - 0x5d], 0
je short loc_fffb4fb2  ; je 0xfffb4fb2
mov word [edi + 4], si

loc_fffb4fb2:  ; not directly referenced
cmp byte [ebp - 0x50], 8
je short loc_fffb4ffb  ; je 0xfffb4ffb
movzx edx, byte [ebp - 0x68]
mov eax, 5
cmp dl, 5
mov ecx, ebx
cmovbe eax, edx
mov si, word [ebp + eax*2 - 0x24]
mov ax, word [edi + 2]
push edx
shl esi, 2
and ax, 0xfdbb
push edx
or esi, eax
mov edx, dword [ebp - 0x54]
movzx eax, si
push eax
mov eax, dword [ebp - 0x4c]
push 1
call fcn_fffb96d4  ; call 0xfffb96d4
add esp, 0x10
cmp byte [ebp - 0x5d], 0
je short loc_fffb4ffb  ; je 0xfffb4ffb
mov word [edi + 2], si

loc_fffb4ffb:  ; not directly referenced
inc dword [ebp - 0x58]
cmp dword [ebp - 0x58], 4
jne loc_fffb4f33  ; jne 0xfffb4f33
jmp short loc_fffb5030  ; jmp 0xfffb5030

loc_fffb500a:  ; not directly referenced
cmp byte [ebp - 0x50], 1
sbb edx, edx
and edx, 0x10
add edx, 0xf
cmp byte [ebp - 0x50], 1
sbb eax, eax
and eax, 0xfffffff0
sub eax, 0x10
cmp bx, dx
jg loc_fffb4a75  ; jg 0xfffb4a75
jmp near loc_fffb4a6d  ; jmp 0xfffb4a6d

loc_fffb5030:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffb514a:
db 0x00
db 0x00

fcn_fffb514c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea eax, [ebp - 0x2d]
lea edx, [ebp - 0x2a]
push ebx
lea esp, [esp - 0x6c]
mov byte [ebp - 0x2d], 0
mov esi, dword [ebp + 8]
mov byte [ebp - 0x2c], 1
mov byte [ebp - 0x2b], 2
mov dword [ebp - 0x5c], eax
mov dword [ebp - 0x3c], edx

loc_fffb5171:  ; not directly referenced
mov ecx, dword [ebp - 0x5c]
lea eax, [esi + 0x16be]
mov edx, dword [esi + 0x175a]
mov dword [ebp - 0x60], eax
mov eax, dword [esi + 0x1756]
mov cl, byte [ecx]
cmp cl, 1
mov byte [ebp - 0x41], cl
je short loc_fffb51d7  ; je 0xfffb51d7
jb short loc_fffb51a0  ; jb 0xfffb51a0
cmp cl, 2
jne loc_fffb523e  ; jne 0xfffb523e
jmp short loc_fffb520a  ; jmp 0xfffb520a

loc_fffb51a0:  ; not directly referenced
mov edx, dword [esi + 0x103f]
mov byte [ebp - 0x4e], 0
shr eax, 0xb
mov byte [ebp - 0x4f], 0xf8
and eax, 0xf
mov byte [ebp - 0x50], 7
mov byte [ebp - 0x4d], 1
mov edx, dword [edx + 0x3a00]
and edx, 0x3f
mov byte [ebp - 0x42], dl
mov dl, al
or edx, 0xfffffff0
test al, 8
cmovne eax, edx
mov byte [ebp - 0x4c], al
jmp short loc_fffb5256  ; jmp 0xfffb5256

loc_fffb51d7:  ; not directly referenced
mov edx, dword [esi + 0x103f]
mov byte [ebp - 0x4e], 0
shr eax, 0xf
mov byte [ebp - 0x4f], 0xf0
and eax, 0x1f
mov byte [ebp - 0x50], 0xf
mov edx, dword [edx + 0x3a04]
and edx, 0x3f
mov byte [ebp - 0x42], dl
mov dl, al
or edx, 0xffffffe0
test al, 0x10
cmovne eax, edx
mov byte [ebp - 0x4c], al
jmp short loc_fffb5252  ; jmp 0xfffb5252

loc_fffb520a:  ; not directly referenced
mov eax, dword [esi + 0x103f]
mov byte [ebp - 0x4f], 4
mov byte [ebp - 0x50], 0xf
mov byte [ebp - 0x4d], 5
mov eax, dword [eax + 0x3a00]
shr eax, 0x1a
and eax, 0x1f
mov byte [ebp - 0x42], al
mov eax, edx
shr eax, 4
and edx, 0xf
and eax, 1
mov byte [ebp - 0x4c], dl
mov byte [ebp - 0x4e], al
jmp short loc_fffb5256  ; jmp 0xfffb5256

loc_fffb523e:  ; not directly referenced
mov byte [ebp - 0x4e], 0
mov byte [ebp - 0x4f], 0
mov byte [ebp - 0x50], 0
mov byte [ebp - 0x42], 0
mov byte [ebp - 0x4c], 0

loc_fffb5252:  ; not directly referenced
mov byte [ebp - 0x4d], 0

loc_fffb5256:  ; not directly referenced
lea edx, [ebp - 0x2a]
mov dword [ebp - 0x40], 0
mov dword [ebp - 0x54], edx
xor eax, eax
xor ebx, ebx
mov word [ebp - 0x44], 0
mov byte [ebp - 0x58], 0

loc_fffb5271:  ; not directly referenced
imul edx, dword [ebp - 0x40], 0x1347
mov ecx, dword [ebp - 0x60]
cmp dword [ecx + edx + 0x12be], 2
jne loc_fffb5345  ; jne 0xfffb5345
lea edx, [esi + edx + 0x297c]
mov dword [ebp - 0x6c], edx
mov dl, byte [esi + 0x1755]
xor edi, edi
mov byte [ebp - 0x66], dl
jmp near loc_fffb5337  ; jmp 0xfffb5337

loc_fffb52a3:  ; not directly referenced
mov ecx, dword [ebp - 0x6c]
cmp byte [ebp - 0x41], 0
mov edx, dword [ecx + edi*4 + 0x11d]
jne short loc_fffb52bc  ; jne 0xfffb52bc
mov bl, dl
mov al, 6
and ebx, 0x3f
jmp short loc_fffb52d9  ; jmp 0xfffb52d9

loc_fffb52bc:  ; not directly referenced
cmp byte [ebp - 0x41], 1
jne short loc_fffb52cc  ; jne 0xfffb52cc
shr edx, 0xc
mov bl, dl
and ebx, 0x1f
jmp short loc_fffb52d7  ; jmp 0xfffb52d7

loc_fffb52cc:  ; not directly referenced
cmp byte [ebp - 0x41], 2
jne short loc_fffb52d9  ; jne 0xfffb52d9
mov ebx, edx
shr ebx, 0x1b

loc_fffb52d7:  ; not directly referenced
mov al, 5

loc_fffb52d9:  ; not directly referenced
movzx edx, al
mov ecx, 8
sub ecx, edx
mov dword [ebp - 0x64], edx
mov edx, 1
shl edx, cl
mov cl, al
dec edx
shl edx, cl
mov ecx, dword [ebp - 0x64]
dec ecx
mov dword [ebp - 0x48], edx
mov byte [ebp - 0x65], dl
movzx edx, bl
sar edx, cl
test edx, edx
je short loc_fffb530c  ; je 0xfffb530c
mov cl, byte [ebp - 0x65]
or ecx, ebx
jmp short loc_fffb5313  ; jmp 0xfffb5313

loc_fffb530c:  ; not directly referenced
mov cl, byte [ebp - 0x48]
not ecx
and ecx, ebx

loc_fffb5313:  ; not directly referenced
movsx cx, cl
add word [ebp - 0x44], cx
test edx, edx
je short loc_fffb5326  ; je 0xfffb5326
mov dl, byte [ebp - 0x65]
or edx, ebx
jmp short loc_fffb532d  ; jmp 0xfffb532d

loc_fffb5326:  ; not directly referenced
mov dl, byte [ebp - 0x48]
not edx
and edx, ebx

loc_fffb532d:  ; not directly referenced
mov ecx, dword [ebp - 0x54]
add dl, byte [ebp - 0x42]
mov byte [ecx + edi], dl
inc edi

loc_fffb5337:  ; not directly referenced
mov edx, edi
cmp byte [ebp - 0x66], dl
ja loc_fffb52a3  ; ja 0xfffb52a3
inc byte [ebp - 0x58]

loc_fffb5345:  ; not directly referenced
inc dword [ebp - 0x40]
add dword [ebp - 0x54], 9
cmp dword [ebp - 0x40], 2
jne loc_fffb5271  ; jne 0xfffb5271
movsx eax, word [ebp - 0x44]
mov edi, dword [ebp - 0x44]
sar di, 0xf
mov dword [ebp - 0x48], eax
movzx ebx, byte [ebp - 0x58]
or edi, 1
movzx ecx, byte [esi + 0x1755]
mov edx, edi
movsx eax, dl
imul eax, ebx
imul eax, ecx
imul ecx, ebx
cdq
idiv dword [ebp - 0x40]
add eax, dword [ebp - 0x48]
cdq
idiv ecx
test ax, ax
je loc_fffb551c  ; je 0xfffb551c
movsx eax, al
cdq
mov ecx, edx
xor ecx, eax
sub ecx, edx
mov edx, edi
neg edx
cmp byte [ebp - 0x41], 2
mov byte [ebp - 0x54], cl
mov cl, byte [ebp - 0x4c]
cmove edi, edx
mov dl, byte [ebp - 0x4c]
add ecx, edi
mov byte [ebp - 0x48], dl
mov byte [ebp - 0x40], cl
mov cl, byte [ebp - 0x54]
mov byte [ebp - 0x44], cl
mov cl, byte [ebp - 0x42]
movzx edx, cl
add edx, eax
mov dword [ebp - 0x58], edx

loc_fffb53ca:  ; not directly referenced
mov al, byte [ebp - 0x40]
cmp cl, 2
mov byte [ebp - 0x42], al
mov bl, 1
jbe short loc_fffb53f3  ; jbe 0xfffb53f3
movzx eax, cl
cmp eax, 0x3c
jg short loc_fffb53f3  ; jg 0xfffb53f3
mov dl, byte [ebp - 0x50]
cmp byte [ebp - 0x40], dl
setg bl
mov al, byte [ebp - 0x40]
cmp byte [ebp - 0x4f], al
setg al
or ebx, eax

loc_fffb53f3:  ; not directly referenced
cmp byte [ebp - 0x41], 2
jne short loc_fffb5413  ; jne 0xfffb5413
cmp byte [ebp - 0x40], 0x10
mov al, 0
mov dl, byte [ebp - 0x4e]
cmovge edx, eax
mov al, dl
mov byte [ebp - 0x4e], dl
shl eax, 4
add eax, dword [ebp - 0x40]
mov byte [ebp - 0x42], al

loc_fffb5413:  ; not directly referenced
test bl, bl
jne short loc_fffb5468  ; jne 0xfffb5468
sub esp, 0xc
mov eax, esi
push 0
movsx ecx, byte [ebp - 0x42]
movzx edx, byte [ebp - 0x4d]
call fcn_fffb3889  ; call 0xfffb3889
mov cl, al
mov edx, dword [ebp - 0x58]
and eax, 0xff
add esp, 0x10
sub edx, eax
mov eax, edx
sar eax, 0x1f
xor edx, eax
sub edx, eax
cmp dl, byte [ebp - 0x54]
mov dword [ebp - 0x64], edx
mov al, dl
jae short loc_fffb5468  ; jae 0xfffb5468
cmp dl, byte [ebp - 0x44]
jae short loc_fffb546a  ; jae 0xfffb546a
mov dl, byte [ebp - 0x42]
test al, al
mov byte [ebp - 0x48], dl
mov dl, byte [ebp - 0x64]
cmove edx, ebx
sete bl
mov byte [ebp - 0x44], dl
jmp short loc_fffb546a  ; jmp 0xfffb546a

loc_fffb5468:  ; not directly referenced
mov bl, 1

loc_fffb546a:  ; not directly referenced
mov eax, edi
add byte [ebp - 0x40], al
test bl, bl
je loc_fffb53ca  ; je 0xfffb53ca
mov dl, byte [ebp - 0x4c]
cmp byte [ebp - 0x48], dl
je loc_fffb5505  ; je 0xfffb5505
sub esp, 0xc
mov eax, esi
push 1
movzx ecx, byte [ebp - 0x48]
xor ebx, ebx
movzx edx, byte [ebp - 0x4d]
call fcn_fffb3889  ; call 0xfffb3889
movzx eax, al
movzx ecx, byte [ebp - 0x41]
add esp, 0x10
mov word [ebp - 0x40], ax
mov dword [ebp - 0x4c], ecx

loc_fffb54aa:  ; not directly referenced
imul eax, ebx, 0x1347
mov edx, dword [ebp - 0x60]
cmp dword [edx + eax + 0x12be], 2
je short loc_fffb54ec  ; je 0xfffb54ec

loc_fffb54bd:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffb54aa  ; jne 0xfffb54aa
jmp short loc_fffb551c  ; jmp 0xfffb551c

loc_fffb54c5:  ; not directly referenced
movzx edx, byte [ebp - 0x41]
xor ecx, ecx
push 1
movzx eax, byte [edx + edi - 0x12]
sub eax, dword [ebp - 0x40]
cwde
push eax
push dword [ebp - 0x4c]
mov eax, esi
push edx
mov edx, ebx
call fcn_fffb498e  ; call 0xfffb498e
inc byte [ebp - 0x41]
add esp, 0x10
jmp short loc_fffb54f8  ; jmp 0xfffb54f8

loc_fffb54ec:  ; not directly referenced
lea edi, [ebx + ebx*8]
lea ecx, [ebp - 0x18]
mov byte [ebp - 0x41], 0
add edi, ecx

loc_fffb54f8:  ; not directly referenced
mov al, byte [ebp - 0x41]
cmp al, byte [esi + 0x1755]
jb short loc_fffb54c5  ; jb 0xfffb54c5
jmp short loc_fffb54bd  ; jmp 0xfffb54bd

loc_fffb5505:  ; not directly referenced
sub esp, 0xc
mov eax, esi
push 1
movzx ecx, byte [ebp - 0x48]
movzx edx, byte [ebp - 0x4d]
call fcn_fffb3889  ; call 0xfffb3889
add esp, 0x10

loc_fffb551c:  ; not directly referenced
inc dword [ebp - 0x5c]
mov edx, dword [ebp - 0x3c]
cmp dword [ebp - 0x5c], edx
jne loc_fffb5171  ; jne 0xfffb5171
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb5535:  ; not directly referenced
push ebp
mov ecx, 0xa
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x60]
mov esi, ref_fffcbb5c  ; mov esi, 0xfffcbb5c
push ebx
lea ebx, [ebp - 0x60]
lea esp, [esp - 0x7c]
mov byte [ebp - 0x6e], 4
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov eax, dword [ebp + 8]
mov byte [ebp - 0x6d], 1
add eax, 0x16be
mov byte [ebp - 0x6c], 5
mov byte [ebp - 0x6b], 2
mov byte [ebp - 0x70], 5
mov byte [ebp - 0x6f], 2
mov byte [ebp - 0x6a], 1
mov byte [ebp - 0x69], 2
mov byte [ebp - 0x68], 1
mov byte [ebp - 0x67], 2
mov byte [ebp - 0x66], 0
mov byte [ebp - 0x65], 1
mov byte [ebp - 0x64], 2
mov byte [ebp - 0x63], 0
mov byte [ebp - 0x62], 0
mov byte [ebp - 0x61], 0
mov dword [ebp - 0x84], eax
mov dword [ebp - 0x7c], 0

loc_fffb55a6:  ; not directly referenced
imul edx, dword [ebp - 0x7c], 0x1347
mov ecx, dword [ebp - 0x84]
cmp dword [ecx + edx + 0x12be], 2
jne loc_fffb5678  ; jne 0xfffb5678
mov cl, byte [ebp - 0x7c]
mov eax, 1
shl eax, cl
mov ecx, dword [ebp + 8]
cmp dword [ecx + edx + 0x2a71], 2
jne short loc_fffb564d  ; jne 0xfffb564d
push ecx
and eax, 0xff
lea edx, [ebp - 0x56]
push 0
mov dword [ebp - 0x80], eax
lea eax, [ebp - 0x6a]
push 0
mov ecx, dword [ebp - 0x80]
lea edi, [ebp - 0x65]
push 0xf
lea esi, [ebp - 0x70]
push 4
push 1
push ebx
push eax
lea eax, [ebp - 0x6e]
push 4
push eax
mov eax, dword [ebp + 8]
push 7
push 0xf
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x2c
mov ecx, dword [ebp - 0x80]
push 0
lea edx, [ebp - 0x56]
mov eax, dword [ebp + 8]
push 0
push 0xf
push 2
push 1
push ebx
push edi
push 2
push esi
push 8
push 3
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x2c
mov ecx, dword [ebp - 0x80]
push 0
push 0
push 0xf
push 2
push 1
push ebx
push edi
push 2
push esi
push 8
push 0xc
jmp short loc_fffb566a  ; jmp 0xfffb566a

loc_fffb564d:  ; not directly referenced
push edx
movzx ecx, al
lea eax, [ebp - 0x65]
push 0
push 0
push 0xf
push 2
push 0
push ebx
push eax
lea eax, [ebp - 0x70]
push 2
push eax
push 7
push 0xf

loc_fffb566a:  ; not directly referenced
lea edx, [ebp - 0x56]
mov eax, dword [ebp + 8]
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x30

loc_fffb5678:  ; not directly referenced
inc dword [ebp - 0x7c]
cmp dword [ebp - 0x7c], 2
jne loc_fffb55a6  ; jne 0xfffb55a6
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb568f:  ; not directly referenced
push ebp
mov ecx, 0xa
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x60]
mov esi, ref_fffcbb68  ; mov esi, 0xfffcbb68
push ebx
lea esp, [esp - 0x5c]
mov byte [ebp - 0x67], 4
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov eax, dword [ebp + 8]
mov byte [ebp - 0x66], 1
mov byte [ebp - 0x65], 1
mov byte [ebp - 0x64], 2
mov byte [ebp - 0x63], 1
mov byte [ebp - 0x62], 0
mov byte [ebp - 0x61], 0
cmp dword [eax + 0x1005], HASWELL_FAMILY_ULT
jne loc_fffb5759  ; jne 0xfffb5759
mov cl, 1
mov edx, 4
call fcn_fffb2de8  ; call 0xfffb2de8
mov edx, dword [ebp - 0x60]
mov ecx, 1
cmp ax, dx
mov esi, 4
mov bl, 1
lea edi, [ebp - 0x60]
cmovae edx, eax
mov eax, dword [ebp + 8]
mov word [ebp - 0x60], dx
mov edx, 1
call fcn_fffb2de8  ; call 0xfffb2de8
mov dx, word [ebp - 0x5e]
cmp ax, dx
cmovae edx, eax
mov word [ebp - 0x5e], dx

loc_fffb571a:  ; not directly referenced
mov eax, dword [ebp + 8]
test byte [eax + 0x176a], bl
je short loc_fffb5754  ; je 0xfffb5754
push eax
lea eax, [ebp - 0x65]
mov ecx, 3
push 0
lea edx, [ebp - 0x56]
push 0
push 0xf
push 7
push 0
push edi
push eax
lea eax, [ebp - 0x67]
push 2
push eax
movzx eax, bl
push 5
push eax
mov eax, dword [ebp + 8]
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x30

loc_fffb5754:  ; not directly referenced
add ebx, ebx
dec esi
jne short loc_fffb571a  ; jne 0xfffb571a

loc_fffb5759:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb5763:  ; not directly referenced
push ebp
mov ecx, 1
mov edx, 4
mov ebp, esp
push ebx
lea esp, [esp - 0x54]
mov ebx, dword [ebp + 8]
mov byte [ebp - 0x57], 4
mov eax, ebx
mov byte [ebp - 0x56], 1
mov byte [ebp - 0x55], 1
mov byte [ebp - 0x54], 2
mov byte [ebp - 0x53], 1
mov byte [ebp - 0x52], 0
mov byte [ebp - 0x51], 0
mov word [ebp - 0x50], 0
mov word [ebp - 0x4e], 0
mov word [ebp - 0x4c], 0
mov word [ebp - 0x4a], 0
mov word [ebp - 0x48], 0
call fcn_fffb2de8  ; call 0xfffb2de8
mov word [ebp - 0x50], ax
mov ecx, 1
mov edx, 1
mov eax, ebx
call fcn_fffb2de8  ; call 0xfffb2de8
cmp dword [ebx + 0x1749], 2
mov word [ebp - 0x4e], ax
jne short loc_fffb580a  ; jne 0xfffb580a
push eax
lea eax, [ebp - 0x50]
mov ecx, 3
push 0
lea edx, [ebp - 0x46]
push 0
push 0xf
push 2
push 0
push eax
lea eax, [ebp - 0x55]
push eax
lea eax, [ebp - 0x57]
push 2
push eax
mov eax, ebx
push 9
push 0xf
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x30

loc_fffb580a:  ; not directly referenced
xor eax, eax
mov ebx, dword [ebp - 4]
leave
ret

fcn_fffb5811:  ; not directly referenced
push ebp
mov ecx, 0xa
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x60]
mov esi, ref_fffcbb74  ; mov esi, 0xfffcbb74
push ebx
lea esp, [esp - 0x5c]
mov ebx, dword [ebp + 8]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
mov byte [ebp - 0x67], 5
mov byte [ebp - 0x66], 2
mov byte [ebp - 0x65], 1
mov byte [ebp - 0x64], 2
mov byte [ebp - 0x63], 0
mov byte [ebp - 0x62], 0
mov byte [ebp - 0x61], 0
jne short loc_fffb58be  ; jne 0xfffb58be
mov cl, 1
mov edx, 5
mov eax, ebx
call fcn_fffb2de8  ; call 0xfffb2de8
mov edx, dword [ebp - 0x60]
mov ecx, 1
cmp ax, dx
cmovae edx, eax
mov eax, ebx
mov word [ebp - 0x60], dx
mov edx, 2
call fcn_fffb2de8  ; call 0xfffb2de8
mov dx, word [ebp - 0x5e]
mov ecx, 3
cmp ax, dx
cmovae edx, eax
push eax
lea eax, [ebp - 0x60]
mov word [ebp - 0x5e], dx
push 0
lea edx, [ebp - 0x56]
push 0
push 0xf
push 8
push 0xfffffffffffffff1
push eax
lea eax, [ebp - 0x65]
push eax
lea eax, [ebp - 0x67]
push 2
push eax
mov eax, ebx
push 2
push 0xf
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x30

loc_fffb58be:  ; not directly referenced
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb58c8:  ; not directly referenced
push ebp
mov ecx, 1
mov edx, 5
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x60]
xor esi, esi
push ebx
lea esp, [esp - 0x5c]
mov ebx, dword [ebp + 8]
mov eax, ebx
mov byte [ebp - 0x67], 5
mov byte [ebp - 0x66], 2
mov byte [ebp - 0x65], 1
mov byte [ebp - 0x64], 2
mov byte [ebp - 0x63], 1
mov byte [ebp - 0x62], 0
mov byte [ebp - 0x61], 0
mov word [ebp - 0x60], 0
mov word [ebp - 0x5e], 0
mov word [ebp - 0x5c], 0
mov word [ebp - 0x5a], 0
mov word [ebp - 0x58], 0
call fcn_fffb2de8  ; call 0xfffb2de8
mov word [ebp - 0x60], ax
mov ecx, 1
mov edx, 2
mov eax, ebx
call fcn_fffb2de8  ; call 0xfffb2de8
mov word [ebp - 0x5e], ax

loc_fffb593e:  ; not directly referenced
mov ecx, esi
mov eax, 1
shl eax, cl
test byte [ebx + 0x176a], al
je short loc_fffb597f  ; je 0xfffb597f
push edx
lea edx, [ebp - 0x65]
and eax, 0xff
push 2
mov ecx, 3
push 0
push 0xf
push 0xb
push 0
push edi
push edx
lea edx, [ebp - 0x67]
push 2
push edx
lea edx, [ebp - 0x56]
push 4
push eax
mov eax, ebx
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x30

loc_fffb597f:  ; not directly referenced
inc esi
cmp esi, 4
jne short loc_fffb593e  ; jne 0xfffb593e
push eax
lea edx, [ebx + 0x1774]
mov ecx, 3
push eax
mov eax, ebx
push 0
push 0xf
push 0
push 0
push 0
push 2
call fcn_fffb0d66  ; call 0xfffb0d66
lea esp, [ebp - 0xc]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb59af:  ; not directly referenced
push ebp
mov ecx, 1
mov edx, 4
mov ebp, esp
push ebx
lea esp, [esp - 0x54]
mov ebx, dword [ebp + 8]
mov byte [ebp - 0x57], 4
mov eax, ebx
mov byte [ebp - 0x56], 1
mov byte [ebp - 0x55], 1
mov byte [ebp - 0x54], 2
mov byte [ebp - 0x53], 1
mov byte [ebp - 0x52], 0
mov byte [ebp - 0x51], 0
mov word [ebp - 0x50], 0
mov word [ebp - 0x4e], 0
mov word [ebp - 0x4c], 0
mov word [ebp - 0x4a], 0
mov word [ebp - 0x48], 0
call fcn_fffb2de8  ; call 0xfffb2de8
mov word [ebp - 0x50], ax
mov ecx, 1
mov edx, 1
mov eax, ebx
call fcn_fffb2de8  ; call 0xfffb2de8
push ecx
mov word [ebp - 0x4e], ax
lea eax, [ebp - 0x50]
push 0
lea edx, [ebp - 0x46]
mov ecx, 3
push 0
push 0xf
push 7
push 0
push eax
lea eax, [ebp - 0x55]
push eax
lea eax, [ebp - 0x57]
push 2
push eax
mov eax, ebx
push 6
push 0xf
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x28
lea edx, [ebx + 0x1774]
push 0
mov eax, ebx
mov ecx, 3
push 0xf
push 0
push 0
push 0
push 1
call fcn_fffb0d66  ; call 0xfffb0d66
mov ebx, dword [ebp - 4]
leave
ret

fcn_fffb5a70:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x7c]
mov edi, dword [ebp + 8]
mov byte [ebp - 0x6f], 4
mov byte [ebp - 0x6e], 1
mov byte [ebp - 0x6a], 1
mov byte [ebp - 0x69], 2
mov byte [ebp - 0x68], 1
mov byte [ebp - 0x67], 0
mov eax, dword [edi + 0x103f]
mov byte [ebp - 0x66], 0
mov byte [ebp - 0x6d], 4
mov byte [ebp - 0x6c], 1
mov byte [ebp - 0x6b], 0xb
mov byte [ebp - 0x65], 1
mov byte [ebp - 0x64], 2
mov byte [ebp - 0x63], 2
mov byte [ebp - 0x62], 1
mov byte [ebp - 0x61], 0
mov word [ebp - 0x60], 0
mov word [ebp - 0x5e], 0
mov word [ebp - 0x5c], 0
mov word [ebp - 0x5a], 0
mov word [ebp - 0x58], 0
mov eax, dword [eax + 0x3a04]
and eax, 0x3f
cmp dword [edi + 0x1005], HASWELL_FAMILY_ULT
mov byte [ebp - 0x7e], al
mov eax, dword [edi + 0x1749]
jne short loc_fffb5b19  ; jne 0xfffb5b19
cmp eax, 2
je short loc_fffb5b42  ; je 0xfffb5b42
mov byte [ebp - 0x84], 9
mov byte [ebp - 0x83], 0x50
mov word [ebp - 0x82], 0xe6
jmp short loc_fffb5b30  ; jmp 0xfffb5b30

loc_fffb5b19:  ; not directly referenced
mov byte [ebp - 0x84], 9
mov byte [ebp - 0x83], 0x50
mov word [ebp - 0x82], 0xb4

loc_fffb5b30:  ; not directly referenced
lea eax, [ebp - 0x6a]
mov byte [ebp - 0x7f], 2
mov dword [ebp - 0x88], eax
lea edx, [ebp - 0x6f]
jmp short loc_fffb5b69  ; jmp 0xfffb5b69

loc_fffb5b42:  ; not directly referenced
lea eax, [ebp - 0x65]
mov byte [ebp - 0x84], 0xa
mov byte [ebp - 0x83], 0x1e
mov word [ebp - 0x82], 0xe6
mov dword [ebp - 0x88], eax
mov byte [ebp - 0x7f], 3
lea edx, [ebp - 0x6d]

loc_fffb5b69:  ; not directly referenced
mov dword [ebp - 0x7c], edx
xor ebx, ebx

loc_fffb5b6e:  ; not directly referenced
mov eax, dword [ebp - 0x7c]
mov ecx, 1
movzx edx, byte [eax + ebx]
mov eax, edi
call fcn_fffb2de8  ; call 0xfffb2de8
mov word [ebp + ebx*2 - 0x60], ax
inc ebx
cmp byte [ebp - 0x7f], bl
ja short loc_fffb5b6e  ; ja 0xfffb5b6e
mov edx, dword [edi + 0x1756]
mov esi, 0x64
mov ecx, edx
shr edx, 0xf
shr ecx, 3
mov al, dl
and eax, 0x1f
and ecx, 1
and dl, 0x10
lea ebx, [eax - 0x20]
cmove ebx, eax
cmp dword [edi + 0x1005], HASWELL_FAMILY_ULT
mov al, 0x32
cmovne esi, eax
xor ecx, 1
mov edx, esi
and si, 0xff
movzx eax, dl
imul eax, eax, 0x60
movsx edx, bl
lea ebx, [edx + 0x30]
cdq
idiv ebx
movzx edx, byte [ebp - 0x7e]
mov ebx, eax
movzx eax, cl
sub ebx, esi
shl eax, 4
add eax, edx
xor edx, edx
imul ebx, eax
movzx eax, byte [ebp - 0x7e]
mov word [ebp - 0x7e], ax
mov eax, ebx
div word [ebp - 0x82]
movzx esi, cl
shl esi, 4
mov ecx, eax
movzx eax, bx
sub ecx, esi
movzx ebx, byte [ebp - 0x83]
cdq
idiv ebx
sub cx, word [ebp - 0x7e]
mov dl, 0xf0
sub eax, esi
sub al, byte [ebp - 0x7e]
movsx esi, al
cmp cx, 0xfffffffffffffff1
cmovge edx, ecx
movsx ecx, dl
lea ebx, [ecx + 0x17]
cmp esi, ebx
jle short loc_fffb5c3f  ; jle 0xfffb5c3f
add edx, 0x17
mov al, 0xf
cmp dl, 0xf
cmovle eax, edx

loc_fffb5c3f:  ; not directly referenced
push ebx
movzx edx, byte [ebp - 0x84]
push 0
movsx eax, al
push edx
lea edx, [ebp - 0x56]
push 0x11
push eax
lea eax, [ebp - 0x60]
push ecx
mov ecx, 3
push eax
push dword [ebp - 0x88]
movzx eax, byte [ebp - 0x7f]
push eax
push dword [ebp - 0x7c]
mov eax, edi
push 1
push 0xf
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x28
lea edx, [edi + 0x1774]
push 0
mov eax, edi
mov ecx, 3
push 0x11
push 0
push 0
push 0
push 1
call fcn_fffb0d66  ; call 0xfffb0d66
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb5c9f:  ; not directly referenced
push ebp
mov ecx, 0xf
mov edx, 3
mov ebp, esp
mov eax, dword [ebp + 8]
mov dword [ebp + 8], 1
pop ebp
jmp near fcn_fffbf82d  ; jmp 0xfffbf82d

fcn_fffb5cbc:  ; not directly referenced
push ebp
mov ecx, 0xa
mov edx, 0x462
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0xbd5c]
mov esi, ref_fffcbb80  ; mov esi, 0xfffcbb80
push ebx
lea esp, [esp - 0xbddc]
mov byte [ebp - 0xbd86], 6
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov eax, dword [ebp + 8]
mov byte [ebp - 0xbd81], 0
mov byte [ebp - 0xbd80], 4
mov byte [ebp - 0xbd7d], 6
mov byte [ebp - 0xbd7c], 0
mov byte [ebp - 0xbd7b], 4
mov byte [ebp - 0xbd6e], 1
mov byte [ebp - 0xbd6d], 1
movzx eax, byte [eax + 0x1755]
mov byte [ebp - 0xbd6c], 1
mov dword [ebp - 0xbdc8], eax
mov eax, dword [ebp + 8]
mov byte [ebp - 0xbd6b], 1
mov byte [ebp - 0xbd6a], 1
mov byte [ebp - 0xbd69], 1
mov byte [ebp - 0xbd68], 1
mov byte [ebp - 0xbd67], 1
mov byte [ebp - 0xbd66], 0
cmp dword [eax + 0x1005], HASWELL_FAMILY_ULT
mov esi, dword [eax + 0x1749]
lea eax, [ebp - 0xbbf4]
sete bl
mov dword [ebp - 0xbdd8], esi
mov byte [ebp - 0xbd65], 0
mov byte [ebp - 0xbd7f], 6
mov byte [ebp - 0xbd7e], 5
call mrc_setmem
xor ecx, ecx
mov edx, 0xb77a
lea eax, [ebp - 0xb792]
call mrc_setmem
xor ecx, ecx
mov edx, 0x15e
lea eax, [ebp - 0xbd52]
call mrc_setmem
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0xbd85]
call mrc_setmem
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0xbd64]
call mrc_setmem
mov edi, dword [ebp + 8]
mov dl, bl
xor edx, 1
mov al, byte [edi + 0x176b]
mov cl, al
mov esi, eax
and ecx, 3
mov byte [ebp - 0xbdc9], cl
mov cl, byte [edi + 0x176a]
and ecx, 0xf
and esi, 1
mov byte [ebp - 0xbd98], cl
mov dword [ebp - 0xbddc], esi
movzx ecx, byte [ebp - 0xbdc9]
mov dword [ebp - 0xbd90], ecx
je short loc_fffb5e83  ; je 0xfffb5e83
cmp dword [edi + 0x2a71], 2
sete al
setne cl
movzx ecx, cl
mov dword [ebp - 0xbdb8], ecx
mov ecx, dword [ebp + 8]
lea edi, [eax + eax + 1]
sete al
movzx eax, al
mov dword [ebp - 0xbda0], eax
mov al, byte [ebp - 0xbd98]
and al, byte [ecx + 0x3acb]
cmp dword [ecx + 0x1749], 2
mov byte [ebp - 0xbd85], al
je short loc_fffb5e73  ; je 0xfffb5e73
mov byte [ebp - 0xbd7a], 2
mov byte [ebp - 0xbd79], 2
jmp short loc_fffb5e99  ; jmp 0xfffb5e99

loc_fffb5e73:  ; not directly referenced
mov byte [ebp - 0xbd7a], 0
mov byte [ebp - 0xbd79], 0
jmp short loc_fffb5e99  ; jmp 0xfffb5e99

loc_fffb5e83:  ; not directly referenced
xor edi, edi
mov dword [ebp - 0xbdb8], 0
mov dword [ebp - 0xbda0], 0

loc_fffb5e99:  ; not directly referenced
mov esi, dword [ebp - 0xbd90]
sar esi, 1
mov dword [ebp - 0xbdd0], esi
je short loc_fffb5f13  ; je 0xfffb5f13
mov eax, dword [ebp + 8]
cmp dword [eax + 0x3db8], 2
jne short loc_fffb5ef5  ; jne 0xfffb5ef5
jmp short loc_fffb5f04  ; jmp 0xfffb5f04

loc_fffb5eb7:  ; not directly referenced
mov ecx, dword [ebp + 8]
mov al, byte [ebp - 0xbd98]
and al, byte [ecx + 0x4e12]
cmp dword [ecx + 0x1749], 2
mov byte [ebp - 0xbd84], al
je short loc_fffb5ee5  ; je 0xfffb5ee5
mov byte [ebp - 0xbd78], 2
mov byte [ebp - 0xbd77], 2
jmp short loc_fffb5f13  ; jmp 0xfffb5f13

loc_fffb5ee5:  ; not directly referenced
mov byte [ebp - 0xbd78], 0
mov byte [ebp - 0xbd77], 0
jmp short loc_fffb5f13  ; jmp 0xfffb5f13

loc_fffb5ef5:  ; not directly referenced
or edi, 0x10
mov dword [ebp - 0xbdb8], 1
jmp short loc_fffb5eb7  ; jmp 0xfffb5eb7

loc_fffb5f04:  ; not directly referenced
or edi, 0x30
mov dword [ebp - 0xbda0], 1
jmp short loc_fffb5eb7  ; jmp 0xfffb5eb7

loc_fffb5f13:  ; not directly referenced
cmp dword [ebp - 0xbda0], 0
jne short loc_fffb5f47  ; jne 0xfffb5f47
test bl, bl
je short loc_fffb5f67  ; je 0xfffb5f67
mov eax, dword [ebp + 8]
lea esi, [ebp - 0xbd69]
mov dword [ebp - 0xbd9c], esi
test byte [eax + 0x16b5], 0x20
je short loc_fffb5f73  ; je 0xfffb5f73
mov byte [ebp - 0xbdac], 2
lea esi, [ebp - 0xbd7f]
jmp short loc_fffb5f80  ; jmp 0xfffb5f80

loc_fffb5f47:  ; not directly referenced
lea esi, [ebp - 0xbd6e]
mov byte [ebp - 0xbdac], 3
mov dword [ebp - 0xbd9c], esi
mov eax, 2
lea esi, [ebp - 0xbd7d]
jmp short loc_fffb5f85  ; jmp 0xfffb5f85

loc_fffb5f67:  ; not directly referenced
lea esi, [ebp - 0xbd69]
mov dword [ebp - 0xbd9c], esi

loc_fffb5f73:  ; not directly referenced
mov byte [ebp - 0xbdac], 1
lea esi, [ebp - 0xbd86]

loc_fffb5f80:  ; not directly referenced
mov eax, 1

loc_fffb5f85:  ; not directly referenced
movzx edx, dl
mov dword [ebp - 0xbda8], 0xfffffff0
mov byte [ebp - 0xbd94], 0
mov dword [ebp - 0xbdc0], edx
mov dword [ebp - 0xbde8], eax

loc_fffb5fa5:  ; not directly referenced
mov eax, dword [ebp - 0xbdc0]
mov edx, dword [ebp - 0xbde8]
add edx, eax
mov dword [ebp - 0xbda4], eax
mov dword [ebp - 0xbdd4], edx
jmp near loc_fffb612a  ; jmp 0xfffb612a

loc_fffb5fc4:  ; not directly referenced
movsx eax, byte [ebp - 0xbd8c]
cmp eax, dword [ebp - 0xbdd4]
je loc_fffb610c  ; je 0xfffb610c
cmp eax, dword [ebp - 0xbdc0]
jl loc_fffb610c  ; jl 0xfffb610c
cmp byte [ebp - 0xbd8c], 1
mov dword [ebp - 0xbdc4], 0
sete dl
cmp byte [ebp - 0xbda4], 1
sete al
or dl, al
je short loc_fffb6011  ; je 0xfffb6011
mov ecx, dword [ebp - 0xbda0]
mov dword [ebp - 0xbdc4], ecx

loc_fffb6011:  ; not directly referenced
xor ebx, ebx

loc_fffb6013:  ; not directly referenced
mov ecx, dword [ebp - 0xbd90]
bt ecx, ebx
jb short loc_fffb6026  ; jb 0xfffb6026

loc_fffb601e:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffb6013  ; jne 0xfffb6013
jmp short loc_fffb60a4  ; jmp 0xfffb60a4

loc_fffb6026:  ; not directly referenced
mov al, byte [ebp - 0xbdb4]
mov dl, byte [ebp - 0xbd8c]
mov byte [ebp + ebx*2 - 0xbd76], al
mov byte [ebp + ebx*2 - 0xbd75], dl
mov byte [ebp - 0xbdb0], 0
jmp short loc_fffb6088  ; jmp 0xfffb6088

loc_fffb6049:  ; not directly referenced
push 1
xor ecx, ecx
mov edx, ebx
push 0
mov eax, dword [ebp + 8]
push 0
push dword [ebp - 0xbdbc]
call fcn_fffb498e  ; call 0xfffb498e
push 1
movzx ecx, byte [ebp + ebx - 0xbd85]
mov edx, ebx
push 0xc
mov eax, dword [ebp + 8]
push 4
push dword [ebp - 0xbdbc]
call fcn_fffb498e  ; call 0xfffb498e
inc byte [ebp - 0xbdb0]
add esp, 0x20

loc_fffb6088:  ; not directly referenced
movzx ecx, byte [ebp - 0xbdb0]
mov eax, dword [ebp - 0xbdc8]
cmp ecx, eax
mov dword [ebp - 0xbdbc], ecx
jb short loc_fffb6049  ; jb 0xfffb6049
jmp near loc_fffb601e  ; jmp 0xfffb601e

loc_fffb60a4:  ; not directly referenced
cmp byte [ebp - 0xbd94], 0x22
ja short loc_fffb610c  ; ja 0xfffb610c
movzx eax, byte [ebp - 0xbd94]
imul eax, eax, 0x53e
push ecx
push ecx
mov ecx, dword [ebp - 0xbd90]
lea edx, [ebp + eax - 0xb792]
lea eax, [ebp - 0xbd52]
push eax
lea eax, [ebp - 0xbd7a]
push 0
push dword [ebp - 0xbdc4]
push dword [ebp - 0xbde0]
push esi
push dword [ebp - 0xbda8]
push eax
lea eax, [ebp - 0xbd76]
push eax
mov eax, dword [ebp + 8]
push 0
push dword [ebp - 0xbde4]
call fcn_fffbf005  ; call 0xfffbf005
inc byte [ebp - 0xbd94]
add esp, 0x30

loc_fffb610c:  ; not directly referenced
inc byte [ebp - 0xbd8c]
mov dl, byte [ebp - 0xbdca]
cmp byte [ebp - 0xbd8c], dl
jne loc_fffb5fc4  ; jne 0xfffb5fc4
inc dword [ebp - 0xbda4]

loc_fffb612a:  ; not directly referenced
mov ecx, dword [ebp - 0xbdd4]
cmp dword [ebp - 0xbda4], ecx
jge short loc_fffb6179  ; jge 0xfffb6179
movzx ecx, byte [ebp - 0xbdac]
mov al, byte [ebp - 0xbda4]
mov byte [ebp - 0xbdb4], al
dec eax
mov dl, byte [ebp - 0xbdb4]
mov byte [ebp - 0xbd8c], al
add edx, 2
mov dword [ebp - 0xbde0], ecx
movzx eax, byte [ebp - 0xbd98]
mov byte [ebp - 0xbdca], dl
mov dword [ebp - 0xbde4], eax
jmp near loc_fffb5fc4  ; jmp 0xfffb5fc4

loc_fffb6179:  ; not directly referenced
add dword [ebp - 0xbda8], 0x10
cmp dword [ebp - 0xbda8], 0x10
jne loc_fffb5fa5  ; jne 0xfffb5fa5
mov edx, edi
xor ebx, ebx
movzx edi, dl
movzx esi, byte [ebp - 0xbd94]
mov dword [ebp - 0xbda4], edi
mov dword [ebp - 0xbda8], esi

loc_fffb61a7:  ; not directly referenced
mov ecx, dword [ebp - 0xbd90]
mov byte [ebp + ebx - 0xbd83], 0
bt ecx, ebx
jae loc_fffb6325  ; jae 0xfffb6325
mov al, byte [ebp - 0xb273]
mov byte [ebp - 0xbdb0], 0
mov byte [ebp - 0xbd8c], al
jmp short loc_fffb61f7  ; jmp 0xfffb61f7

loc_fffb61d3:  ; not directly referenced
imul edx, eax, 0x46
mov ecx, dword [ebp - 0xbd98]
mov di, word [esi + eax*4 + 0x52a]
inc eax
mov word [ecx + edx], di

loc_fffb61e9:  ; not directly referenced
cmp byte [ebp - 0xbd8c], al
ja short loc_fffb61d3  ; ja 0xfffb61d3
inc byte [ebp - 0xbdb0]

loc_fffb61f7:  ; not directly referenced
mov al, byte [ebp - 0xbd94]
cmp byte [ebp - 0xbdb0], al
je short loc_fffb622c  ; je 0xfffb622c
movzx eax, byte [ebp - 0xbdb0]
imul ecx, eax, 0x29f
lea eax, [ebp + eax*2 - 0xbd52]
add ecx, ebx
mov dword [ebp - 0xbd98], eax
xor eax, eax
lea esi, [ebp + ecx*2 - 0xb792]
jmp short loc_fffb61e9  ; jmp 0xfffb61e9

loc_fffb622c:  ; not directly referenced
push 0
movzx eax, byte [ebp - 0xb273]
lea ecx, [ebx*4]
push eax
push dword [ebp - 0xbd9c]
lea eax, [ebp - 0xb272]
mov esi, dword [ebp - 0xbda4]
push eax
push dword [ebp - 0xbda8]
sar esi, cl
lea edi, [ebp - 0xb792]
push 0x23
mov ecx, esi
lea esi, [ebp - 0xbd52]
push esi
mov edx, ebx
mov eax, dword [ebp + 8]
push edi
call fcn_fffc0642  ; call 0xfffc0642
add esp, 0x1c
lea eax, [ebp - 0xbd5c]
push 0
mov ecx, esi
lea edx, [ebp - 0xbbf4]
push eax
movsx eax, byte [ebp - 0xbd94]
push 1
push 1
push dword [ebp - 0xbd9c]
push eax
mov eax, dword [ebp + 8]
push 0x23
call fcn_fffbfa8e  ; call 0xfffbfa8e
movsx di, byte [ebp - 0xbbf2]
add edi, dword [ebp - 0xbbf4]
add esp, 0x18
movsx edi, di
mov cl, bl
imul esi, edi, 0x53e
imul edi, edi, 0x29f
mov edx, 1
push 0
add edi, ebx
lea eax, [ebp - 0xb792]
shl edx, cl
add eax, esi
push 0
and edx, 0xff
mov ecx, eax
mov eax, dword [ebp + 8]
call fcn_fffc03b8  ; call 0xfffc03b8
mov al, byte [ebp + edi*2 - 0xb792]
add esp, 0x10
mov byte [ebp + ebx*2 - 0xbd72], al
mov al, byte [ebp + edi*2 - 0xb791]
mov byte [ebp + ebx*2 - 0xbd71], al
lea eax, [ebp + esi - 0xb792]
mov dl, byte [eax + 8]
mov eax, dword [eax + 9]
mov byte [ebp + ebx - 0xbd83], dl
mov dword [ebp + ebx*4 - 0xbd64], eax

loc_fffb6325:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffb61a7  ; jne 0xfffb61a7
cmp dword [ebp - 0xbddc], 0
je loc_fffb67cc  ; je 0xfffb67cc
cmp dword [ebp - 0xbdd0], 0
mov al, byte [ebp - 0xbd83]
mov esi, 1
je short loc_fffb6357  ; je 0xfffb6357

loc_fffb6350:  ; not directly referenced
inc esi
add al, byte [ebp - 0xbd82]

loc_fffb6357:  ; not directly referenced
movsx eax, al
mov edx, esi
movzx ecx, dl
cdq
idiv ecx
mov byte [ebp - 0xbd8c], al
jmp short loc_fffb6373  ; jmp 0xfffb6373

loc_fffb636a:  ; not directly referenced
xor esi, esi
mov byte [ebp - 0xbd8c], 0

loc_fffb6373:  ; not directly referenced
sub esp, 0xc
xor edx, edx
push 1
movzx ecx, byte [ebp - 0xbd8c]
mov eax, dword [ebp + 8]
call fcn_fffb3889  ; call 0xfffb3889
mov ecx, esi
add esp, 0x10
xor ebx, ebx
cmp cl, 2
mov dword [ebp - 0xbd94], eax
je short loc_fffb63f1  ; je 0xfffb63f1

loc_fffb639b:  ; not directly referenced
push edi
mov esi, dword [ebp + 8]
mov ecx, dword [ebp - 0xbd90]
push 0
add esi, 0x1774
mov eax, dword [ebp + 8]
push 0
mov edx, esi
mov dword [ebp - 0xbd98], esi
push 0
call fcn_fffc32d9  ; call 0xfffc32d9
pop eax
pop edx
mov ecx, dword [ebp - 0xbd90]
mov edx, esi
push 0
mov eax, dword [ebp + 8]
push 0xf
push 0
push 0
push 0
push 1
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20
cmp dword [ebp - 0xbdd8], 2
jne loc_fffb64ae  ; jne 0xfffb64ae
jmp short loc_fffb6467  ; jmp 0xfffb6467

loc_fffb63f1:  ; not directly referenced
mov ecx, dword [ebp - 0xbd90]
bt ecx, ebx
jb short loc_fffb6404  ; jb 0xfffb6404

loc_fffb63fc:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffb63f1  ; jne 0xfffb63f1
jmp short loc_fffb639b  ; jmp 0xfffb639b

loc_fffb6404:  ; not directly referenced
mov eax, dword [ebp - 0xbd94]
xor esi, esi
sub dword [ebp + ebx*4 - 0xbd64], eax
imul edi, ebx, 0x1347
jmp short loc_fffb6458  ; jmp 0xfffb6458

loc_fffb641b:  ; not directly referenced
mov ecx, esi
inc esi
movzx edx, cl
mov ecx, dword [ebp + 8]
lea eax, [edi + edx*4 + 0x110]
push 1
mov eax, dword [ecx + eax + 0x2989]
mov ecx, 0xf
shr eax, 0xc
and eax, 0x1f
add eax, dword [ebp + ebx*4 - 0xbd64]
cwde
push eax
mov eax, dword [ebp + 8]
push 1
push edx
mov edx, ebx
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x10

loc_fffb6458:  ; not directly referenced
mov edx, dword [ebp + 8]
mov eax, esi
cmp al, byte [edx + 0x1755]
jb short loc_fffb641b  ; jb 0xfffb641b
jmp short loc_fffb63fc  ; jmp 0xfffb63fc

loc_fffb6467:  ; not directly referenced
mov eax, dword [ebp + 8]
sub esp, 0xc
xor ecx, ecx
movzx edx, byte [eax + 0x176b]
push 0
call fcn_fffbf82d  ; call 0xfffbf82d
pop ecx
push dword [ebp + 8]
call fcn_fffbb819  ; call 0xfffbb819
mov eax, dword [ebp + 8]
mov edx, dword [ebp - 0xbd98]
pop ebx
pop esi
movzx ecx, byte [eax + 0x176b]
push 0
push 0xf
push 0
push 0
push 0
push 2
call fcn_fffb0d66  ; call 0xfffb0d66
jmp near loc_fffb67e2  ; jmp 0xfffb67e2

loc_fffb64ae:  ; not directly referenced
mov ecx, dword [ebp + 8]
mov al, 1
mov dl, byte [ecx + 0x16bd]
test dl, dl
cmovne edx, eax
cmp dword [ebp - 0xbda0], 0
mov edi, edx
je short loc_fffb64d3  ; je 0xfffb64d3
cmp dword [ebp - 0xbdb8], 0
cmove edi, eax

loc_fffb64d3:  ; not directly referenced
lea esi, [ebp - 0xbd7a]
mov dword [ebp - 0xbd94], esi
movsx esi, byte [ebp - 0xbd8c]
mov dword [ebp - 0xbd90], 0
mov dword [ebp - 0xbdb4], esi

loc_fffb64f6:  ; not directly referenced
mov edx, dword [ebp + 8]
mov ecx, dword [ebp - 0xbd90]
add ecx, ecx
mov dword [ebp - 0xbd8c], 3
shl dword [ebp - 0xbd8c], cl
mov al, byte [ebp - 0xbd8c]
test byte [edx + 0x176a], al
jne short loc_fffb653b  ; jne 0xfffb653b

loc_fffb651f:  ; not directly referenced
inc dword [ebp - 0xbd90]
inc dword [ebp - 0xbd94]
cmp dword [ebp - 0xbd90], 2
jne short loc_fffb64f6  ; jne 0xfffb64f6
xor ebx, ebx
jmp near loc_fffb6782  ; jmp 0xfffb6782

loc_fffb653b:  ; not directly referenced
test byte [ebp - 0xbd85], al
mov esi, 2
setne dl
mov cl, byte [ebp - 0xbdc9]
or esi, edx
test byte [ebp - 0xbd84], al
cmove esi, edx
xor ebx, ebx
and esi, ecx
mov eax, esi
movzx eax, al
mov dword [ebp - 0xbda0], eax

loc_fffb6569:  ; not directly referenced
mov al, bl
mov byte [ebp - 0xbd9c], bl
add eax, edi
cmp al, 2
jbe short loc_fffb65ab  ; jbe 0xfffb65ab
mov cl, byte [ebp - 0xbd90]
mov eax, 1
xor ebx, ebx
shl eax, cl
and eax, 0xff
mov dword [ebp - 0xbda0], eax
mov eax, esi
movzx esi, al
mov dword [ebp - 0xbdac], esi
movzx esi, byte [ebp - 0xbd9c]
mov dword [ebp - 0xbdb0], esi
jmp short loc_fffb6619  ; jmp 0xfffb6619

loc_fffb65ab:  ; not directly referenced
mov edx, dword [ebp - 0xbd94]
lea ecx, [ebp - 0xb792]
mov byte [edx], al
mov byte [edx + 2], al
push edx
push edx
imul edx, ebx, 0x53e
add edx, ecx
lea ecx, [ebp - 0xbd52]
push ecx
test al, al
mov ecx, dword [ebp - 0xbda0]
sete al
and eax, dword [ebp - 0xbdb8]
push eax
lea eax, [ebp - 0xbd81]
inc ebx
push 0
push 2
push eax
push dword [ebp - 0xbdb4]
lea eax, [ebp - 0xbd7a]
push eax
lea eax, [ebp - 0xbd72]
push eax
movzx eax, byte [ebp - 0xbd8c]
push 1
push eax
mov eax, dword [ebp + 8]
call fcn_fffbf005  ; call 0xfffbf005
add esp, 0x30
jmp near loc_fffb6569  ; jmp 0xfffb6569

loc_fffb6619:  ; not directly referenced
mov esi, dword [ebp - 0xbdac]
bt esi, ebx
jae loc_fffb6773  ; jae 0xfffb6773
mov al, byte [ebp - 0xb273]
mov byte [ebp - 0xbda8], 0
mov byte [ebp - 0xbd8c], al
jmp short loc_fffb6667  ; jmp 0xfffb6667

loc_fffb663d:  ; not directly referenced
imul edx, eax, 0x46
mov ecx, dword [ebp - 0xbdc0]
mov esi, dword [ebp - 0xbdbc]
mov cx, word [ecx + eax*4 + 0x52a]
inc eax
mov word [esi + edx], cx

loc_fffb6659:  ; not directly referenced
cmp byte [ebp - 0xbd8c], al
ja short loc_fffb663d  ; ja 0xfffb663d
inc byte [ebp - 0xbda8]

loc_fffb6667:  ; not directly referenced
mov al, byte [ebp - 0xbd9c]
cmp byte [ebp - 0xbda8], al
je short loc_fffb66a2  ; je 0xfffb66a2
movzx eax, byte [ebp - 0xbda8]
imul ecx, eax, 0x29f
lea eax, [ebp + eax*2 - 0xbd52]
add ecx, ebx
mov dword [ebp - 0xbdbc], eax
xor eax, eax
lea ecx, [ebp + ecx*2 - 0xb792]
mov dword [ebp - 0xbdc0], ecx
jmp short loc_fffb6659  ; jmp 0xfffb6659

loc_fffb66a2:  ; not directly referenced
push 0
movzx eax, byte [ebp - 0xb273]
lea esi, [ebp - 0xbd69]
push eax
lea eax, [ebp - 0xb272]
lea edx, [ebp - 0xbd52]
push esi
lea ecx, [ebp - 0xb792]
push eax
push dword [ebp - 0xbdb0]
mov eax, dword [ebp + 8]
push 0x23
push edx
mov edx, ebx
push ecx
mov ecx, dword [ebp - 0xbda0]
call fcn_fffc0642  ; call 0xfffc0642
add esp, 0x1c
lea eax, [ebp - 0xbd5c]
push 0
lea ecx, [ebp - 0xbd52]
lea edx, [ebp - 0xbbf4]
push eax
movsx eax, byte [ebp - 0xbd9c]
push 1
push 1
push esi
push eax
mov eax, dword [ebp + 8]
push 0x23
call fcn_fffbfa8e  ; call 0xfffbfa8e
movsx si, byte [ebp - 0xbbf2]
add esi, dword [ebp - 0xbbf4]
add esp, 0x18
movsx esi, si
mov cl, bl
imul eax, esi, 0x53e
imul esi, esi, 0x29f
lea edx, [ebp - 0xb792]
push 0
add eax, edx
add esi, ebx
mov edx, 1
shl edx, cl
mov ecx, eax
push 1
mov eax, dword [ebp + 8]
and edx, 0xff
call fcn_fffc03b8  ; call 0xfffc03b8
mov ecx, dword [ebp - 0xbd90]
lea eax, [ebp + esi*2 - 0x18]
mov esi, dword [ebp - 0xbd94]
add esp, 0x10
mov al, byte [ecx + eax - 0xb776]
mov byte [esi + ebx*2], al

loc_fffb6773:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffb6619  ; jne 0xfffb6619
jmp near loc_fffb651f  ; jmp 0xfffb651f

loc_fffb6782:  ; not directly referenced
mov edi, dword [ebp + 8]
movzx eax, byte [edi + 0x176b]
bt eax, ebx
jb short loc_fffb67bb  ; jb 0xfffb67bb

loc_fffb6791:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffb6782  ; jne 0xfffb6782
jmp near loc_fffb6467  ; jmp 0xfffb6467

loc_fffb679c:  ; not directly referenced
push 1
movzx ecx, byte [ebp + ebx - 0xbd85]
mov edx, ebx
push 0xc
inc esi
push 4
push eax
mov eax, dword [ebp + 8]
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x10
jmp short loc_fffb67bd  ; jmp 0xfffb67bd

loc_fffb67bb:  ; not directly referenced
xor esi, esi

loc_fffb67bd:  ; not directly referenced
mov edx, esi
movzx eax, dl
cmp eax, dword [ebp - 0xbdc8]
jb short loc_fffb679c  ; jb 0xfffb679c
jmp short loc_fffb6791  ; jmp 0xfffb6791

loc_fffb67cc:  ; not directly referenced
cmp dword [ebp - 0xbdd0], 0
je loc_fffb636a  ; je 0xfffb636a
xor eax, eax
xor esi, esi
jmp near loc_fffb6350  ; jmp 0xfffb6350

loc_fffb67e2:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb67ea:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
mov eax, edx
imul eax, eax, 0x1347
mov dl, cl
push ebx
lea esp, [esp - 0x2c]
mov cl, byte [ebp + 8]
mov bl, byte [ebp + 0x14]
mov byte [ebp - 0x26], cl
lea eax, [esi + eax + 0x297c]
mov dword [ebp - 0x24], eax
mov eax, dword [esi + 0x1021]
mov cl, byte [ebp + 0xc]
mov byte [ebp - 0x25], bl
mov ebx, dword [esi + 0x1749]
mov dword [ebp - 0x34], ebx
xor ebx, ebx
cmp cl, 2
mov edi, dword [ebp + 0x10]
mov eax, dword [esi + eax*4 + 0x172c]
mov byte [ebp - 0x14], 0x21
mov byte [ebp - 0x13], 0x42
mov byte [ebp - 0x12], 0x58
mov byte [ebp - 0x11], 0x64
mov byte [ebp - 0x10], 0x85
mov byte [ebp - 0xf], 0xa6
mov byte [ebp - 0xe], 0xc8
mov byte [ebp - 0xd], 0xe9
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x2c], eax
ja loc_fffb6936  ; ja 0xfffb6936
mov eax, dword [ebp - 0x24]
cmp cl, 1
movzx ebx, byte [ebp - 0x26]
mov ebx, dword [eax + ebx*4 + 0x11d]
mov eax, dword [esi + 0x103f]
jne short loc_fffb688e  ; jne 0xfffb688e
mov eax, dword [eax + 0x3a04]
mov dword [ebp - 0x30], eax
jmp near loc_fffb693f  ; jmp 0xfffb693f

loc_fffb688e:  ; not directly referenced
mov eax, dword [eax + 0x3a00]
test cl, cl
mov dword [ebp - 0x38], eax
jne loc_fffb6936  ; jne 0xfffb6936
mov eax, dword [esi + 0x1756]
shr eax, 0xb
mov dl, al
and edx, 0xf
test al, 8
lea ecx, [edx - 0x10]
cmove ecx, edx
cmp dword [ebp + 0x18], 0
je short loc_fffb68d4  ; je 0xfffb68d4
mov al, bl
mov dl, byte [ebp - 0x38]
and eax, 0x3f
and edx, 0x3f
and bl, 0x20
mov byte [ebp - 0x25], dl
lea edx, [eax - 0x40]
cmovne eax, edx
mov edi, eax

loc_fffb68d4:  ; not directly referenced
cmp dword [esi + 0x1005], HASWELL_FAMILY_ULT
mov eax, 0x4b
mov edx, 0x78
cmove eax, edx
cmp cl, 0xe0
je short loc_fffb6905  ; je 0xfffb6905
movsx ecx, cl
mov ebx, 0x20
sub ebx, ecx
add ecx, 0x20
imul eax, ebx
cdq
idiv ecx
jmp short loc_fffb6907  ; jmp 0xfffb6907

loc_fffb6905:  ; not directly referenced
xor eax, eax

loc_fffb6907:  ; not directly referenced
mov ecx, 3
xor edx, edx
div cx
movsx esi, byte [ebp - 0x25]
mov ecx, edi
lea edx, [esi + esi*2]
add edx, 0x30
imul eax, edx
movsx edx, cl
movzx eax, ax
add esi, edx
cdq
lea esi, [esi + esi*2]
add esi, 0x30
idiv esi
jmp near loc_fffb6b9c  ; jmp 0xfffb6b9c

loc_fffb6936:  ; not directly referenced
cmp cl, 1
jne loc_fffb69d7  ; jne 0xfffb69d7

loc_fffb693f:  ; not directly referenced
mov eax, dword [esi + 0x1756]
mov ecx, eax
shr eax, 0xf
shr ecx, 3
mov dword [ebp - 0x24], eax
mov al, byte [ebp - 0x24]
and ecx, 1
and eax, 0x1f
test byte [ebp - 0x24], 0x10
lea edx, [eax - 0x20]
cmove edx, eax
cmp dword [ebp + 0x18], 0
je short loc_fffb6987  ; je 0xfffb6987
mov edi, ebx
mov al, byte [ebp - 0x30]
shr edi, 0xc
and eax, 0x3f
mov byte [ebp - 0x25], al
mov eax, edi
and eax, 0x1f
and edi, 0x10
lea ebx, [eax - 0x20]
cmovne eax, ebx
mov edi, eax

loc_fffb6987:  ; not directly referenced
cmp dword [esi + 0x1005], HASWELL_FAMILY_ULT
mov eax, 0x32
movsx edx, dl
mov ebx, 0x64
movsx esi, byte [ebp - 0x25]
cmovne ebx, eax
movzx eax, bl
add edx, 0x30
imul eax, eax, 0x60
mov dword [ebp - 0x20], edx
cdq
xor ecx, 1
idiv dword [ebp - 0x20]
movzx ecx, cl
shl ecx, 4
lea edx, [ecx + esi]
sub eax, ebx
mov ebx, edi
imul eax, edx
movsx edx, bl
movzx eax, ax
add esi, edx
add ecx, esi
jmp near loc_fffb6abd  ; jmp 0xfffb6abd

loc_fffb69d7:  ; not directly referenced
cmp cl, 2
jne short loc_fffb69fe  ; jne 0xfffb69fe
cmp dword [ebp + 0x18], 0
je short loc_fffb69f1  ; je 0xfffb69f1
mov edi, ebx
shr edi, 0x1b
mov eax, edi
test al, 0x10
lea esi, [eax - 0x20]
cmovne edi, esi

loc_fffb69f1:  ; not directly referenced
mov edx, edi
movsx eax, dl
add eax, 0x32
jmp near loc_fffb6b9c  ; jmp 0xfffb6b9c

loc_fffb69fe:  ; not directly referenced
cmp cl, 4
jne short loc_fffb6a0d  ; jne 0xfffb6a0d
mov ecx, edi
movsx eax, cl
jmp near loc_fffb6b9c  ; jmp 0xfffb6b9c

loc_fffb6a0d:  ; not directly referenced
cmp cl, 5
jne short loc_fffb6a26  ; jne 0xfffb6a26
mov eax, edi
cbw
idiv cl
movsx eax, al
lea eax, [eax + eax*4]
add eax, 0x64
jmp near loc_fffb6b9c  ; jmp 0xfffb6b9c

loc_fffb6a26:  ; not directly referenced
xor eax, eax
cmp cl, 9
jne loc_fffb6ac5  ; jne 0xfffb6ac5
xor ecx, ecx
cmp dword [ebp - 0x34], 2
sete cl
cmp dword [ebp + 0x18], 0
je short loc_fffb6a8c  ; je 0xfffb6a8c
cmp dl, 3
ja loc_fffb6b9c  ; ja 0xfffb6b9c
mov eax, edx
shr dl, 1
and eax, 1
movzx edx, dl
imul eax, eax, 0xa
imul edx, edx, 0xfb
add edx, eax
test ecx, ecx
je short loc_fffb6a75  ; je 0xfffb6a75
mov ebx, dword [ebp - 0x24]
mov si, word [ebx + edx + 0x123e]
lea edi, [esi - 1]
and edi, 0xf
jmp short loc_fffb6a90  ; jmp 0xfffb6a90

loc_fffb6a75:  ; not directly referenced
mov ecx, dword [ebp - 0x24]
mov si, word [ecx + edx + 0x123a]
shr si, 1
mov ebx, esi
and ebx, 1
mov edi, ebx
jmp short loc_fffb6ab0  ; jmp 0xfffb6ab0

loc_fffb6a8c:  ; not directly referenced
test ecx, ecx
je short loc_fffb6aa6  ; je 0xfffb6aa6

loc_fffb6a90:  ; not directly referenced
mov edx, edi
mov al, 6
cmp dl, 6
mov ecx, 7
cmovle eax, edi
movsx eax, al
sub ecx, eax
jmp short loc_fffb6ab8  ; jmp 0xfffb6ab8

loc_fffb6aa6:  ; not directly referenced
mov ecx, edi
mov al, 0xfb
cmp cl, 0xfa
cmovle edi, eax

loc_fffb6ab0:  ; not directly referenced
mov ebx, edi
movsx ecx, bl
add ecx, 6

loc_fffb6ab8:  ; not directly referenced
mov eax, 0xf0

loc_fffb6abd:  ; not directly referenced
cdq
idiv ecx
jmp near loc_fffb6b9c  ; jmp 0xfffb6b9c

loc_fffb6ac5:  ; not directly referenced
cmp cl, 6
jne loc_fffb6b9c  ; jne 0xfffb6b9c
mov eax, dword [esi + 0x103f]
cmp dword [ebp - 0x2c], 0x546
seta bl
movzx ebx, bl
mov ecx, dword [eax + 0x3918]
mov al, byte [esi + 0x16d6]
and ecx, 3
cmp dword [esi + 0x16d2], 1
movzx ecx, cl
sbb edx, edx
and edx, 0xfffffffe
add edx, 6
sub eax, edx
mov dl, 4
cmp al, 4
cmovle edx, eax
xor eax, eax
test dl, dl
cmovns eax, edx
cmp dword [esi + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffb6b37  ; jne 0xfffb6b37
cmp al, 2
mov dl, 2
lea ebx, [ebx + ebx*2]
cmovle edx, eax
movsx edx, dl
add edx, ebx
movzx ebx, byte [ecx + edx*4 + ref_fffc9f3c]  ; movzx ebx, byte [ecx + edx*4 - 0x360c4]
jmp short loc_fffb6b47  ; jmp 0xfffb6b47

loc_fffb6b37:  ; not directly referenced
movsx eax, al
lea ebx, [ebx + ebx*4]
add eax, ebx
movzx ebx, byte [ecx + eax*4 + ref_fffc9f14]  ; movzx ebx, byte [ecx + eax*4 - 0x360ec]

loc_fffb6b47:  ; not directly referenced
imul eax, dword [ebp - 0x2c], 0x4b0
mov ecx, 0x3e8
xor edx, edx
div ecx
xor edx, edx
add eax, 0x520
div ecx
cmp dword [ebp + 0x18], 0
mov ecx, eax
je short loc_fffb6b81  ; je 0xfffb6b81
movzx eax, byte [ebp - 0x26]
mov edx, dword [ebp - 0x24]
movzx edi, byte [edx + eax*4 + 0x146]
mov eax, edi
shr al, 2
mov edi, eax
and edi, 7

loc_fffb6b81:  ; not directly referenced
mov edx, edi
movsx esi, dl
xor edx, edx
movzx eax, byte [ebp + esi - 0x14]
imul eax, ecx
movzx ecx, byte [ebp + ebx - 0x14]
div ecx
and eax, 0xffff

loc_fffb6b9c:  ; not directly referenced
lea esp, [esp + 0x2c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb6ba5:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
lea eax, [eax + 0x16be]
push esi
push ebx
lea esp, [esp - 0x6c]
mov byte [ebp - 0x1e], 0
mov byte [ebp - 0x1d], 0x3c
mov byte [ebp - 0x1c], 0x78
mov byte [ebp - 0x1b], 0x28
mov byte [ebp - 0x1a], 0x14
mov byte [ebp - 0x19], 0x1e
mov byte [ebp - 0x29], 0
mov byte [ebp - 0x28], 0x3c
mov byte [ebp - 0x27], 0x78
mov byte [ebp - 0x26], 0
mov byte [ebp - 0x25], 0x22
mov byte [ebp - 0x24], 0x28
mov byte [ebp - 0x23], 0x30
mov byte [ebp - 0x22], 0
mov byte [ebp - 0x21], 0
mov byte [ebp - 0x20], 0x78
mov byte [ebp - 0x1f], 0xf0
mov dword [ebp - 0x5c], edx
mov dword [ebp - 0x4c], 0
mov dword [ebp - 0x58], 0
mov dword [ebp - 0x40], 0
mov byte [ebp - 0x47], 0
mov dword [ebp - 0x70], eax
jmp near loc_fffb6e4c  ; jmp 0xfffb6e4c

loc_fffb6c1f:  ; not directly referenced
mov ecx, dword [ebp - 0x64]
mov dl, byte [ebp - 0x44]
mov eax, 1
mov ecx, dword [ecx + 0xf5]
mov dword [ebp - 0x6c], ecx
mov cl, dl
shl eax, cl
mov ecx, dword [ebp - 0x68]
test byte [edi + ecx + 0x3acb], al
je loc_fffb6e2c  ; je 0xfffb6e2c
cmp dword [edi + 0x1749], 2
jne short loc_fffb6c88  ; jne 0xfffb6c88
cmp dl, 1
ja loc_fffb6ee7  ; ja 0xfffb6ee7
imul eax, dword [ebp - 0x44], 0xa
add eax, dword [ebp - 0x64]
mov word [ebp - 0x3c], 0x3fff
mov dx, word [eax + 0x123e]
mov ax, word [eax + 0x1240]
and edx, 3
and eax, 3
movzx esi, byte [ebp + eax - 0x22]
mov dl, byte [ebp + edx - 0x26]
mov byte [ebp - 0x48], dl
jmp short loc_fffb6d00  ; jmp 0xfffb6d00

loc_fffb6c88:  ; not directly referenced
shr dl, 1
mov eax, dword [ebp - 0x44]
movzx edx, dl
and eax, 1
imul edx, edx, 0xfb
imul eax, eax, 0xa
add eax, edx
add eax, dword [ebp - 0x64]
mov cx, word [eax + 0x123a]
mov si, word [eax + 0x123c]
shr si, 9
mov eax, ecx
shr ax, 1
and esi, 3
and eax, 1
add eax, 6
mov dword [ebp - 0x3c], eax
mov eax, 0xf0
cdq
idiv dword [ebp - 0x3c]
mov edx, ecx
shr dx, 6
and edx, 1
add edx, edx
movzx esi, byte [ebp + esi - 0x29]
mov byte [ebp - 0x48], al
mov eax, ecx
shr ax, 9
shr cx, 2
and eax, 1
shl eax, 2
and ecx, 1
or eax, edx
or eax, ecx
movzx eax, byte [ebp + eax - 0x1e]
mov word [ebp - 0x3c], ax

loc_fffb6d00:  ; not directly referenced
cmp dword [ebp - 0x50], 0
je short loc_fffb6d6c  ; je 0xfffb6d6c
jmp near loc_fffb6da4  ; jmp 0xfffb6da4

loc_fffb6d0b:  ; not directly referenced
push 1
movzx eax, byte [ebp - 0x50]
xor ecx, ecx
push 0
mov dword [ebp - 0x60], eax
mov edx, dword [ebp - 0x4c]
push 0
push 0
push eax
mov eax, edi
call fcn_fffb67ea  ; call 0xfffb67ea
push 1
add word [ebp - 0x54], ax
xor ecx, ecx
push 0
mov edx, dword [ebp - 0x4c]
mov eax, edi
push 0
push 1
push dword [ebp - 0x60]
call fcn_fffb67ea  ; call 0xfffb67ea
add esp, 0x28
add word [ebp - 0x52], ax
push 1
xor ecx, ecx
mov edx, dword [ebp - 0x4c]
push 0
mov eax, edi
push 0
push 6
push dword [ebp - 0x60]
call fcn_fffb67ea  ; call 0xfffb67ea
inc byte [ebp - 0x50]
add word [ebp - 0x46], ax
add esp, 0x14
jmp short loc_fffb6d70  ; jmp 0xfffb6d70

loc_fffb6d6c:  ; not directly referenced
mov byte [ebp - 0x50], 0

loc_fffb6d70:  ; not directly referenced
movzx ecx, byte [edi + 0x1755]
cmp byte [ebp - 0x50], cl
jb short loc_fffb6d0b  ; jb 0xfffb6d0b
movzx eax, word [ebp - 0x54]
mov dword [ebp - 0x50], 1
cdq
idiv ecx
mov word [ebp - 0x54], ax
movzx eax, word [ebp - 0x52]
cdq
idiv ecx
mov word [ebp - 0x52], ax
movzx eax, word [ebp - 0x46]
cdq
idiv ecx
mov word [ebp - 0x46], ax

loc_fffb6da4:  ; not directly referenced
cmp dword [ebp - 0x6c], 1
jne short loc_fffb6dba  ; jne 0xfffb6dba
test si, si
cmove si, word [ebp - 0x3c]
mov word [ebp - 0x3c], 0x3fff
jmp short loc_fffb6dcd  ; jmp 0xfffb6dcd

loc_fffb6dba:  ; not directly referenced
cmp word [ebp - 0x3c], 0
mov eax, 0x3fff
cmovne ax, word [ebp - 0x3c]
mov word [ebp - 0x3c], ax

loc_fffb6dcd:  ; not directly referenced
movzx eax, word [ebp - 0x3c]
test si, si
movzx ecx, word [ebp - 0x54]
cmove si, word [ebp - 0x3c]
movzx esi, si
push esi
imul edx, dword [ebp - 0x44], 0x26
add edx, dword [ebp - 0x5c]
push eax
movzx eax, word [ebp - 0x52]
push eax
movzx eax, byte [ebp - 0x48]
push eax
mov eax, edi
call fcn_fffb31ae  ; call 0xfffb31ae
mov dx, word [ebp - 0x46]
mov eax, dword [ebx + 4]
add word [ebx + 0x20], dx
add word [ebx + 0x24], dx
mov ecx, dword [ebx + 0x14]
mov edx, dword [ebx]
add dword [ebp - 0x40], ecx
inc byte [ebp - 0x47]
add dword [ebp - 0x40], eax
add esp, 0x10
mov eax, dword [ebx + 0x10]
add dword [ebp - 0x40], edx
add eax, dword [ebx + 8]
add eax, dword [ebx + 0x18]
add eax, dword [ebx + 0xc]
add dword [ebp - 0x58], eax

loc_fffb6e2c:  ; not directly referenced
inc dword [ebp - 0x44]
add ebx, 0x26
cmp dword [ebp - 0x44], 4
jne loc_fffb6c1f  ; jne 0xfffb6c1f
inc dword [ebp - 0x4c]
add dword [ebp - 0x5c], 0x98
cmp dword [ebp - 0x4c], 2
je short loc_fffb6e8b  ; je 0xfffb6e8b

loc_fffb6e4c:  ; not directly referenced
imul ecx, dword [ebp - 0x4c], 0x1347
mov eax, dword [ebp - 0x70]
mov dword [ebp - 0x68], ecx
mov ebx, dword [ebp - 0x5c]
mov dword [ebp - 0x44], 0
mov word [ebp - 0x46], 0
mov word [ebp - 0x54], 0
mov word [ebp - 0x52], 0
mov dword [ebp - 0x50], 0
lea eax, [eax + ecx + 0x12be]
mov dword [ebp - 0x64], eax
jmp near loc_fffb6c1f  ; jmp 0xfffb6c1f

loc_fffb6e8b:  ; not directly referenced
cmp byte [ebp - 0x47], 0
mov al, 1
movzx ebx, word [ebp - 0x46]
mov dl, byte [ebp - 0x47]
cmove edx, eax
mov eax, dword [ebp - 0x40]
movzx ecx, dl
xor edx, edx
div ecx
xor edx, edx
add ebx, eax
mov eax, dword [ebp - 0x58]
div ecx
cmp dword [edi + 0x500a], 0
jne short loc_fffb6ed0  ; jne 0xfffb6ed0
mov word [edi + 0x500e], bx
mov word [edi + 0x5010], ax
mov word [edi + 0x5012], 0
jmp short loc_fffb6ee7  ; jmp 0xfffb6ee7

loc_fffb6ed0:  ; not directly referenced
mov word [edi + 0x5014], bx
mov word [edi + 0x5016], ax
mov word [edi + 0x5018], 0

loc_fffb6ee7:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffb6eef:
db 0x00

fcn_fffb6ef0:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, ecx
push esi
mov esi, eax
mov eax, ref_fffcbc04  ; mov eax, 0xfffcbc04
push ebx
xor ebx, ebx

loc_fffb6f01:  ; not directly referenced
cmp edx, dword [eax]
ja short loc_fffb6f27  ; ja 0xfffb6f27
cmp edx, dword [eax + 9]
jbe short loc_fffb6f27  ; jbe 0xfffb6f27
lea eax, [ebx + ebx*8]
mov eax, dword [eax + ref_fffcbc08]  ; mov eax, dword [eax - 0x343f8]

loc_fffb6f13:  ; not directly referenced
mov ecx, esi
mov edx, 1
shl edx, cl
lea ecx, [ebx + ebx*8]
add ecx, ref_fffcbc04  ; add ecx, 0xfffcbc04
jmp short loc_fffb6f43  ; jmp 0xfffb6f43

loc_fffb6f27:  ; not directly referenced
inc ebx
add eax, 9
cmp ebx, 0x10
jne short loc_fffb6f01  ; jne 0xfffb6f01
xor eax, eax
jmp short loc_fffb6f13  ; jmp 0xfffb6f13

loc_fffb6f34:  ; not directly referenced
movzx esi, byte [ecx + 8]
sub ecx, 9
test esi, edx
jne short loc_fffb6f47  ; jne 0xfffb6f47
dec ebx
mov eax, dword [ecx + 4]

loc_fffb6f43:  ; not directly referenced
test ebx, ebx
jne short loc_fffb6f34  ; jne 0xfffb6f34

loc_fffb6f47:  ; not directly referenced
test edi, edi
je short loc_fffb6f4d  ; je 0xfffb6f4d
mov dword [edi], ebx

loc_fffb6f4d:  ; not directly referenced
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb6f52:  ; not directly referenced
push ebp
mov ebp, esp
push edi
xor edi, edi
push esi
xor esi, esi
push ebx
lea esp, [esp - 0x84]
mov ebx, dword [ebp + 8]
mov dword [ebp - 0x54], 0
mov dword [ebp - 0x4c], 0
mov dword [ebp - 0x60], 0
mov dword [ebp - 0x5c], 0
mov dword [ebp - 0x68], 0
mov byte [ebp - 0x61], 0
lea eax, [ebx + 0x10b7]
lea edx, [ebx + 0x2974]
mov dword [ebp - 0x8c], eax
mov dword [ebp - 0x70], edx

loc_fffb6fa2:  ; not directly referenced
lea eax, [esi - 2]
cmp eax, 1
ja short loc_fffb6fc0  ; ja 0xfffb6fc0
cmp byte [ebx + 0x1746], 0
je loc_fffb73ac  ; je 0xfffb73ac
mov dword [ebp - 0x50], 0
jmp short loc_fffb6fdb  ; jmp 0xfffb6fdb

loc_fffb6fc0:  ; not directly referenced
cmp esi, 1
mov dword [ebp - 0x50], 0
jne short loc_fffb6fdb  ; jne 0xfffb6fdb
xor edx, edx
cmp dword [ebx + 0x1021], 1
sete dl
mov dword [ebp - 0x50], edx

loc_fffb6fdb:  ; not directly referenced
imul edx, esi, 0x2a
imul eax, eax, 0x23
mov dword [ebp - 0x7c], edx
mov dword [ebp + esi*4 - 0x2c], 0xffffffff
lea edx, [esi*8 + 0xb0]
mov dword [ebp + esi*4 - 0x1c], 0
mov dword [ebp - 0x40], 0
mov dword [ebp - 0x84], edx
mov dword [ebp - 0x88], eax

loc_fffb700e:  ; not directly referenced
imul eax, dword [ebp - 0x40], 0x2fa
mov edx, dword [ebp - 0x8c]
mov dword [ebp - 0x44], 0
lea eax, [edx + eax + 5]
mov dword [ebp - 0x78], eax
imul eax, dword [ebp - 0x40], 0x1347
mov edx, dword [ebp - 0x70]
lea eax, [edx + eax + 8]
mov edx, dword [ebp - 0x88]
mov dword [ebp - 0x58], eax
add eax, dword [ebp - 0x84]
mov dword [ebp - 0x48], eax
add edx, 0xb0
mov eax, dword [ebp - 0x58]
add eax, dword [ebp - 0x7c]
mov dword [ebp - 0x74], eax
mov dword [ebp - 0x80], edx

loc_fffb705b:  ; not directly referenced
imul ecx, dword [ebp - 0x44], 0xfb
mov edx, dword [ebp - 0x58]
lea eax, [edx + ecx + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
mov dword [ebp - 0x90], edx
jne loc_fffb71a8  ; jne 0xfffb71a8
imul eax, dword [ebp - 0x44], 0x14f
mov edi, dword [ebp - 0x78]
mov edx, dword [ebp - 0x74]
cmp esi, 1
lea eax, [edi + eax + 8]
mov edi, dword [edx + ecx + 0x1155]
lea edx, [edi - 1]
mov dword [ebp - 0x6c], edx
mov edx, dword [ebp - 0x48]
mov edx, dword [edx]
mov dword [ebp - 0x5c], edx
mov edx, dword [ebp - 0x48]
mov edx, dword [edx + 4]
mov dword [ebp - 0x60], edx
je loc_fffb7142  ; je 0xfffb7142
jb loc_fffb7162  ; jb 0xfffb7162
cmp esi, 3
ja loc_fffb7162  ; ja 0xfffb7162
mov edx, dword [ebp - 0x90]
cmp esi, 2
mov dl, byte [edx + 0xe5]
mov byte [ebp - 0x62], dl
jne short loc_fffb70e6  ; jne 0xfffb70e6
and dl, 1
jne short loc_fffb70f2  ; jne 0xfffb70f2
xor ecx, ecx
jmp near loc_fffb71a4  ; jmp 0xfffb71a4

loc_fffb70e6:  ; not directly referenced
xor ecx, ecx
test byte [ebp - 0x62], 2
je loc_fffb71a4  ; je 0xfffb71a4

loc_fffb70f2:  ; not directly referenced
mov edx, dword [ebp - 0x80]
mov dword [ebp - 0x4c], 0
lea eax, [eax + edx + 0x2d]
movzx edx, byte [eax + 2]
mov dword [ebp - 0x54], edx
mov edx, dword [ebp - 0x90]
cmp byte [edx + 0xe6], 0x13
jne short loc_fffb711d  ; jne 0xfffb711d
movsx edx, byte [eax + 0x1b]
mov dword [ebp - 0x4c], edx

loc_fffb711d:  ; not directly referenced
mov cx, word [eax + 3]
xor eax, eax
and ecx, 0x7fff
test edi, edi
je short loc_fffb7197  ; je 0xfffb7197
mov edx, dword [ebp - 0x60]
mov eax, dword [ebp - 0x5c]
imul edx, dword [ebp - 0x4c]
imul eax, dword [ebp - 0x54]
add eax, dword [ebp - 0x6c]
add eax, edx
jmp short loc_fffb7193  ; jmp 0xfffb7193

loc_fffb7142:  ; not directly referenced
movzx edx, word [eax + 0x12a]
test dx, dx
je short loc_fffb7162  ; je 0xfffb7162
mov eax, dword [ebp - 0x18]
mov byte [ebp - 0x61], 1
cmp edx, eax
cmovb edx, eax
or ecx, 0xffffffff
mov dword [ebp - 0x18], edx
jmp short loc_fffb71a4  ; jmp 0xfffb71a4

loc_fffb7162:  ; not directly referenced
movzx edx, byte [eax + 0x34]
mov cx, word [eax + 0x32]
mov dword [ebp - 0x54], edx
and ecx, 0x7fff
movsx edx, byte [eax + 0x47]
xor eax, eax
test edi, edi
mov dword [ebp - 0x4c], edx
je short loc_fffb7197  ; je 0xfffb7197
mov edx, dword [ebp - 0x5c]
mov eax, dword [ebp - 0x60]
imul edx, dword [ebp - 0x54]
imul eax, dword [ebp - 0x4c]
add eax, edx
add eax, dword [ebp - 0x6c]

loc_fffb7193:  ; not directly referenced
xor edx, edx
div edi

loc_fffb7197:  ; not directly referenced
mov edx, dword [ebp + esi*4 - 0x1c]
cmp eax, edx
cmovb eax, edx
mov dword [ebp + esi*4 - 0x1c], eax

loc_fffb71a4:  ; not directly referenced
and dword [ebp + esi*4 - 0x2c], ecx

loc_fffb71a8:  ; not directly referenced
inc dword [ebp - 0x44]
add dword [ebp - 0x48], 0x20
cmp dword [ebp - 0x44], 2
jne loc_fffb705b  ; jne 0xfffb705b
inc dword [ebp - 0x40]
cmp dword [ebp - 0x40], 2
jne loc_fffb700e  ; jne 0xfffb700e
cmp esi, 1
seta byte [ebp - 0x40]
test edi, edi
sete al
test byte [ebp - 0x40], al
jne loc_fffb73aa  ; jne 0xfffb73aa
mov eax, dword [ebx + 0x16d2]
lea ecx, [ebp - 0x38]
mov edx, edi
mov byte [ebp + esi - 0x30], 0
call fcn_fffb6ef0  ; call 0xfffb6ef0
cmp byte [ebp - 0x40], 0
je short loc_fffb7234  ; je 0xfffb7234
cmp dword [ebx + 0x16d2], 0
jne short loc_fffb7234  ; jne 0xfffb7234
cmp byte [ebx + 0x1747], 0
je short loc_fffb7234  ; je 0xfffb7234
lea ecx, [ebp - 0x34]
mov edx, edi
mov eax, 1
call fcn_fffb6ef0  ; call 0xfffb6ef0
mov eax, dword [ebp - 0x34]
cmp eax, dword [ebp - 0x38]
jle short loc_fffb7234  ; jle 0xfffb7234
cmp dword [ebx + 0x1021], esi
mov dword [ebp - 0x38], eax
jne short loc_fffb7234  ; jne 0xfffb7234
mov dword [ebx + 0x16d2], 1

loc_fffb7234:  ; not directly referenced
mov edx, dword [ebp - 0x60]
mov eax, dword [ebp - 0x5c]
imul edx, dword [ebp - 0x4c]
imul eax, dword [ebp - 0x54]
add eax, edx
imul edx, esi, 0x2a
mov dword [ebp - 0x58], eax
mov dword [ebp - 0x48], edx
jmp near loc_fffb7309  ; jmp 0xfffb7309

loc_fffb7252:  ; not directly referenced
cmp byte [ebp - 0x50], 0
jne short loc_fffb7279  ; jne 0xfffb7279
mov ecx, dword [ebp + esi*4 - 0x2c]
lea edx, [eax - 4]
bt ecx, edx
jae loc_fffb7304  ; jae 0xfffb7304
mov edx, edi
imul edx, eax
cmp edx, 0x1312d00
ja loc_fffb7304  ; ja 0xfffb7304

loc_fffb7279:  ; not directly referenced
cmp esi, dword [ebx + 0x1021]
mov byte [ebp + esi - 0x30], 1
jne short loc_fffb7293  ; jne 0xfffb7293
mov dword [ebx + 0x16ce], edi
mov dword [ebp - 0x68], 1

loc_fffb7293:  ; not directly referenced
mov dword [ebp - 0x40], 0

loc_fffb729a:  ; not directly referenced
imul ecx, dword [ebp - 0x40], 0x1347
mov edx, dword [ebp - 0x70]
lea ecx, [edx + ecx + 8]
cmp dword [ecx + 0x1151], 2
jne short loc_fffb72d9  ; jne 0xfffb72d9
mov edx, dword [ebp - 0x48]
add edx, ecx
mov dword [ebp - 0x6c], edx
add edx, 0x1151
mov dword [ebp - 0x44], edx
mov word [edx + 0xa], ax
mov edx, dword [ebp - 0x6c]
mov word [edx + 0xe], ax
mov edx, dword [ebp - 0x44]
mov dword [edx + 4], edi
mov edx, dword [ebp - 0x6c]
mov dword [edx + 8], edi

loc_fffb72d9:  ; not directly referenced
cmp dword [ecx + 0x124c], 2
jne short loc_fffb72f9  ; jne 0xfffb72f9
add ecx, dword [ebp - 0x48]
mov word [ecx + 0x1256], ax
mov word [ecx + 0xe], ax
mov dword [ecx + 0x1250], edi
mov dword [ecx + 8], edi

loc_fffb72f9:  ; not directly referenced
inc dword [ebp - 0x40]
cmp dword [ebp - 0x40], 2
jne short loc_fffb729a  ; jne 0xfffb729a
jmp short loc_fffb731d  ; jmp 0xfffb731d

loc_fffb7304:  ; not directly referenced
inc eax
mov dword [ebp + esi*4 - 0x1c], eax

loc_fffb7309:  ; not directly referenced
cmp byte [ebp + esi - 0x30], 0
jne short loc_fffb731d  ; jne 0xfffb731d
mov eax, dword [ebp + esi*4 - 0x1c]
cmp eax, 0x12
jbe loc_fffb7252  ; jbe 0xfffb7252

loc_fffb731d:  ; not directly referenced
cmp byte [ebp + esi - 0x30], 0
jne loc_fffb73ac  ; jne 0xfffb73ac
cmp byte [ebp - 0x50], 0
je short loc_fffb733d  ; je 0xfffb733d
cmp byte [ebx + 0xff4], 0
jne short loc_fffb73ac  ; jne 0xfffb73ac
cmp byte [ebp - 0x61], 1
je short loc_fffb73ac  ; je 0xfffb73ac

loc_fffb733d:  ; not directly referenced
mov eax, dword [ebp - 0x38]
jmp short loc_fffb73a3  ; jmp 0xfffb73a3

loc_fffb7342:  ; not directly referenced
lea edx, [eax + eax*8]
mov dl, byte [edx + ref_fffcbc0c]  ; mov dl, byte [edx - 0x343f4]
cmp dl, 3
jne short loc_fffb7374  ; jne 0xfffb7374

loc_fffb7350:  ; not directly referenced
mov dword [ebp - 0x38], eax
lea eax, [eax + eax*8]
mov edi, dword [eax + ref_fffcbc04]  ; mov edi, dword [eax - 0x343fc]
lea ecx, [ebp - 0x38]
mov eax, dword [ebx + 0x16d2]
mov edx, edi
call fcn_fffb6ef0  ; call 0xfffb6ef0
xor eax, eax
test edi, edi
je short loc_fffb739d  ; je 0xfffb739d
jmp short loc_fffb7392  ; jmp 0xfffb7392

loc_fffb7374:  ; not directly referenced
cmp dl, 1
jne short loc_fffb7382  ; jne 0xfffb7382
cmp dword [ebx + 0x16d2], 0
jmp short loc_fffb738e  ; jmp 0xfffb738e

loc_fffb7382:  ; not directly referenced
cmp dl, 2
jne short loc_fffb73a3  ; jne 0xfffb73a3
cmp dword [ebx + 0x16d2], 1

loc_fffb738e:  ; not directly referenced
jne short loc_fffb73a3  ; jne 0xfffb73a3
jmp short loc_fffb7350  ; jmp 0xfffb7350

loc_fffb7392:  ; not directly referenced
mov edx, dword [ebp - 0x58]
lea eax, [edi + edx - 1]
xor edx, edx
div edi

loc_fffb739d:  ; not directly referenced
mov dword [ebp + esi*4 - 0x1c], eax
jmp short loc_fffb73bb  ; jmp 0xfffb73bb

loc_fffb73a3:  ; not directly referenced
dec eax
test eax, eax
jg short loc_fffb7342  ; jg 0xfffb7342
jmp short loc_fffb73b8  ; jmp 0xfffb73b8

loc_fffb73aa:  ; not directly referenced
xor edi, edi

loc_fffb73ac:  ; not directly referenced
inc esi
cmp esi, 4
jne loc_fffb6fa2  ; jne 0xfffb6fa2
jmp short loc_fffb73c7  ; jmp 0xfffb73c7

loc_fffb73b8:  ; not directly referenced
mov dword [ebp - 0x38], eax

loc_fffb73bb:  ; not directly referenced
cmp dword [ebp - 0x38], 0
jg loc_fffb7309  ; jg 0xfffb7309
jmp short loc_fffb73ac  ; jmp 0xfffb73ac

loc_fffb73c7:  ; not directly referenced
mov edx, dword [ebx + 0x16ce]
mov eax, dword [ebx + 0x16d2]
xor ecx, ecx
call fcn_fffb6ef0  ; call 0xfffb6ef0
mov dword [ebx + 0x16c6], eax
mov eax, dword [ebp - 0x68]
lea esp, [esp + 0x84]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb73ef:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
xor esi, esi
push ebx
lea esp, [esp - 0x4c]
mov ebx, dword [ebp + 8]
lea edi, [ebx + 0x10b7]
mov dword [ebp - 0x48], edi
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x4c], edi

loc_fffb7410:  ; not directly referenced
lea eax, [esi - 2]
cmp eax, 1
ja short loc_fffb742c  ; ja 0xfffb742c
cmp byte [ebx + 0x1746], 0
jne short loc_fffb742c  ; jne 0xfffb742c

loc_fffb7421:  ; not directly referenced
inc esi
cmp esi, 4
jne short loc_fffb7410  ; jne 0xfffb7410
jmp near loc_fffb75c1  ; jmp 0xfffb75c1

loc_fffb742c:  ; not directly referenced
imul eax, eax, 0x23
mov dword [ebp + esi*4 - 0x28], 0
add eax, 0xb0
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x44], eax

loc_fffb7446:  ; not directly referenced
imul eax, dword [ebp - 0x30], 0x2fa
mov edi, dword [ebp - 0x48]
mov dword [ebp - 0x2c], 0
lea eax, [edi + eax + 5]
mov dword [ebp - 0x40], eax
imul eax, dword [ebp - 0x30], 0x1347
mov edi, dword [ebp - 0x4c]
lea eax, [edi + eax + 8]
mov dword [ebp - 0x34], eax

loc_fffb746f:  ; not directly referenced
imul eax, dword [ebp - 0x2c], 0xfb
mov edi, dword [ebp - 0x34]
lea eax, [edi + eax + 0x1150]
cmp dword [eax + 1], 2
lea ecx, [eax + 1]
jne loc_fffb75a2  ; jne 0xfffb75a2
imul eax, dword [ebp - 0x2c], 0x14f
mov edi, dword [ebp - 0x40]
cmp esi, 1
lea edx, [edi + eax + 8]
mov edi, dword [ebp - 0x2c]
lea eax, [esi + edi*4 + 0x16]
mov edi, dword [ebp - 0x34]
lea eax, [edi + eax*8]
mov edi, dword [eax]
mov eax, dword [eax + 4]
mov dword [ebp - 0x38], edi
mov dword [ebp - 0x3c], eax
je short loc_fffb750a  ; je 0xfffb750a
jb loc_fffb7578  ; jb 0xfffb7578
cmp esi, 3
ja loc_fffb7578  ; ja 0xfffb7578
movzx edi, byte [ecx + 0xe5]
cmp esi, 2
jne short loc_fffb74df  ; jne 0xfffb74df
and edi, 1
jne short loc_fffb74ea  ; jne 0xfffb74ea
xor eax, eax
jmp near loc_fffb7595  ; jmp 0xfffb7595

loc_fffb74df:  ; not directly referenced
xor eax, eax
and edi, 2
je loc_fffb7595  ; je 0xfffb7595

loc_fffb74ea:  ; not directly referenced
mov eax, dword [ebp - 0x44]
lea edi, [edx + eax + 0x2d]
xor edx, edx
movzx eax, byte [edi + 1]
cmp byte [ecx + 0xe6], 0x13
jne short loc_fffb7504  ; jne 0xfffb7504
movsx edx, byte [edi + 0x1a]

loc_fffb7504:  ; not directly referenced
imul eax, dword [ebp - 0x38]
jmp short loc_fffb7584  ; jmp 0xfffb7584

loc_fffb750a:  ; not directly referenced
movzx ecx, byte [ebx + 0xff4]
test cl, cl
je short loc_fffb7578  ; je 0xfffb7578
mov eax, dword [ebx + 0xff9]
mov edx, 0x5f5e100
test eax, eax
mov edi, 0x186a0
cmove eax, edx
xor edx, edx
div edi
cmp dword [ebx + 0x16d2], 1
mov edx, 0x4f790d55
mov edi, 0x3b9aca00
cmovne edi, edx
mul ecx
mov ecx, edx
imul ecx, edi
mul edi
add edx, ecx
xor ecx, ecx
mov edi, edx
or edi, eax
je short loc_fffb756b  ; je 0xfffb756b
push edx
push eax
push 0x8ac72304
push 0x89e80000
call udiv64  ; call 0xfffc91d0
mov ecx, eax
add esp, 0x10

loc_fffb756b:  ; not directly referenced
mov eax, dword [ebx + 0x16ca]
cmp ecx, eax
cmovae eax, ecx
jmp short loc_fffb7595  ; jmp 0xfffb7595

loc_fffb7578:  ; not directly referenced
movzx eax, byte [edx + 0x30]
imul eax, dword [ebp - 0x38]
movsx edx, byte [edx + 0x46]

loc_fffb7584:  ; not directly referenced
imul edx, dword [ebp - 0x3c]
mov ecx, dword [ebx + 0x16ca]
add eax, edx
cmp eax, ecx
cmovb eax, ecx

loc_fffb7595:  ; not directly referenced
mov edx, dword [ebp + esi*4 - 0x28]
cmp eax, edx
cmovb eax, edx
mov dword [ebp + esi*4 - 0x28], eax

loc_fffb75a2:  ; not directly referenced
inc dword [ebp - 0x2c]
cmp dword [ebp - 0x2c], 2
jne loc_fffb746f  ; jne 0xfffb746f
inc dword [ebp - 0x30]
cmp dword [ebp - 0x30], 2
je loc_fffb7421  ; je 0xfffb7421
jmp near loc_fffb7446  ; jmp 0xfffb7446

loc_fffb75c1:  ; not directly referenced
lea esi, [ebx + 0x3ad1]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffb75d2:  ; not directly referenced
cmp edx, 1
ja short loc_fffb75e0  ; ja 0xfffb75e0
cmp byte [ebx + 0x1746], 0
je short loc_fffb760d  ; je 0xfffb760d

loc_fffb75e0:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x20]
sub ecx, edi
mov dword [esi], eax
mov dword [ecx + ebx + 0x2980], eax
mov dword [ecx + ebx + 0x3bc8], eax
mov dword [ecx + ebx + 0x4e14], eax
mov dword [ecx + ebx + 0x3cc7], eax
mov dword [ecx + ebx + 0x4f0f], eax

loc_fffb760d:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffb75d2  ; jne 0xfffb75d2
mov eax, dword [ebx + 0x1021]
mov eax, dword [ebp + eax*4 - 0x28]
mov dword [ebx + 0x16ce], eax
lea esp, [ebp - 0xc]
pop ebx
mov eax, 1
pop esi
pop edi
pop ebp
ret

fcn_fffb7633:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
xor esi, esi
push ebx
lea esp, [esp - 0x5c]
mov edi, dword [ebp + 8]
lea ebx, [edi + 0x10b7]
mov dword [ebp - 0x4c], ebx
lea ebx, [edi + 0x2974]
mov dword [ebp - 0x50], ebx

loc_fffb7654:  ; not directly referenced
lea eax, [esi - 2]
cmp eax, 1
ja short loc_fffb7670  ; ja 0xfffb7670
cmp byte [edi + 0x1746], 0
jne short loc_fffb7670  ; jne 0xfffb7670

loc_fffb7665:  ; not directly referenced
inc esi
cmp esi, 4
jne short loc_fffb7654  ; jne 0xfffb7654
jmp near loc_fffb77fe  ; jmp 0xfffb77fe

loc_fffb7670:  ; not directly referenced
imul ebx, esi, 0x2a
imul eax, eax, 0x23
mov dword [ebp + esi*4 - 0x28], 0
mov dword [ebp - 0x34], 0
mov dword [ebp - 0x44], ebx
mov dword [ebp - 0x48], eax

loc_fffb768b:  ; not directly referenced
imul eax, dword [ebp - 0x34], 0x2fa
mov ebx, dword [ebp - 0x4c]
mov dword [ebp - 0x30], 0
lea eax, [ebx + eax + 5]
mov dword [ebp - 0x40], eax
imul eax, dword [ebp - 0x34], 0x1347
mov ebx, dword [ebp - 0x50]
lea eax, [ebx + eax + 8]
mov dword [ebp - 0x38], eax

loc_fffb76b4:  ; not directly referenced
imul eax, dword [ebp - 0x30], 0xfb
mov ebx, dword [ebp - 0x38]
lea eax, [ebx + eax + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
jne loc_fffb77df  ; jne 0xfffb77df
imul eax, dword [ebp - 0x30], 0x14f
mov ebx, dword [ebp - 0x40]
cmp esi, 1
lea ecx, [ebx + eax + 8]
mov ebx, dword [ebp - 0x44]
mov ebx, dword [edx + ebx + 4]
mov dword [ebp - 0x2c], ebx
mov ebx, dword [ebp - 0x30]
lea eax, [esi + ebx*4 + 0x16]
mov ebx, dword [ebp - 0x38]
mov eax, dword [ebx + eax*8]
mov dword [ebp - 0x3c], eax
je loc_fffb7787  ; je 0xfffb7787
jb loc_fffb7793  ; jb 0xfffb7793
cmp esi, 3
ja loc_fffb7793  ; ja 0xfffb7793
cmp esi, 2
mov dl, byte [edx + 0xe5]
jne short loc_fffb7729  ; jne 0xfffb7729
and dl, 1
jne short loc_fffb7734  ; jne 0xfffb7734
xor eax, eax
jmp near loc_fffb77c5  ; jmp 0xfffb77c5

loc_fffb7729:  ; not directly referenced
xor eax, eax
and dl, 2
je loc_fffb77c5  ; je 0xfffb77c5

loc_fffb7734:  ; not directly referenced
mov ebx, dword [ebp - 0x48]
xor eax, eax
cmp dword [ebp - 0x2c], 0
movzx edx, word [ecx + ebx + 0xe9]
je short loc_fffb77c5  ; je 0xfffb77c5
imul edx, edx, 0x3e8
mov eax, dword [ebp - 0x3c]
mov dword [ebp - 0x54], edx
cdq
mov ecx, dword [ebp - 0x54]
mov eax, dword [ebp - 0x54]
imul ecx, edx
mul dword [ebp - 0x3c]
xor ebx, ebx
add edx, ecx
mov ecx, dword [ebp - 0x2c]
mov dword [ebp - 0x60], eax
mov dword [ebp - 0x5c], edx
dec ecx
add ecx, dword [ebp - 0x60]
adc ebx, dword [ebp - 0x5c]
xor edx, edx
push edx
mov eax, dword [ebp - 0x2c]
push eax
push ebx
push ecx
call udiv64  ; call 0xfffc91d0
add esp, 0x10
jmp short loc_fffb77c5  ; jmp 0xfffb77c5

loc_fffb7787:  ; not directly referenced
movzx eax, word [ecx + 0x136]
test ax, ax
jne short loc_fffb77c5  ; jne 0xfffb77c5

loc_fffb7793:  ; not directly referenced
xor eax, eax
cmp dword [ebp - 0x2c], 0
je short loc_fffb77c5  ; je 0xfffb77c5
cmp dword [edx + 0xc5], 2
mov eax, 0x3b8260
mov ecx, 0x7704c0
mov ebx, 0x3e8
cmove ecx, eax
mov eax, dword [ebp - 0x2c]
xor edx, edx
div ebx
xor edx, edx
mov ebx, eax
lea eax, [ecx + eax - 1]
div ebx

loc_fffb77c5:  ; not directly referenced
cmp eax, 0xffff
mov edx, 0xffff
cmovbe edx, eax
mov eax, dword [ebp + esi*4 - 0x28]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + esi*4 - 0x28], edx

loc_fffb77df:  ; not directly referenced
inc dword [ebp - 0x30]
cmp dword [ebp - 0x30], 2
jne loc_fffb76b4  ; jne 0xfffb76b4
inc dword [ebp - 0x34]
cmp dword [ebp - 0x34], 2
je loc_fffb7665  ; je 0xfffb7665
jmp near loc_fffb768b  ; jmp 0xfffb768b

loc_fffb77fe:  ; not directly referenced
lea ebx, [edi + 0x3ae3]
mov edx, 0xfffffffe
lea esi, [edi + 0x3acd]

loc_fffb780f:  ; not directly referenced
cmp edx, 1
ja short loc_fffb781d  ; ja 0xfffb781d
cmp byte [edi + 0x1746], 0
je short loc_fffb7850  ; je 0xfffb7850

loc_fffb781d:  ; not directly referenced
mov ecx, ebx
mov eax, dword [ebp + edx*4 - 0x20]
sub ecx, esi
mov word [ebx], ax
mov word [ecx + edi + 0x2980], ax
mov word [ecx + edi + 0x3bc8], ax
mov word [ecx + edi + 0x4e14], ax
mov word [ecx + edi + 0x3cc7], ax
mov word [ecx + edi + 0x4f0f], ax

loc_fffb7850:  ; not directly referenced
inc edx
add ebx, 0x2a
cmp edx, 2
jne short loc_fffb780f  ; jne 0xfffb780f
lea esp, [ebp - 0xc]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb7866:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
xor esi, esi
push ebx
lea esp, [esp - 0x34]
mov edx, dword [ebp + 8]
mov eax, dword [edx + 0x1005]
lea ecx, [edx + 0x10b7]
lea ebx, [edx + 0x2974]
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x3c], ecx
mov dword [ebp - 0x40], ebx

loc_fffb7890:  ; not directly referenced
lea eax, [esi - 2]
mov ecx, 0x4b0
cmp eax, 1
ja short loc_fffb78b8  ; ja 0xfffb78b8
cmp byte [edx + 0x1746], 0
jne short loc_fffb78b6  ; jne 0xfffb78b6

loc_fffb78a6:  ; not directly referenced
inc esi
cmp esi, 4
jne short loc_fffb7890  ; jne 0xfffb7890
mov eax, 0xfffffffe
jmp near loc_fffb7a86  ; jmp 0xfffb7a86

loc_fffb78b6:  ; not directly referenced
xor ecx, ecx

loc_fffb78b8:  ; not directly referenced
imul eax, eax, 0x23
mov dword [ebp + esi*4 - 0x1c], ecx
add eax, 0xb0
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x38], eax

loc_fffb78ce:  ; not directly referenced
imul eax, dword [ebp - 0x24], 0x2fa
mov ecx, dword [ebp - 0x3c]
mov ebx, dword [ebp - 0x40]
mov dword [ebp - 0x20], 0
lea eax, [ecx + eax + 5]
mov dword [ebp - 0x2c], eax
imul eax, dword [ebp - 0x24], 0x1347
lea eax, [ebx + eax + 8]
mov dword [ebp - 0x30], eax

loc_fffb78f7:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0xfb
mov ebx, dword [ebp - 0x30]
lea ecx, [ebx + eax + 0x1150]
cmp dword [ecx + 1], 2
lea eax, [ecx + 1]
jne loc_fffb7a67  ; jne 0xfffb7a67
imul ecx, dword [ebp - 0x20], 0x14f
mov ebx, dword [ebp - 0x2c]
cmp esi, 1
lea ecx, [ebx + ecx + 8]
je short loc_fffb79a0  ; je 0xfffb79a0
jb loc_fffb79ae  ; jb 0xfffb79ae
cmp esi, 3
ja short loc_fffb79ae  ; ja 0xfffb79ae
cmp esi, 2
mov bl, byte [eax + 0xe5]
jne short loc_fffb794a  ; jne 0xfffb794a
and bl, 1
jne short loc_fffb7955  ; jne 0xfffb7955
xor eax, eax
jmp near loc_fffb7a5a  ; jmp 0xfffb7a5a

loc_fffb794a:  ; not directly referenced
xor eax, eax
and bl, 2
je loc_fffb7a5a  ; je 0xfffb7a5a

loc_fffb7955:  ; not directly referenced
mov eax, dword [ebp - 0x38]
mov cl, byte [ecx + eax + 0x2d]
mov eax, 0x3e7
mov ebx, ecx
and ebx, 0x1f
imul ebx, ebx, 0x32
cmp ebx, 0x3e7
cmovbe eax, ebx
mov ebx, 0x4b0
shr cl, 5
and ecx, 3
imul ecx, ecx, 0x3e8
add eax, ecx
cmp eax, 0x4b0
cmovae ebx, eax
mov eax, 0x672
cmp ebx, 0x672
cmovbe eax, ebx
jmp near loc_fffb7a5a  ; jmp 0xfffb7a5a

loc_fffb79a0:  ; not directly referenced
mov eax, dword [edx + 0x101d]
test eax, eax
jne loc_fffb7a5a  ; jne 0xfffb7a5a

loc_fffb79ae:  ; not directly referenced
mov al, byte [ecx + 0x2a]
mov bl, al
mov cl, al
shr bl, 1
and ecx, 1
and ebx, 1
mov byte [ebp - 0x31], cl
mov byte [ebp - 0x34], bl
mov bl, al
shr bl, 2
and ebx, 1
cmp dword [ebp - 0x28], HASWELL_FAMILY_ULT
je short loc_fffb79f7  ; je 0xfffb79f7
cmp dword [ebp - 0x28], HASWELL_FAMILY_GT3E
mov eax, 0x5dc
sete byte [ebp - 0x32]
cmp dword [ebp - 0x28], HASWELL_FAMILY_MOBILE
mov cl, byte [ebp - 0x32]
sete byte [ebp - 0x33]
or cl, byte [ebp - 0x33]
je short loc_fffb7a47  ; je 0xfffb7a47

loc_fffb79f7:  ; not directly referenced
mov al, bl
and edi, 0xfffffff9
and eax, 1
lea ebx, [eax + eax]
mov al, byte [ebp - 0x34]
and eax, 1
or edi, ebx
shl eax, 2
or edi, eax
mov al, byte [ebp - 0x31]
xor eax, 1
and edi, 0xfffffff7
shl eax, 3
or edi, eax
mov eax, edi
and eax, 4
cmp al, 1
sbb eax, eax
and eax, 0x96
add eax, 0x546
cmp dword [ebp - 0x28], HASWELL_FAMILY_ULT
jne short loc_fffb7a47  ; jne 0xfffb7a47
test edi, 2
mov ecx, 0x4b0
cmovne eax, ecx

loc_fffb7a47:  ; not directly referenced
test esi, esi
jne short loc_fffb7a5a  ; jne 0xfffb7a5a
cmp dword [edx + 0xffd], 1
mov ecx, 0x5dc
cmove eax, ecx

loc_fffb7a5a:  ; not directly referenced
mov ecx, dword [ebp + esi*4 - 0x1c]
cmp eax, ecx
cmovb eax, ecx
mov dword [ebp + esi*4 - 0x1c], eax

loc_fffb7a67:  ; not directly referenced
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
jne loc_fffb78f7  ; jne 0xfffb78f7
inc dword [ebp - 0x24]
cmp dword [ebp - 0x24], 2
je loc_fffb78a6  ; je 0xfffb78a6
jmp near loc_fffb78ce  ; jmp 0xfffb78ce

loc_fffb7a86:  ; not directly referenced
cmp eax, 1
ja short loc_fffb7a94  ; ja 0xfffb7a94
cmp byte [edx + 0x1746], 0
je short loc_fffb7abb  ; je 0xfffb7abb

loc_fffb7a94:  ; not directly referenced
mov ecx, dword [ebp + eax*4 - 0x14]
mov dword [edx + eax*4 + 0x1734], ecx
mov dword [edx + eax*4 + 0x3b81], ecx
mov dword [edx + eax*4 + 0x3c7c], ecx
mov dword [edx + eax*4 + 0x4ec8], ecx
mov dword [edx + eax*4 + 0x4fc3], ecx

loc_fffb7abb:  ; not directly referenced
inc eax
cmp eax, 2
jne short loc_fffb7a86  ; jne 0xfffb7a86
lea esp, [esp + 0x34]
mov al, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb7acc:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x38]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
mov dword [ebp - 0x3c], esi
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x40], esi

loc_fffb7aed:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffb7b09  ; ja 0xfffb7b09
cmp byte [ebx + 0x1746], 0
jne short loc_fffb7b09  ; jne 0xfffb7b09

loc_fffb7afe:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffb7aed  ; jne 0xfffb7aed
jmp near loc_fffb7c2b  ; jmp 0xfffb7c2b

loc_fffb7b09:  ; not directly referenced
xor edx, edx
cmp ecx, 1
setbe dl
mov dword [ebp - 0x20], 0
imul esi, ecx, 0x2a
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], edx
mov dword [ebp - 0x34], esi
mov dword [ebp - 0x38], eax

loc_fffb7b28:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2fa
mov esi, dword [ebp - 0x3c]
xor edi, edi
lea eax, [esi + eax + 5]
mov dword [ebp - 0x2c], eax
imul eax, dword [ebp - 0x20], 0x1347
mov esi, dword [ebp - 0x40]
lea eax, [esi + eax + 8]
mov dword [ebp - 0x28], eax

loc_fffb7b4c:  ; not directly referenced
imul eax, edi, 0xfb
mov esi, dword [ebp - 0x28]
lea eax, [esi + eax + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
jne loc_fffb7c0f  ; jne 0xfffb7c0f
imul eax, edi, 0x14f
mov esi, dword [ebp - 0x2c]
cmp ecx, 1
lea eax, [esi + eax + 8]
mov esi, dword [ebp - 0x34]
mov dword [ebp - 0x44], eax
lea eax, [ecx + edi*4 + 0x16]
mov esi, dword [edx + esi + 4]
mov dword [ebp - 0x24], esi
mov esi, dword [ebp - 0x28]
mov esi, dword [esi + eax*8]
mov dword [ebp - 0x30], esi
je short loc_fffb7be8  ; je 0xfffb7be8
jb short loc_fffb7bfd  ; jb 0xfffb7bfd
cmp ecx, 3
ja short loc_fffb7bfd  ; ja 0xfffb7bfd
cmp ecx, 2
mov dl, byte [edx + 0xe5]
jne short loc_fffb7bb0  ; jne 0xfffb7bb0
and dl, 1
jne short loc_fffb7bb7  ; jne 0xfffb7bb7
xor esi, esi
jmp short loc_fffb7c02  ; jmp 0xfffb7c02

loc_fffb7bb0:  ; not directly referenced
xor esi, esi
and dl, 2
je short loc_fffb7c02  ; je 0xfffb7c02

loc_fffb7bb7:  ; not directly referenced
mov esi, dword [ebp - 0x38]
mov edx, dword [ebp - 0x44]
movzx eax, byte [edx + esi + 0xf4]
xor esi, esi
cmp dword [ebp - 0x24], 0
je short loc_fffb7c02  ; je 0xfffb7c02
imul eax, dword [ebp - 0x30]
mov esi, dword [ebp - 0x24]
xor edx, edx
lea eax, [esi + eax - 1]
div esi
mov esi, 2
test eax, eax
cmovne esi, eax
jmp short loc_fffb7c02  ; jmp 0xfffb7c02

loc_fffb7be8:  ; not directly referenced
mov edx, dword [ebp - 0x44]
mov ax, word [edx + 0x128]
movzx esi, ax
test ax, ax
cmove esi, ecx
jmp short loc_fffb7c02  ; jmp 0xfffb7c02

loc_fffb7bfd:  ; not directly referenced
mov esi, 1

loc_fffb7c02:  ; not directly referenced
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp esi, eax
cmovb esi, eax
mov dword [ebp + ecx*4 - 0x1c], esi

loc_fffb7c0f:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffb7b4c  ; jne 0xfffb7b4c
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
je loc_fffb7afe  ; je 0xfffb7afe
jmp near loc_fffb7b28  ; jmp 0xfffb7b28

loc_fffb7c2b:  ; not directly referenced
lea esi, [ebx + 0x3ad5]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffb7c3c:  ; not directly referenced
cmp edx, 1
ja short loc_fffb7c4a  ; ja 0xfffb7c4a
cmp byte [ebx + 0x1746], 0
je short loc_fffb7c7d  ; je 0xfffb7c7d

loc_fffb7c4a:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffb7c7d:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffb7c3c  ; jne 0xfffb7c3c
lea esp, [esp + 0x38]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb7c94:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x3c]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
mov dword [ebp - 0x3c], esi
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x40], esi

loc_fffb7cb5:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffb7cd1  ; ja 0xfffb7cd1
cmp byte [ebx + 0x1746], 0
jne short loc_fffb7cd1  ; jne 0xfffb7cd1

loc_fffb7cc6:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffb7cb5  ; jne 0xfffb7cb5
jmp near loc_fffb7df3  ; jmp 0xfffb7df3

loc_fffb7cd1:  ; not directly referenced
imul esi, ecx, 0x2a
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x34], esi
mov dword [ebp - 0x38], eax

loc_fffb7cec:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2fa
mov esi, dword [ebp - 0x3c]
xor edi, edi
lea eax, [esi + eax + 5]
mov dword [ebp - 0x30], eax
imul eax, dword [ebp - 0x20], 0x1347
mov esi, dword [ebp - 0x40]
lea eax, [esi + eax + 8]
mov dword [ebp - 0x28], eax

loc_fffb7d10:  ; not directly referenced
imul eax, edi, 0xfb
mov esi, dword [ebp - 0x28]
lea edx, [esi + eax + 0x1150]
cmp dword [edx + 1], 2
lea eax, [edx + 1]
mov dword [ebp - 0x48], eax
jne loc_fffb7dd7  ; jne 0xfffb7dd7
imul edx, edi, 0x14f
mov esi, dword [ebp - 0x30]
cmp ecx, 1
lea edx, [esi + edx + 8]
mov dword [ebp - 0x44], edx
mov edx, dword [ebp - 0x34]
mov esi, dword [eax + edx + 4]
mov edx, dword [ebp - 0x28]
lea eax, [ecx + edi*4 + 0x16]
mov edx, dword [edx + eax*8]
mov dword [ebp - 0x24], edx
je short loc_fffb7d97  ; je 0xfffb7d97
jb short loc_fffb7da6  ; jb 0xfffb7da6
cmp ecx, 3
ja short loc_fffb7da6  ; ja 0xfffb7da6
mov eax, dword [ebp - 0x48]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffb7d77  ; jne 0xfffb7d77
and dl, 1
jne short loc_fffb7d7e  ; jne 0xfffb7d7e
xor eax, eax
jmp short loc_fffb7dbf  ; jmp 0xfffb7dbf

loc_fffb7d77:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffb7dbf  ; je 0xfffb7dbf

loc_fffb7d7e:  ; not directly referenced
mov eax, dword [ebp - 0x44]
mov edx, dword [ebp - 0x38]
movzx edx, byte [eax + edx + 0xf1]
xor eax, eax
test esi, esi
mov dword [ebp - 0x44], edx
je short loc_fffb7dbf  ; je 0xfffb7dbf
jmp short loc_fffb7db3  ; jmp 0xfffb7db3

loc_fffb7d97:  ; not directly referenced
mov edx, dword [ebp - 0x44]
movzx eax, word [edx + 0x14c]
test ax, ax
jne short loc_fffb7dbf  ; jne 0xfffb7dbf

loc_fffb7da6:  ; not directly referenced
xor eax, eax
test esi, esi
je short loc_fffb7dbf  ; je 0xfffb7dbf
mov eax, dword [ebp - 0x44]
movzx edx, byte [eax + 0x3e]

loc_fffb7db3:  ; not directly referenced
imul edx, dword [ebp - 0x24]
lea eax, [esi + edx - 1]
xor edx, edx
div esi

loc_fffb7dbf:  ; not directly referenced
cmp eax, 0xa
mov edx, 0xa
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffb7dd7:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffb7d10  ; jne 0xfffb7d10
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
je loc_fffb7cc6  ; je 0xfffb7cc6
jmp near loc_fffb7cec  ; jmp 0xfffb7cec

loc_fffb7df3:  ; not directly referenced
lea esi, [ebx + 0x3af9]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffb7e04:  ; not directly referenced
cmp edx, 1
ja short loc_fffb7e12  ; ja 0xfffb7e12
cmp byte [ebx + 0x1746], 0
je short loc_fffb7e45  ; je 0xfffb7e45

loc_fffb7e12:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffb7e45:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffb7e04  ; jne 0xfffb7e04
lea esp, [esp + 0x3c]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb7e5c:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x3c]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
mov dword [ebp - 0x3c], esi
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x40], esi

loc_fffb7e7d:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffb7e99  ; ja 0xfffb7e99
cmp byte [ebx + 0x1746], 0
jne short loc_fffb7e99  ; jne 0xfffb7e99

loc_fffb7e8e:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffb7e7d  ; jne 0xfffb7e7d
jmp near loc_fffb7fd7  ; jmp 0xfffb7fd7

loc_fffb7e99:  ; not directly referenced
imul esi, ecx, 0x2a
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x34], esi
mov dword [ebp - 0x38], eax

loc_fffb7eb4:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2fa
mov esi, dword [ebp - 0x3c]
xor edi, edi
lea eax, [esi + eax + 5]
mov dword [ebp - 0x30], eax
imul eax, dword [ebp - 0x20], 0x1347
mov esi, dword [ebp - 0x40]
lea eax, [esi + eax + 8]
mov dword [ebp - 0x28], eax

loc_fffb7ed8:  ; not directly referenced
imul eax, edi, 0xfb
mov esi, dword [ebp - 0x28]
lea edx, [esi + eax + 0x1150]
cmp dword [edx + 1], 2
lea eax, [edx + 1]
mov dword [ebp - 0x48], eax
jne loc_fffb7fbb  ; jne 0xfffb7fbb
imul edx, edi, 0x14f
mov esi, dword [ebp - 0x30]
cmp ecx, 1
lea edx, [esi + edx + 8]
mov dword [ebp - 0x44], edx
mov edx, dword [ebp - 0x34]
mov esi, dword [eax + edx + 4]
mov edx, dword [ebp - 0x28]
lea eax, [ecx + edi*4 + 0x16]
mov edx, dword [edx + eax*8]
mov dword [ebp - 0x24], edx
je short loc_fffb7f67  ; je 0xfffb7f67
jb short loc_fffb7f76  ; jb 0xfffb7f76
cmp ecx, 3
ja short loc_fffb7f76  ; ja 0xfffb7f76
mov eax, dword [ebp - 0x48]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffb7f3f  ; jne 0xfffb7f3f
and dl, 1
jne short loc_fffb7f46  ; jne 0xfffb7f46
xor eax, eax
jmp short loc_fffb7f8f  ; jmp 0xfffb7f8f

loc_fffb7f3f:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffb7f8f  ; je 0xfffb7f8f

loc_fffb7f46:  ; not directly referenced
mov eax, dword [ebp - 0x44]
mov edx, dword [ebp - 0x38]
movzx edx, byte [eax + edx + 0xe5]
xor eax, eax
test esi, esi
mov dword [ebp - 0x44], edx
je short loc_fffb7f8f  ; je 0xfffb7f8f
imul edx, dword [ebp - 0x24]
lea eax, [esi + edx - 1]
jmp short loc_fffb7f8b  ; jmp 0xfffb7f8b

loc_fffb7f67:  ; not directly referenced
mov edx, dword [ebp - 0x44]
movzx eax, word [edx + 0x14a]
test ax, ax
jne short loc_fffb7f8f  ; jne 0xfffb7f8f

loc_fffb7f76:  ; not directly referenced
xor eax, eax
test esi, esi
je short loc_fffb7f8f  ; je 0xfffb7f8f
mov edx, dword [ebp - 0x44]
movzx eax, byte [edx + 0x35]
imul eax, dword [ebp - 0x24]
lea eax, [esi + eax - 1]

loc_fffb7f8b:  ; not directly referenced
xor edx, edx
div esi

loc_fffb7f8f:  ; not directly referenced
mov edx, eax
and edx, 0xfffffffd
cmp edx, 9
je short loc_fffb7f9e  ; je 0xfffb7f9e
cmp edx, 0xd
jne short loc_fffb7fa3  ; jne 0xfffb7fa3

loc_fffb7f9e:  ; not directly referenced
lea edx, [eax + 1]
jmp short loc_fffb7fae  ; jmp 0xfffb7fae

loc_fffb7fa3:  ; not directly referenced
cmp eax, 0x10
mov edx, 0x10
cmovbe edx, eax

loc_fffb7fae:  ; not directly referenced
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffb7fbb:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffb7ed8  ; jne 0xfffb7ed8
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
je loc_fffb7e8e  ; je 0xfffb7e8e
jmp near loc_fffb7eb4  ; jmp 0xfffb7eb4

loc_fffb7fd7:  ; not directly referenced
lea esi, [ebx + 0x3af7]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffb7fe8:  ; not directly referenced
cmp edx, 1
ja short loc_fffb7ff6  ; ja 0xfffb7ff6
cmp byte [ebx + 0x1746], 0
je short loc_fffb8029  ; je 0xfffb8029

loc_fffb7ff6:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffb8029:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffb7fe8  ; jne 0xfffb7fe8
lea esp, [esp + 0x3c]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb8040:  ; not directly referenced
push ebp
xor ecx, ecx
mov edx, 0x10
mov ebp, esp
push edi
push esi
lea eax, [ebp - 0x158]
push ebx
lea esp, [esp - 0x19c]
mov ebx, dword [ebp + 8]
call mrc_setmem
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x15e]
call mrc_setmem
xor ecx, ecx
mov edx, 0x130
lea eax, [ebp - 0x148]
lea esi, [ebx + 0x16be]
call mrc_setmem
xor eax, eax
cmp dword [ebx + 0x1749], 2
sete al
mov dword [ebp - 0x170], 0
cmp eax, 1
mov dword [ebp - 0x188], eax
mov dword [ebp - 0x184], 0
mov dword [ebp - 0x180], esi
sbb eax, eax
and eax, 7
add eax, 0xa
movzx eax, al
mov dword [ebp - 0x198], eax

loc_fffb80cc:  ; not directly referenced
mov dword [ebp - 0x178], 1
mov cl, byte [ebp - 0x170]
xor esi, esi
mov byte [ebp - 0x174], 0
shl dword [ebp - 0x178], cl
movzx edi, byte [ebp - 0x178]

loc_fffb80f2:  ; not directly referenced
mov ecx, edi
mov edx, esi
mov eax, ebx
call fcn_fffc41bb  ; call 0xfffc41bb
or byte [ebp - 0x174], al
movzx ecx, byte [ebp - 0x174]
bt ecx, esi
mov dword [ebp - 0x16c], ecx
jae short loc_fffb8136  ; jae 0xfffb8136
imul eax, esi, 0x1347
mov edx, dword [ebp - 0x180]
movzx ecx, byte [ebx + 0x1755]
lea eax, [edx + eax + 0x13b7]
xor edx, edx
call mrc_fillword

loc_fffb8136:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffb80f2  ; jne 0xfffb80f2
cmp byte [ebp - 0x174], 0
je loc_fffb857d  ; je 0xfffb857d
sub esp, 0xc
mov ecx, 0x11
push 0
mov edx, dword [ebp - 0x16c]
mov eax, ebx
call fcn_fffc5844  ; call 0xfffc5844
xor si, si
lea ecx, [ebx + 0x1774]
add esp, 0x10
mov dword [ebp - 0x174], ecx

loc_fffb8172:  ; not directly referenced
mov eax, esi
cmp al, 3
je short loc_fffb81ca  ; je 0xfffb81ca
cmp al, 1
jne short loc_fffb8185  ; jne 0xfffb8185
mov byte [ebx + 0x1768], 9
jmp short loc_fffb8190  ; jmp 0xfffb8190

loc_fffb8185:  ; not directly referenced
cmp al, 4
jne short loc_fffb8190  ; jne 0xfffb8190
mov byte [ebx + 0x1768], 0

loc_fffb8190:  ; not directly referenced
sub eax, 4
lea edx, [ebp - 0x158]
cmp al, 2
mov ecx, dword [ebp - 0x16c]
sbb eax, eax
sub esp, 0xc
and eax, 0x17
push edx
add eax, 0x1f
mov edx, dword [ebp - 0x174]
movzx eax, al
push eax
mov eax, ebx
push 1
push esi
push dword [ebp - 0x170]
call fcn_fffc0a00  ; call 0xfffc0a00
add esp, 0x20

loc_fffb81ca:  ; not directly referenced
inc esi
cmp esi, 7
jne short loc_fffb8172  ; jne 0xfffb8172
sub esp, 0xc
mov ecx, dword [ebp - 0x198]
push 0
mov edx, dword [ebp - 0x16c]
mov eax, ebx
call fcn_fffc1345  ; call 0xfffc1345
add esp, 0x10
cmp dword [ebp - 0x188], 0
je loc_fffb82d7  ; je 0xfffb82d7
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x15c]
lea esi, [ebp - 0x15a]
call mrc_setmem
xor ecx, ecx
mov edx, 2
mov eax, esi
call mrc_setmem
lea ecx, [ebp - 0x15c]
xor edx, edx
push ecx
mov eax, ebx
mov ecx, dword [ebp - 0x16c]
push 1
push 0x20
push edi
call fcn_fffc177e  ; call 0xfffc177e
push esi
mov eax, ebx
mov ecx, dword [ebp - 0x16c]
push 0xffffffffffffffff
xor edx, edx
push 0xffffffffffffffe0
push edi
call fcn_fffc177e  ; call 0xfffc177e
add esp, 0x20
xor eax, eax

loc_fffb8253:  ; not directly referenced
mov ecx, dword [ebp - 0x16c]
bt ecx, eax
jb short loc_fffb8266  ; jb 0xfffb8266

loc_fffb825e:  ; not directly referenced
inc eax
cmp eax, 2
jne short loc_fffb8253  ; jne 0xfffb8253
jmp short loc_fffb82a6  ; jmp 0xfffb82a6

loc_fffb8266:  ; not directly referenced
imul edx, eax, 0x48
mov esi, dword [ebp - 0x180]
lea ecx, [esi + edx + 0xe36]
xor edx, edx

loc_fffb8278:  ; not directly referenced
bt edi, edx
jae short loc_fffb8298  ; jae 0xfffb8298
movzx esi, byte [ebp + eax - 0x15a]
imul esi, esi, 0xa
mov dword [ecx], esi
movzx esi, byte [ebp + eax - 0x15c]
imul esi, esi, 0xa
mov dword [ecx + 4], esi

loc_fffb8298:  ; not directly referenced
inc edx
add ecx, 0x90
cmp edx, 4
jne short loc_fffb8278  ; jne 0xfffb8278
jmp short loc_fffb825e  ; jmp 0xfffb825e

loc_fffb82a6:  ; not directly referenced
mov esi, dword [ebp - 0x178]
mov eax, esi
test byte [ebx + 0x3acb], al
je short loc_fffb82cb  ; je 0xfffb82cb
push 0
xor ecx, ecx
xor edx, edx
push 0
mov eax, ebx
push 3
push edi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffb82cb:  ; not directly referenced
mov edx, esi
test byte [ebx + 0x4e12], dl
je short loc_fffb8316  ; je 0xfffb8316
jmp short loc_fffb82fe  ; jmp 0xfffb82fe

loc_fffb82d7:  ; not directly referenced
push eax
lea eax, [ebp - 0x15e]
mov ecx, dword [ebp - 0x16c]
push 1
xor edx, edx
push 1
push eax
mov eax, ebx
push 0x40
push 0xffffffffffffffc0
push 3
push edi
call fcn_fffc13c0  ; call 0xfffc13c0
add esp, 0x20
jmp short loc_fffb82a6  ; jmp 0xfffb82a6

loc_fffb82fe:  ; not directly referenced
push 0
xor ecx, ecx
mov edx, 1
push 0
mov eax, ebx
push 3
push edi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffb8316:  ; not directly referenced
sub esp, 0xc
lea esi, [ebx + 0x2974]
push ebx
call fcn_fffbd7da  ; call 0xfffbd7da
lea eax, [ebp - 0x158]
mov dword [esp], eax
push 0x36
mov ecx, dword [ebp - 0x16c]
lea edx, [ebx + 0x1774]
push 0
mov eax, ebx
push 0xd
push dword [ebp - 0x170]
call fcn_fffc0a00  ; call 0xfffc0a00
add esp, 0x14
push ebx
call fcn_fffbd7da  ; call 0xfffbd7da
mov dword [ebp - 0x184], eax
lea edx, [ebp - 0x148]
mov eax, ebx
call fcn_fffb6ba5  ; call 0xfffb6ba5
imul eax, dword [ebp - 0x170], 0x90
mov edi, dword [ebp - 0x180]
mov dword [ebp - 0x18c], esi
add esp, 0x10
mov dword [ebp - 0x174], 0
lea ecx, [edi + eax + 0xe36]
mov eax, dword [ebp - 0x170]
lea eax, [eax*4 + 0x320]
mov dword [ebp - 0x194], eax

loc_fffb83a6:  ; not directly referenced
imul eax, dword [ebp - 0x174], 0x1347
mov dl, byte [ebp - 0x178]
test byte [ebx + eax + 0x3acb], dl
jne short loc_fffb83d6  ; jne 0xfffb83d6

loc_fffb83bf:  ; not directly referenced
inc dword [ebp - 0x174]
add ecx, 0x48
cmp dword [ebp - 0x174], 2
jne short loc_fffb83a6  ; jne 0xfffb83a6
jmp near loc_fffb857d  ; jmp 0xfffb857d

loc_fffb83d6:  ; not directly referenced
mov esi, dword [ebp - 0x18c]
mov edi, dword [ebp - 0x194]
xor edx, edx
lea eax, [esi + eax + 8]
add edi, eax
mov dword [ebp - 0x16c], edi
add edi, 0xd
mov dword [ebp - 0x1a4], eax
mov dword [ebp - 0x1a0], edi
mov eax, dword [ecx]
mov edi, 0xa
div edi
mov esi, dword [ebp - 0x16c]
xor edx, edx
mov byte [ebp - 0x16c], 0
mov byte [esi + 0xd], al
mov eax, dword [ecx + 4]
div edi
mov esi, dword [ebp - 0x1a0]
xor edx, edx
mov byte [esi + 1], al
mov eax, dword [ecx + 0x240]
div edi
xor edx, edx
mov byte [esi + 3], al
mov eax, dword [ecx + 0x244]
div edi
xor edx, edx
mov byte [esi + 2], al
mov eax, dword [ebp - 0x1a4]
mov esi, dword [ebp - 0x170]
lea esi, [eax + esi*2 + 0x10b0]
mov eax, dword [ecx - 0x480]
div edi
xor edx, edx
mov byte [esi + 0xd], al
mov eax, dword [ecx - 0x47c]
div edi
xor edx, edx
mov byte [esi + 0xe], al
mov eax, dword [ebp - 0x1a4]
mov esi, dword [ebp - 0x170]
lea esi, [eax + esi*2 + 0x10c0]
mov eax, dword [ecx - 0x240]
div edi
xor edx, edx
mov byte [esi + 5], al
mov eax, dword [ecx - 0x23c]
div edi
mov byte [esi + 6], al
imul esi, dword [ebp - 0x170], 0xd8
mov dword [ebp - 0x190], esi
jmp near loc_fffb8544  ; jmp 0xfffb8544

loc_fffb84b1:  ; not directly referenced
mov eax, dword [ecx - 0xb40]
mov edi, 0xa
xor edx, edx
div edi
xor edx, edx
mov byte [esi], al
mov eax, dword [ecx - 0xb3c]
div edi
xor edx, edx
mov byte [esi + 2], al
mov eax, dword [ecx - 0x6c0]
div edi
xor edx, edx
mov byte [esi + 0x360], al
mov eax, dword [ecx - 0x6bc]
div edi
xor edx, edx
mov byte [esi + 0x362], al
mov eax, dword [ecx - 0xd80]
div edi
xor edx, edx
mov byte [esi + 0x6c2], al
mov eax, dword [ecx - 0xd7c]
div edi
xor edx, edx
mov byte [esi + 0x6c0], al
mov eax, dword [ecx - 0x900]
div edi
xor edx, edx
mov byte [esi + 0xa22], al
mov eax, dword [ecx - 0x8fc]
div edi
mov byte [esi + 0xa20], al
add esi, 3
dec byte [ebp - 0x179]
jne loc_fffb84b1  ; jne 0xfffb84b1
inc byte [ebp - 0x16c]

loc_fffb8544:  ; not directly referenced
movzx eax, byte [ebp - 0x16c]
cmp al, byte [ebx + 0x1755]
jae loc_fffb83bf  ; jae 0xfffb83bf
imul eax, eax, 0x18
mov esi, dword [ebp - 0x190]
mov edi, dword [ebp - 0x1a4]
mov byte [ebp - 0x179], 8
lea eax, [eax + esi + 0x330]
lea esi, [edi + eax + 0xd]
jmp near loc_fffb84b1  ; jmp 0xfffb84b1

loc_fffb857d:  ; not directly referenced
inc dword [ebp - 0x170]
cmp dword [ebp - 0x170], 4
jne loc_fffb80cc  ; jne 0xfffb80cc
cmp dword [ebx + 0x297c], 2
jne short loc_fffb85a6  ; jne 0xfffb85a6
mov eax, dword [ebx + 0x103f]
mov byte [eax + 0x4198], 0

loc_fffb85a6:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffb85bc  ; jne 0xfffb85bc
mov eax, dword [ebx + 0x103f]
mov byte [eax + 0x4598], 0

loc_fffb85bc:  ; not directly referenced
mov eax, dword [ebp - 0x184]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb85ca:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov ebx, dword [ebp + 8]
push ecx
mov eax, ebx
push ecx
movzx ecx, byte [ebx + 0x176b]
lea esi, [ebx + 0x1774]
push 0
mov edx, esi
push 0xf
push 1
push 0
push 1
push 2
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20
test eax, eax
jne short loc_fffb861e  ; jne 0xfffb861e
push edx
mov eax, ebx
push edx
movzx ecx, byte [ebx + 0x176b]
mov edx, esi
push 1
push 0xf
push 0
push 0
push 0
push 2
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20

loc_fffb861e:  ; not directly referenced
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

fcn_fffb8625:  ; not directly referenced
push ebp
mov ecx, 2
mov ebp, esp
lea esp, [esp - 0x10]
mov eax, dword [ebp + 8]
movzx edx, byte [eax + 0x176b]
push 0xa
push 1
call fcn_fffb03ba  ; call 0xfffb03ba
leave
ret

fcn_fffb89f8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x60]
mov eax, dword [ebp + 8]
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x20], 0x4024
mov dword [ebp - 0x24], 0
imul ebx, dword [eax + 0x1021], 0x2a
lea edx, [eax + 0x16be]
sub ebx, eax
mov dword [ebp - 0x40], edx
mov dword [ebp - 0x3c], ebx
mov dword [ebp - 0x68], edx

loc_fffb8a2e:  ; not directly referenced
imul edx, dword [ebp - 0x24], 0x1347
mov esi, dword [ebp - 0x40]
cmp dword [esi + edx + 0x12be], 2
jne loc_fffb8be5  ; jne 0xfffb8be5
mov ecx, dword [ebp - 0x3c]
add ecx, dword [ebp - 0x28]
mov edi, dword [ebp - 0x68]
mov byte [ebp - 0x10], 0
mov byte [ebp - 0xf], 2
mov byte [ebp - 0xe], 3
mov byte [ebp - 0xd], 2
cmp word [eax + ecx + 0x2988], 2
sete cl
lea edx, [edi + edx + 0x12be]
movzx ecx, cl
mov dword [ebp - 0x6c], edx
lea esi, [ecx + ecx]
mov ebx, esi
imul ecx, dword [eax + 0x1021], 0x2a
add ecx, dword [ebp - 0x6c]
mov edx, dword [eax + 0x103f]
mov byte [ebp - 0x38], bl
mov ebx, dword [ebp - 0x20]
movzx esi, word [ecx + 0xc]
lea edi, [ebx + edx - 0x20]
mov edx, dword [edi]
movzx esi, byte [ebp + esi - 0x11]
and edx, 0x3fffffff
shl esi, 0x1e
or edx, esi
mov esi, dword [ebp - 0x6c]
mov dword [edi], edx
mov dword [esi + 0x1a9], edx
mov edx, dword [eax + 0x103f]
cmp dword [eax + 0x1749], 2
lea esi, [ebx + edx - 0x18]
mov dx, word [ecx + 0xc]
mov edi, dword [esi]
mov ecx, dword [eax + 0x16c6]
jne short loc_fffb8ae4  ; jne 0xfffb8ae4
cmp ecx, 0x536
sbb edx, edx
add edx, 6
jmp short loc_fffb8b11  ; jmp 0xfffb8b11

loc_fffb8ae4:  ; not directly referenced
cmp ecx, 0x640
ja short loc_fffb8af4  ; ja 0xfffb8af4
movzx edx, dl
add edx, 4
jmp short loc_fffb8b11  ; jmp 0xfffb8b11

loc_fffb8af4:  ; not directly referenced
cmp ecx, 0x74b
ja short loc_fffb8b06  ; ja 0xfffb8b06
cmp dl, 3
sbb edx, edx
add edx, 7
jmp short loc_fffb8b11  ; jmp 0xfffb8b11

loc_fffb8b06:  ; not directly referenced
cmp ecx, 0x856
sbb edx, edx
add edx, 8

loc_fffb8b11:  ; not directly referenced
cmp edx, 0xf
mov ecx, 0xf
mov bl, byte [ebp - 0x38]
mov byte [ebp - 0x60], 0
cmovbe ecx, edx
mov edx, dword [ebp - 0x6c]
and ecx, 0xf
and edi, 0xfffffc3f
shl ecx, 6
sub ebx, 4
or edi, ecx
mov byte [ebp - 0x61], bl
mov dword [esi], edi
mov byte [ebp - 0x38], 0
mov dword [edx + 0x1b1], edi
xor esi, esi
mov byte [ebp - 0x50], 0
xor ecx, ecx

loc_fffb8b4e:  ; not directly referenced
mov edi, dword [ebp - 0x28]
mov ebx, 1
shl ebx, cl
mov byte [ebp - 0x62], cl
test byte [edi + 0x3acb], bl
je short loc_fffb8bb3  ; je 0xfffb8bb3
mov ebx, dword [ebp - 0x6c]
mov dl, byte [ebp - 0x61]
cmp cl, 2
mov bl, byte [ebx + ecx + 0x10d1]
lea edi, [edx + ebx]
mov ebx, dword [ebp - 0x6c]
mov edx, edi
mov byte [ebx + ecx + 0x10d1], dl
je short loc_fffb8ba1  ; je 0xfffb8ba1
cmp cl, 3
je short loc_fffb8bab  ; je 0xfffb8bab
cmp cl, 1
je short loc_fffb8b97  ; je 0xfffb8b97
mov esi, 0x3f
and esi, edi
jmp short loc_fffb8bb3  ; jmp 0xfffb8bb3

loc_fffb8b97:  ; not directly referenced
mov edx, edi
and edx, 0x3f
mov byte [ebp - 0x60], dl
jmp short loc_fffb8bb3  ; jmp 0xfffb8bb3

loc_fffb8ba1:  ; not directly referenced
mov ebx, edi
and ebx, 0x3f
mov byte [ebp - 0x38], bl
jmp short loc_fffb8bb3  ; jmp 0xfffb8bb3

loc_fffb8bab:  ; not directly referenced
mov edx, edi
and edx, 0x3f
mov byte [ebp - 0x50], dl

loc_fffb8bb3:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffb8b4e  ; jne 0xfffb8b4e
mov dl, byte [ebp - 0x60]
mov cl, byte [ebp - 0x38]
and edx, 0x3f
and esi, 0x3f
shl edx, 8
and ecx, 0x3f
shl ecx, 0x10
or esi, edx
mov dl, byte [ebp - 0x50]
or esi, ecx
shl edx, 0x18
or esi, edx
mov edx, dword [ebp - 0x20]
add edx, dword [eax + 0x103f]
mov dword [edx], esi

loc_fffb8be5:  ; not directly referenced
inc dword [ebp - 0x24]
add dword [ebp - 0x20], 0x400
add dword [ebp - 0x28], 0x1347
cmp dword [ebp - 0x24], 2
jne loc_fffb8a2e  ; jne 0xfffb8a2e
lea esp, [esp + 0x60]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb8d2d:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea edx, [ebp - 0x148]
push ebx
lea esp, [esp - 0x13c]
mov ebx, dword [ebp + 8]
mov eax, ebx
call fcn_fffb6ba5  ; call 0xfffb6ba5
cmp dword [ebx + 0x500a], 0
je loc_fffb8de9  ; je 0xfffb8de9
mov dx, word [ebx + 0x500e]
xor ecx, ecx
movzx eax, word [ebx + 0x5014]
cmp dx, ax
jbe short loc_fffb8d7e  ; jbe 0xfffb8d7e
movzx ecx, dx
mov edx, ecx
sub edx, eax
mov eax, edx
xor edx, edx
shl eax, 8
div ecx
mov cl, al

loc_fffb8d7e:  ; not directly referenced
mov dx, word [ebx + 0x5010]
xor esi, esi
movzx eax, word [ebx + 0x5016]
cmp dx, ax
jbe short loc_fffb8da5  ; jbe 0xfffb8da5
movzx esi, dx
mov edx, esi
sub edx, eax
mov eax, edx
xor edx, edx
shl eax, 8
div esi
mov esi, eax

loc_fffb8da5:  ; not directly referenced
movzx edi, word [ebx + 0x5012]
xor eax, eax
movzx edx, word [ebx + 0x5018]
cmp di, dx
jbe short loc_fffb8dc5  ; jbe 0xfffb8dc5
mov eax, edi
sub eax, edx
xor edx, edx
shl eax, 8
div edi

loc_fffb8dc5:  ; not directly referenced
movzx eax, al
xor edx, edx
shl eax, 0x10
mov dl, cl
mov ecx, esi
mov dh, cl
and edx, 0xff00ffff
or edx, eax
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x59b8], edx
jmp short loc_fffb8df3  ; jmp 0xfffb8df3

loc_fffb8de9:  ; not directly referenced
mov dword [ebx + 0x500a], 1

loc_fffb8df3:  ; not directly referenced
lea esp, [esp + 0x13c]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb8e54:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
mov esi, ecx
push ebx
lea esp, [esp - 0x3c]
mov dword [ebp - 0x2c], edx
call mrc_get_timestamp
add eax, 0x2710
xor ecx, ecx
mov dword [ebp - 0x34], eax
mov edx, 4
mov eax, dword [ebp + 0xc]
call mrc_setmem
mov eax, dword [ebp - 0x2c]
shl eax, 0xa
mov ebx, eax
mov dword [ebp - 0x30], eax
add ebx, 0x4214

loc_fffb8e92:  ; not directly referenced
mov edx, dword [edi + 0x103f]
add edx, ebx
mov eax, dword [edx]
mov ecx, eax
shr ecx, 0x18
test cl, cl
jns loc_fffb8f72  ; jns 0xfffb8f72
call mrc_get_timestamp
cmp dword [ebp - 0x34], eax
ja short loc_fffb8e92  ; ja 0xfffb8e92

loc_fffb8eb3:  ; not directly referenced
mov eax, 0x11
jmp near loc_fffb8fd1  ; jmp 0xfffb8fd1

loc_fffb8ebd:  ; not directly referenced
mov edx, dword [edi + 0x103f]
lea eax, [ebx + edx]
mov eax, dword [eax]
shr eax, 0x18
test al, al
jns loc_fffb8f99  ; jns 0xfffb8f99
call mrc_get_timestamp
cmp esi, eax
ja short loc_fffb8ebd  ; ja 0xfffb8ebd
jmp short loc_fffb8eb3  ; jmp 0xfffb8eb3

loc_fffb8ede:  ; not directly referenced
mov edx, dword [ebp - 0x3c]
cmp byte [edi + edx + 0x3bae], 0x20
je short loc_fffb8efc  ; je 0xfffb8efc

loc_fffb8eeb:  ; not directly referenced
movzx ecx, byte [edi + 0x1755]
lea ebx, [eax + eax]
mov dword [ebp - 0x2c], ecx
xor edx, edx
jmp short loc_fffb8f1c  ; jmp 0xfffb8f1c

loc_fffb8efc:  ; not directly referenced
test al, 1
je short loc_fffb8eeb  ; je 0xfffb8eeb
mov ecx, dword [ebp + 0xc]
mov dl, byte [ecx + eax - 1]
mov byte [ecx + eax], dl
jmp short loc_fffb8f64  ; jmp 0xfffb8f64

loc_fffb8f0c:  ; not directly referenced
mov ecx, dword [ebp - 0x34]
movzx esi, byte [ecx + edx + 0x2a6]
cmp ebx, esi
je short loc_fffb8f23  ; je 0xfffb8f23
inc edx

loc_fffb8f1c:  ; not directly referenced
cmp edx, dword [ebp - 0x2c]
jb short loc_fffb8f0c  ; jb 0xfffb8f0c
jmp short loc_fffb8f26  ; jmp 0xfffb8f26

loc_fffb8f23:  ; not directly referenced
mov dword [ebp - 0x30], edx

loc_fffb8f26:  ; not directly referenced
mov edx, eax
mov ecx, dword [ebp - 0x34]
shl edx, 4
mov dword [ebp - 0x38], edx
movzx edx, byte [ebp + eax - 0x1c]
mov dword [ebp - 0x2c], edx
mov edx, dword [ebp - 0x30]
lea esi, [ecx + edx*8]
xor edx, edx

loc_fffb8f41:  ; not directly referenced
mov cl, dl
mov ebx, dword [ebp - 0x2c]
sar ebx, cl
movzx ecx, byte [esi + edx + 0x2ae]
sub ecx, dword [ebp - 0x38]
and ebx, 1
inc edx
shl ebx, cl
mov ecx, dword [ebp + 0xc]
or byte [ecx + eax], bl
cmp edx, 8
jne short loc_fffb8f41  ; jne 0xfffb8f41

loc_fffb8f64:  ; not directly referenced
inc eax
cmp eax, 4
jne loc_fffb8ede  ; jne 0xfffb8ede
xor al, al
jmp short loc_fffb8fd1  ; jmp 0xfffb8fd1

loc_fffb8f72:  ; not directly referenced
mov al, byte [ebp + 8]
and esi, 3
shl esi, 0x10
and eax, 0xfff000ff
or eax, esi
or eax, 0x80000000
mov dword [edx], eax
call mrc_get_timestamp
lea esi, [eax + 0x2710]
jmp near loc_fffb8ebd  ; jmp 0xfffb8ebd

loc_fffb8f99:  ; not directly referenced
imul eax, dword [ebp - 0x2c], 0x2fa
mov ecx, dword [ebp - 0x30]
mov dword [ebp - 0x30], 0
lea eax, [edi + eax + 0x10bc]
mov dword [ebp - 0x34], eax
lea eax, [ecx + edx + 0x4218]
imul edx, dword [ebp - 0x2c], 0x1347
mov eax, dword [eax]
mov dword [ebp - 0x1c], eax
mov dword [ebp - 0x3c], edx
xor eax, eax
jmp near loc_fffb8ede  ; jmp 0xfffb8ede

loc_fffb8fd1:  ; not directly referenced
lea esp, [esp + 0x3c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb8fda:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
mov esi, edx
push ebx
shl esi, 0xa
lea esp, [esp - 0x1c]
mov dword [ebp - 0x24], ecx
call mrc_get_timestamp
add eax, 0x2710
mov dword [ebp - 0x1c], eax
lea eax, [esi + 0x4214]
mov dword [ebp - 0x20], eax

loc_fffb9004:  ; not directly referenced
mov edx, dword [edi + 0x103f]
mov eax, dword [ebp - 0x20]
add eax, edx
mov eax, dword [eax]
mov ecx, eax
shr ecx, 0x18
test cl, cl
jns loc_fffb90ad  ; jns 0xfffb90ad
call mrc_get_timestamp
cmp dword [ebp - 0x1c], eax
ja short loc_fffb9004  ; ja 0xfffb9004

loc_fffb9028:  ; not directly referenced
mov eax, 0x11
jmp near loc_fffb90c6  ; jmp 0xfffb90c6

loc_fffb9032:  ; not directly referenced
add edx, esi
mov ebx, dword [edx]
or ebx, 0x80000000
mov dword [edx], ebx

loc_fffb903e:  ; not directly referenced
mov al, byte [ebp + 8]
mov ecx, dword [ebp + 0x10]
mov ah, byte [ebp + 0xc]
mov edx, dword [ebp - 0x24]
or eax, 0x40000
and ecx, 1
shl ecx, 0x13
and eax, 0xfff4ffff
and edx, 3
or eax, ecx
shl edx, 0x10
or eax, edx
mov edx, dword [ebp - 0x20]
add edx, dword [edi + 0x103f]
or eax, 0x80000000
mov dword [edx], eax
call mrc_get_timestamp
add eax, 0x2710
mov dword [ebp - 0x1c], eax

loc_fffb9081:  ; not directly referenced
mov edx, dword [edi + 0x103f]
mov eax, dword [ebp - 0x20]
add eax, edx
mov eax, dword [eax]
shr eax, 0x18
test al, al
jns short loc_fffb90be  ; jns 0xfffb90be
call mrc_get_timestamp
cmp dword [ebp - 0x1c], eax
ja short loc_fffb9081  ; ja 0xfffb9081
jmp short loc_fffb9028  ; jmp 0xfffb9028

loc_fffb90a1:  ; not directly referenced
add edx, esi
and ebx, 0x7fffffff
mov dword [edx], ebx
jmp short loc_fffb90c4  ; jmp 0xfffb90c4

loc_fffb90ad:  ; not directly referenced
add esi, 0x4010
cmp dword [ebp + 0x14], 0
je short loc_fffb903e  ; je 0xfffb903e
jmp near loc_fffb9032  ; jmp 0xfffb9032

loc_fffb90be:  ; not directly referenced
cmp dword [ebp + 0x14], 0
jne short loc_fffb90a1  ; jne 0xfffb90a1

loc_fffb90c4:  ; not directly referenced
xor eax, eax

loc_fffb90c6:  ; not directly referenced
lea esp, [esp + 0x1c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb90cf:  ; not directly referenced
imul edx, edx, 0x1347
push ebp
mov ebp, esp
push esi
mov esi, ecx
push ebx
lea ebx, [eax + edx + 0x297c]
mov edx, dword [ebx + 0xf5]
cmp edx, 1
je short loc_fffb9147  ; je 0xfffb9147
cmp edx, 2
jne loc_fffb928b  ; jne 0xfffb928b
mov cl, byte [ebx + 0x122e]
cmp cl, 1
jne short loc_fffb911f  ; jne 0xfffb911f
mov dl, byte [ebx + 0x1329]
cmp dl, 1
je loc_fffb928f  ; je 0xfffb928f
cmp dl, 2
je loc_fffb9296  ; je 0xfffb9296
jmp near loc_fffb928b  ; jmp 0xfffb928b

loc_fffb911f:  ; not directly referenced
xor edx, edx
cmp cl, 2
jne loc_fffb92ca  ; jne 0xfffb92ca
mov cl, byte [ebx + 0x1329]
cmp cl, 1
je loc_fffb929d  ; je 0xfffb929d
cmp cl, 2
jne loc_fffb92ca  ; jne 0xfffb92ca
jmp near loc_fffb92a4  ; jmp 0xfffb92a4

loc_fffb9147:  ; not directly referenced
mov dl, byte [ebx + 0x122e]
cmp dl, 1
je loc_fffb92ab  ; je 0xfffb92ab
mov cl, byte [ebx + 0x1329]
cmp cl, 1
je loc_fffb92ab  ; je 0xfffb92ab
cmp dl, 2
je loc_fffb92af  ; je 0xfffb92af
cmp cl, 2
je loc_fffb92af  ; je 0xfffb92af
jmp near loc_fffb928b  ; jmp 0xfffb928b

loc_fffb917c:  ; not directly referenced
mov eax, dword [eax + 0x1005]
cmp eax, HASWELL_FAMILY_GT3E
sete cl
cmp eax, HASWELL_FAMILY_MOBILE
sete al
xor edx, edx
or cl, al
je loc_fffb92ca  ; je 0xfffb92ca
and esi, 0xff
imul esi, esi, 6
add ebx, esi
lea edx, [ebx + ebx + ref_fffcbd0c]  ; lea edx, [ebx + ebx - 0x342f4]
jmp near loc_fffb92ca  ; jmp 0xfffb92ca

loc_fffb91b3:  ; not directly referenced
mov eax, dword [eax + 0x1005]
xor edx, edx
cmp eax, HASWELL_FAMILY_ULT
jne short loc_fffb91da  ; jne 0xfffb91da
cmp ebx, 1
ja loc_fffb92ca  ; ja 0xfffb92ca
mov ecx, esi
movzx edx, cl
lea edx, [ebx + edx*2]
lea edx, [edx + edx + ref_fffcbd24]  ; lea edx, [edx + edx - 0x342dc]

loc_fffb91da:  ; not directly referenced
cmp eax, HASWELL_FAMILY_GT3E
sete cl
cmp eax, HASWELL_FAMILY_MOBILE
sete al
or cl, al
je loc_fffb92ca  ; je 0xfffb92ca
and esi, 0xff
imul esi, esi, 6
add ebx, esi
lea edx, [ebx + ebx + ref_fffcbd2c]  ; lea edx, [ebx + ebx - 0x342d4]
jmp near loc_fffb92ca  ; jmp 0xfffb92ca

loc_fffb9209:  ; not directly referenced
mov eax, dword [eax + 0x1005]
cmp eax, HASWELL_FAMILY_GT3E
sete cl
cmp eax, HASWELL_FAMILY_MOBILE
sete al
xor edx, edx
or cl, al
je loc_fffb92ca  ; je 0xfffb92ca
and esi, 0xff
imul esi, esi, 6
add ebx, esi
lea edx, [ebx + ebx + ref_fffcbd44]  ; lea edx, [ebx + ebx - 0x342bc]
jmp near loc_fffb92ca  ; jmp 0xfffb92ca

loc_fffb9240:  ; not directly referenced
mov eax, dword [eax + 0x1005]
xor edx, edx
cmp eax, HASWELL_FAMILY_ULT
jne short loc_fffb9263  ; jne 0xfffb9263
cmp ebx, 1
ja short loc_fffb92ca  ; ja 0xfffb92ca
mov ecx, esi
movzx edx, cl
lea edx, [ebx + edx*2]
lea edx, [edx + edx + ref_fffcbcec]  ; lea edx, [edx + edx - 0x34314]

loc_fffb9263:  ; not directly referenced
cmp eax, HASWELL_FAMILY_GT3E
sete cl
cmp eax, HASWELL_FAMILY_MOBILE
sete al
or cl, al
je short loc_fffb92ca  ; je 0xfffb92ca
and esi, 0xff
imul esi, esi, 6
add ebx, esi
lea edx, [ebx + ebx + ref_fffcbcf4]  ; lea edx, [ebx + ebx - 0x3430c]
jmp short loc_fffb92ca  ; jmp 0xfffb92ca

loc_fffb928b:  ; not directly referenced
xor edx, edx
jmp short loc_fffb92ca  ; jmp 0xfffb92ca

loc_fffb928f:  ; not directly referenced
mov ebx, 2
jmp short loc_fffb92b4  ; jmp 0xfffb92b4

loc_fffb9296:  ; not directly referenced
mov ebx, 3
jmp short loc_fffb92b4  ; jmp 0xfffb92b4

loc_fffb929d:  ; not directly referenced
mov ebx, 4
jmp short loc_fffb92b4  ; jmp 0xfffb92b4

loc_fffb92a4:  ; not directly referenced
mov ebx, 5
jmp short loc_fffb92b4  ; jmp 0xfffb92b4

loc_fffb92ab:  ; not directly referenced
xor ebx, ebx
jmp short loc_fffb92b4  ; jmp 0xfffb92b4

loc_fffb92af:  ; not directly referenced
mov ebx, 1

loc_fffb92b4:  ; not directly referenced
cmp dword [eax + 0xffd], 6
ja short loc_fffb928b  ; ja 0xfffb928b
mov edx, dword [eax + 0xffd]
jmp dword [edx*4 + ref_fffcbcd0]  ; ujmp: jmp dword [edx*4 - 0x34330]

loc_fffb92ca:  ; not directly referenced
pop ebx
mov eax, edx
pop esi
pop ebp
ret

fcn_fffb92d0:  ; not directly referenced
push ebp
test cl, cl
mov ebp, esp
push esi
push ebx
je short loc_fffb92f7  ; je 0xfffb92f7
cmp cl, 0x3c
je short loc_fffb92fb  ; je 0xfffb92fb
cmp cl, 0x78
je short loc_fffb9303  ; je 0xfffb9303
cmp cl, 0x28
je short loc_fffb9309  ; je 0xfffb9309
cmp cl, 0x14
mov bl, 1
je short loc_fffb930f  ; je 0xfffb930f
cmp cl, 0x1e
setne cl
jmp short loc_fffb92ff  ; jmp 0xfffb92ff

loc_fffb92f7:  ; not directly referenced
xor ebx, ebx
jmp short loc_fffb930f  ; jmp 0xfffb930f

loc_fffb92fb:  ; not directly referenced
xor ebx, ebx
xor ecx, ecx

loc_fffb92ff:  ; not directly referenced
mov dl, 1
jmp short loc_fffb9313  ; jmp 0xfffb9313

loc_fffb9303:  ; not directly referenced
xor ebx, ebx
mov cl, 1
jmp short loc_fffb9311  ; jmp 0xfffb9311

loc_fffb9309:  ; not directly referenced
xor ebx, ebx
mov cl, 1
jmp short loc_fffb92ff  ; jmp 0xfffb92ff

loc_fffb930f:  ; not directly referenced
xor ecx, ecx

loc_fffb9311:  ; not directly referenced
xor edx, edx

loc_fffb9313:  ; not directly referenced
and edx, 1
and ecx, 1
shl ecx, 6
and ebx, 1
shl ebx, 9
lea esi, [edx*4]
mov edx, dword [ebp + 8]
and edx, 0xffffffbb
or edx, esi
or edx, ecx
and dh, 0xfd
or edx, ebx
mov word [eax], dx
pop ebx
pop esi
pop ebp
ret

fcn_fffb933f:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, 4
push ebx
mov ebx, eax
lea esp, [esp - 0x5c]
mov byte [ebp - 0x1e], dl
mov byte [ebp - 0x20], cl
mov dl, byte [ebp + 0x14]
movzx ecx, byte [ebp - 0x1e]
mov byte [ebp - 0x1f], dl
imul edx, ecx, 0x1347
mov dword [ebp - 0x24], ecx
mov ecx, dword [ebx + 0x103f]
mov al, byte [ebp + 8]
mov byte [ebp - 0x58], al
mov edi, dword [ebp + 0xc]
mov dword [ebp - 0x1c], 0
mov byte [ebp - 0x1d], 0
lea eax, [ebx + edx + 0x297c]
mov byte [ecx + 0x4c31], 0
cmp byte [eax + 0x120f], 1
sete byte [ebp - 0x38]
mov cl, byte [ebp - 0x38]
or ecx, 2
cmp byte [eax + 0x130a], 1
mov al, byte [ebp - 0x38]
cmove eax, ecx
mov ecx, dword [ebp - 0x24]
shl ecx, 0xa
mov byte [ebp - 0x38], al
mov eax, dword [ebx + 0x103f]
mov dword [ebp - 0x28], ecx
and esi, edi
add edx, ebx
mov dword [ebp - 0x40], edx
lea eax, [ecx + eax + 0x41bc]
mov ecx, edi
mov byte [eax], 0
mov eax, edi
and eax, 2
and ecx, 1
shr al, 1
add ecx, ecx
or eax, esi
or eax, ecx
mov ecx, eax
mov eax, edi
shl ecx, 0x18
movzx edi, al
mov dword [ebp - 0x3c], ecx
mov dword [ebp - 0x44], edi

loc_fffb93f4:  ; not directly referenced
mov edx, dword [ebp - 0x40]
mov edi, dword [ebp - 0x1c]
mov ecx, edi
mov esi, 1
shl esi, cl
mov al, byte [edx + 0x3acb]
and eax, esi
test byte [ebp - 0x20], al
je loc_fffb94b6  ; je 0xfffb94b6
mov ecx, dword [ebp - 0x44]
xor edx, edx
and ecx, 7
mov eax, ecx
mov ecx, edi
shr cl, 1
mov edi, dword [ebp + 0x10]
movzx ecx, cl
shl eax, 0x18
test byte [ebp - 0x1c], 1
mov di, word [edi + ecx*2]
mov word [ebp - 0x68], di
mov ax, di
je short loc_fffb946f  ; je 0xfffb946f
lea edi, [ecx + 1]
mov cl, byte [ebp - 0x38]
test edi, ecx
je short loc_fffb946f  ; je 0xfffb946f
and ax, 0x150
mov edx, dword [ebp - 0x68]
mov ecx, dword [ebp - 0x68]
and dx, 0xfe07
shr ax, 1
and ecx, 0xa8
mov edi, dword [ebp - 0x3c]
or eax, edx
add ecx, ecx
xor edx, edx
or eax, ecx
movzx ecx, ax
lea eax, [edi + ecx]

loc_fffb946f:  ; not directly referenced
mov cl, byte [ebp - 0x58]
mov dword [ebp - 0x48], edx
and ecx, 7
or dword [ebp - 0x48], 0xf000000
mov edx, dword [ebp - 0x48]
mov edi, ecx
mov ecx, edx
not esi
shl edi, 8
and ch, 0xf8
or ecx, edi
and esi, 0xf
and ecx, 0xfffffff0
mov edx, ecx
push ecx
or edx, esi
push ecx
mov ecx, dword [ebp - 0x28]
push edx
add ecx, 0x41c0
push eax
mov edx, ecx
mov eax, ebx
call MCHBAR_WRITE64
inc byte [ebp - 0x1d]
add esp, 0x10

loc_fffb94b6:  ; not directly referenced
inc dword [ebp - 0x1c]
cmp dword [ebp - 0x1c], 4
jne loc_fffb93f4  ; jne 0xfffb93f4
cmp byte [ebp - 0x1d], 0
jne short loc_fffb94d3  ; jne 0xfffb94d3

loc_fffb94c9:  ; not directly referenced
mov eax, 1
jmp near loc_fffb9584  ; jmp 0xfffb9584

loc_fffb94d3:  ; not directly referenced
mov dl, byte [ebp - 0x1f]
mov al, 3
and edx, 7
cmp byte [ebp - 0x1f], 0
mov edi, dword [ebp - 0x28]
cmovne eax, edx
mov dl, byte [ebp - 0x1d]
dec edx
and eax, 7
and edx, 7
shl edx, 0x10
or eax, edx
mov edx, dword [ebx + 0x103f]
lea edx, [edi + edx + 0x419c]
mov edi, dword [ebp - 0x24]
mov dword [edx], eax
mov esi, dword [ebx + 0x103f]
lea ecx, [edi*8 + 0x48a8]
add esi, ecx
mov edx, dword [esi]
mov eax, edx
and ah, 0xc7
or ah, 0x20
mov dword [esi], eax
lea eax, [edi*4 + 0x48b8]
mov dword [ebp - 0x1c], eax
add eax, dword [ebx + 0x103f]
mov byte [eax], 5
mov esi, dword [ebx + 0x103f]
lea edi, [esi + 0x4804]

loc_fffb9540:  ; not directly referenced
cmp byte [ebp - 0x1e], 0
mov eax, dword [edi]
jne short loc_fffb9551  ; jne 0xfffb9551
test al, 1
je short loc_fffb955a  ; je 0xfffb955a
jmp near loc_fffb94c9  ; jmp 0xfffb94c9

loc_fffb9551:  ; not directly referenced
test al, 2
je short loc_fffb9565  ; je 0xfffb9565
jmp near loc_fffb94c9  ; jmp 0xfffb94c9

loc_fffb955a:  ; not directly referenced
shr eax, 0x10
and eax, 1
xor eax, 1
jmp short loc_fffb9570  ; jmp 0xfffb9570

loc_fffb9565:  ; not directly referenced
shr eax, 0x10
shr al, 1
xor eax, 1
and eax, 1

loc_fffb9570:  ; not directly referenced
test al, al
jne short loc_fffb9540  ; jne 0xfffb9540
add esi, dword [ebp - 0x1c]
xor eax, eax
mov byte [esi], 4
add ecx, dword [ebx + 0x103f]
mov dword [ecx], edx

loc_fffb9584:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb958c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
lea eax, [eax + 0x16be]
push ebx
lea esp, [esp - 0x3c]
mov dword [ebp - 0x30], ecx
mov ecx, dword [esi + 0x1749]
cmp dword [ebp - 0x30], 1
mov dword [ebp - 0x44], eax
mov dword [ebp - 0x48], ecx
je short loc_fffb95de  ; je 0xfffb95de
jb short loc_fffb95c7  ; jb 0xfffb95c7
cmp dword [ebp - 0x30], 2
je short loc_fffb95ce  ; je 0xfffb95ce
cmp dword [ebp - 0x30], 3
jne loc_fffb96c2  ; jne 0xfffb96c2
jmp short loc_fffb95d5  ; jmp 0xfffb95d5

loc_fffb95c7:  ; not directly referenced
mov edi, 0xff
jmp short loc_fffb95e3  ; jmp 0xfffb95e3

loc_fffb95ce:  ; not directly referenced
mov edi, 0x56
jmp short loc_fffb95da  ; jmp 0xfffb95da

loc_fffb95d5:  ; not directly referenced
mov edi, 0xc3

loc_fffb95da:  ; not directly referenced
xor eax, eax
jmp short loc_fffb95e8  ; jmp 0xfffb95e8

loc_fffb95de:  ; not directly referenced
mov edi, 0xab

loc_fffb95e3:  ; not directly referenced
mov eax, 0x400

loc_fffb95e8:  ; not directly referenced
movzx edx, dl
mov word [ebp - 0x1c], ax
mov word [ebp - 0x1a], ax
xor ebx, ebx
mov byte [ebp - 0x35], 1
mov dword [ebp - 0x34], 0
mov dword [ebp - 0x40], edx

loc_fffb9603:  ; not directly referenced
imul eax, ebx, 0x1347
mov edx, dword [ebp - 0x44]
mov dword [ebp - 0x3c], eax
cmp dword [edx + eax + 0x12be], 2
jne loc_fffb96a4  ; jne 0xfffb96a4
mov ecx, dword [ebp - 0x40]
bt ecx, ebx
jae short loc_fffb96a4  ; jae 0xfffb96a4
lea eax, [ebx + 1]
bt ecx, eax
jb short loc_fffb963c  ; jb 0xfffb963c
mov dl, byte [ebp - 0x35]
cmp dword [ebp - 0x30], 2
mov al, 7
cmove edx, eax
mov byte [ebp - 0x35], dl

loc_fffb963c:  ; not directly referenced
cmp dword [ebp - 0x48], 2
jne short loc_fffb9683  ; jne 0xfffb9683
mov dword [ebp - 0x2c], 0

loc_fffb9649:  ; not directly referenced
mov edx, dword [ebp - 0x3c]
mov cl, byte [ebp - 0x2c]
mov eax, 1
shl eax, cl
test byte [esi + edx + 0x3acb], al
je short loc_fffb9678  ; je 0xfffb9678
push 0
mov ecx, dword [ebp - 0x2c]
mov edx, ebx
push 0
mov eax, esi
push edi
push 0xa
call fcn_fffb8fda  ; call 0xfffb8fda
mov dword [ebp - 0x34], eax
add esp, 0x10

loc_fffb9678:  ; not directly referenced
inc dword [ebp - 0x2c]
cmp dword [ebp - 0x2c], 4
jne short loc_fffb9649  ; jne 0xfffb9649
jmp short loc_fffb96a4  ; jmp 0xfffb96a4

loc_fffb9683:  ; not directly referenced
movzx eax, byte [ebp - 0x35]
lea ecx, [ebp - 0x1c]
push eax
mov edx, ebx
mov eax, esi
push ecx
mov ecx, 0xf
push 0
push 6
call fcn_fffb933f  ; call 0xfffb933f
mov dword [ebp - 0x34], eax
add esp, 0x10

loc_fffb96a4:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffb9603  ; jne 0xfffb9603
cmp dword [ebp - 0x30], 1
ja short loc_fffb96c9  ; ja 0xfffb96c9
mov edx, 0xf
mov eax, esi
call fcn_fffb2d76  ; call 0xfffb2d76
jmp short loc_fffb96c9  ; jmp 0xfffb96c9

loc_fffb96c2:  ; not directly referenced
mov dword [ebp - 0x34], 2

loc_fffb96c9:  ; not directly referenced
mov eax, dword [ebp - 0x34]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffb96d4:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
lea esp, [esp - 0x10]
cmp cl, 3
mov ebx, dword [ebp + 0xc]
mov esi, dword [ebp + 8]
ja short loc_fffb96f4  ; ja 0xfffb96f4
mov word [ebp - 0xc], bx
mov word [ebp - 0xa], 0
jmp short loc_fffb96fe  ; jmp 0xfffb96fe

loc_fffb96f4:  ; not directly referenced
mov word [ebp - 0xc], 0
mov word [ebp - 0xa], bx

loc_fffb96fe:  ; not directly referenced
push 0
lea ebx, [ebp - 0xc]
and esi, 0xff
push ebx
movzx ecx, cl
push esi
movzx edx, dl
push 0
call fcn_fffb933f  ; call 0xfffb933f
lea esp, [ebp - 8]
pop ebx
pop esi
pop ebp
ret

loc_fffb971f:
db 0x00

fcn_fffb9720:
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x48]
mov edx, dword [ebp + 8]
mov eax, dword [edx]
lea edx, [ebp - 0x28]
push edx
push 0
push 0
push ref_fffcca3c  ; push 0xfffcca3c
push dword [ebp + 8]
call dword [eax + 0x20]  ; ucall
mov ebx, dword [ebp - 0x28]
mov eax, dword [0xf0000060]
and eax, 0xfc000000
movzx edx, byte [ebx + 1]
shl edx, 0x14
lea eax, [edx + eax + 0xf80f0]
mov ecx, dword [eax]
mov eax, dword [ebx + 2]
and ecx, 0x3fff
or eax, 1
or eax, ecx
mov ecx, dword [0xf0000060]
and ecx, 0xfc000000
lea edx, [edx + ecx + 0xf80f0]
mov dword [edx], eax
mov eax, dword [ebp - 0x28]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
movzx ecx, word [eax + 6]
movzx eax, byte [eax + 1]
shl eax, 0x14
lea eax, [edx + eax + 0xf8040]
mov dword [eax], ecx
mov eax, dword [ebp - 0x28]
add esp, 0x20
mov edx, dword [0xf0000060]
cmp word [eax + 6], 0
movzx eax, byte [eax + 1]
je short loc_fffb97d3  ; je 0xfffb97d3
shl eax, 0x14
and edx, 0xfc000000
lea edx, [eax + edx + 0xf8044]
mov dl, byte [edx]
or edx, 0xffffff80
jmp short loc_fffb97e8  ; jmp 0xfffb97e8

loc_fffb97d3:
shl eax, 0x14
and edx, 0xfc000000
lea edx, [eax + edx + 0xf8044]
mov dl, byte [edx]
and edx, 0x7f

loc_fffb97e8:
mov ecx, dword [0xf0000060]
and ecx, 0xfc000000
lea eax, [eax + ecx + 0xf8044]
mov byte [eax], dl
mov eax, dword [ebp - 0x28]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
movzx eax, byte [eax + 1]
shl eax, 0x14
lea edx, [eax + edx + 0xf80a6]
mov dl, byte [edx]
mov ecx, dword [0xf0000060]
and ecx, 0xfc000000
or edx, 2
lea eax, [eax + ecx + 0xf80a6]
mov byte [eax], dl
mov eax, dword [ebp - 0x28]
mov edx, dword [0xf0000060]
and edx, 0xfc000000
movzx ecx, word [eax + 8]
movzx eax, byte [eax + 1]
shl eax, 0x14
lea eax, [edx + eax + 0xf8048]
mov dword [eax], ecx
mov eax, dword [ebp - 0x28]
mov edx, dword [0xf0000060]
cmp word [eax + 8], 0
movzx eax, byte [eax + 1]
je short loc_fffb9882  ; je 0xfffb9882
shl eax, 0x14
and edx, 0xfc000000
lea edx, [eax + edx + 0xf804c]
mov dl, byte [edx]
or edx, 0x10
jmp short loc_fffb9897  ; jmp 0xfffb9897

loc_fffb9882:
shl eax, 0x14
and edx, 0xfc000000
lea edx, [eax + edx + 0xf804c]
mov dl, byte [edx]
and edx, 0xffffffef

loc_fffb9897:
mov ecx, dword [0xf0000060]
and ecx, 0xfc000000
lea eax, [eax + ecx + 0xf804c]
mov byte [eax], dl
mov ecx, dword [ebp - 0x28]
mov ebx, dword [0xf0000060]
mov eax, dword [ecx + 0x26]
movzx ecx, byte [ecx + 1]
mov dl, byte [eax]
and edx, 2
cmp dl, 1
sbb eax, eax
and eax, 0xffffffe0
dec eax
cmp dl, 1
sbb edx, edx
and ebx, 0xfc000000
shl ecx, 0x14
not edx
and edx, 0x22
lea ebx, [ecx + ebx + 0xf80dc]
mov bl, byte [ebx]
and eax, ebx
or eax, edx
mov edx, dword [0xf0000060]
and edx, 0xfc000000
lea edx, [ecx + edx + 0xf80dc]
mov byte [edx], al
mov ebx, dword [ebp - 0x28]
call mrc_sku_type
mov dword [ebp - 0x38], eax
mov ebx, dword [ebx + 2]
mov dword [ebp - 0x2c], ebx
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov edx, dword [0xf0000060]
and edx, 0xfc000000
mov dword [ebp - 0x34], edx
mov ecx, dword [0xf0000060]
and ecx, 0xfc000000
mov dword [ebp - 0x40], ecx
mov ax, word [eax + 0xf8002]
call mrc_pch_revision
and eax, 0xff
cmp eax, 6
mov dword [ebp - 0x30], eax
ja short loc_fffb9964  ; ja 0xfffb9964
movzx ecx, byte [eax + ref_fffcbd5c]  ; movzx ecx, byte [eax - 0x342a4]
mov ebx, dword [eax*4 + ref_fffcbd64]  ; mov ebx, dword [eax*4 - 0x3429c]
mov dword [ebp - 0x3c], ecx
jmp short loc_fffb996d  ; jmp 0xfffb996d

loc_fffb9964:
xor ebx, ebx
mov dword [ebp - 0x3c], 0

loc_fffb996d:
lea eax, [ebp - 0x20]
call PeiServiceGetBootMode  ; call 0xfffbf908
cmp dword [ebp - 0x20], 0x11
je loc_fffb9a24  ; je 0xfffb9a24
mov esi, dword [ebp + 8]
lea edx, [ebp - 0x24]
mov eax, dword [esi]
push edx
push 0x11d
push 4
push esi
call dword [eax + 0x34]  ; ucall
mov edx, eax
mov eax, dword [ebp - 0x24]
mov esi, ref_fffcbd80  ; mov esi, 0xfffcbd80
mov ecx, 4
lea edi, [eax + 8]
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov ecx, dword [ebp - 0x3c]
mov byte [eax + 0x1c], 0
mov dword [eax + 0x18], ecx
mov eax, dword [0xf00b004c]
mov dword [0xf00b004c], 0x70000001
mov esi, 0x186a0
add esp, 0x10

loc_fffb99c8:
mov eax, 1
mov dword [ebp - 0x48], edx
call usleep
dec esi
mov eax, dword [0xf00b0040]
mov edx, dword [ebp - 0x48]
je short loc_fffb9a24  ; je 0xfffb9a24
shr eax, 0x18
and eax, 0xfffffff0
cmp al, 0x70
jne short loc_fffb99c8  ; jne 0xfffb99c8
test edx, edx
jne short loc_fffb9a24  ; jne 0xfffb9a24
mov eax, dword [0xf00b0068]
mov edx, dword [0xf00b004c]
mov dword [0xf00b004c], 0x70000000
test ebx, ebx
je short loc_fffb9a24  ; je 0xfffb9a24
cmp eax, dword [ebx]
je short loc_fffb9a24  ; je 0xfffb9a24
mov eax, dword [ebp - 0x24]
mov ecx, dword [ebp - 0x3c]
mov edx, ebx
mov byte [eax + 0x1c], 1
add eax, 0x1d
call mrc_memcpy
jmp near loc_fffb9cc6  ; jmp 0xfffb9cc6

loc_fffb9a24:
mov eax, dword [ebp - 0x2c]
mov dword [eax + 0x2088], 0x109000
mov edx, dword [ebp - 0x2c]
mov eax, dword [edx + 0x20ac]
or eax, 0x40000000
mov dword [edx + 0x20ac], eax
cmp dword [ebp - 0x38], 1
jne short loc_fffb9a72  ; jne 0xfffb9a72
mov byte [edx + 0x2340], 0x1b
mov eax, dword [edx + 0x2340]
and eax, 0xff00ffff
or eax, 0x3a0000
mov dword [edx + 0x2340], eax
mov dword [edx + 0x2324], 0x854c74

loc_fffb9a72:
mov ecx, dword [ebp - 0x34]
mov edx, dword [ebp - 0x34]
cmp dword [ebp - 0x38], 1
mov cl, byte [ecx + 0xe0410]
mov edx, dword [edx + 0xe00fc]
mov byte [ebp - 0x3c], cl
mov dword [ebp - 0x34], edx
je short loc_fffb9a9c  ; je 0xfffb9a9c

loc_fffb9a90:
cmp dword [ebp - 0x30], 6
jbe short loc_fffb9ad8  ; jbe 0xfffb9ad8
xor ebx, ebx
xor edi, edi
jmp short loc_fffb9ae9  ; jmp 0xfffb9ae9

loc_fffb9a9c:
xor ebx, ebx
mov eax, ref_fffcca58  ; mov eax, 0xfffcca58
cmp dword [ebp - 0x30], 0
cmove ebx, eax
cmp dword [ebp - 0x30], 1
sbb esi, esi
xor edi, edi
and esi, 4
jmp short loc_fffb9ad1  ; jmp 0xfffb9ad1

loc_fffb9ab7:
sub esp, 0xc
mov ecx, dword [ebx + 4]
push dword [ebx + 8]
mov eax, dword [ebp - 0x2c]
mov edx, dword [ebx]
call mrc_pch_iobp_update
inc edi
add ebx, 0xc
add esp, 0x10

loc_fffb9ad1:
cmp di, si
jne short loc_fffb9ab7  ; jne 0xfffb9ab7
jmp short loc_fffb9a90  ; jmp 0xfffb9a90

loc_fffb9ad8:
mov ecx, dword [ebp - 0x30]
movzx edi, byte [ecx + ref_fffcbd90]  ; movzx edi, byte [ecx - 0x34270]
mov ebx, dword [ecx*4 + ref_fffcbd98]  ; mov ebx, dword [ecx*4 - 0x34268]

loc_fffb9ae9:
xor esi, esi
jmp short loc_fffb9b07  ; jmp 0xfffb9b07

loc_fffb9aed:
sub esp, 0xc
mov ecx, dword [ebx + 4]
push dword [ebx + 8]
mov eax, dword [ebp - 0x2c]
mov edx, dword [ebx]
call mrc_pch_iobp_update
inc esi
add ebx, 0xc
add esp, 0x10

loc_fffb9b07:
cmp si, di
jne short loc_fffb9aed  ; jne 0xfffb9aed
cmp dword [ebp - 0x30], 6
ja short loc_fffb9b25  ; ja 0xfffb9b25
mov esi, dword [ebp - 0x30]
movzx edi, byte [esi + ref_fffcbdb4]  ; movzx edi, byte [esi - 0x3424c]
mov esi, dword [esi*4 + ref_fffcbdbc]  ; mov esi, dword [esi*4 - 0x34244]
jmp short loc_fffb9b29  ; jmp 0xfffb9b29

loc_fffb9b25:
xor esi, esi
xor edi, edi

loc_fffb9b29:
imul edi, edi, 0xc
mov dl, byte [ebp - 0x3c]
and edx, 3
mov bl, byte [ebp - 0x3c]
add edi, esi
mov byte [ebp - 0x41], dl
and ebx, 0xc
jmp short loc_fffb9b9d  ; jmp 0xfffb9b9d

loc_fffb9b3f:
cmp dword [ebp - 0x38], 2
jne short loc_fffb9b5e  ; jne 0xfffb9b5e
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2400
jne short loc_fffb9b55  ; jne 0xfffb9b55
jmp short loc_fffb9b7e  ; jmp 0xfffb9b7e

loc_fffb9b55:
cmp eax, 0x2600
jne short loc_fffb9b84  ; jne 0xfffb9b84
jmp short loc_fffb9b72  ; jmp 0xfffb9b72

loc_fffb9b5e:
cmp dword [ebp - 0x38], 1
jne short loc_fffb9b84  ; jne 0xfffb9b84
mov eax, dword [esi]
and eax, 0xfe00
cmp eax, 0x2c00
jne short loc_fffb9b77  ; jne 0xfffb9b77

loc_fffb9b72:
cmp bl, 8
jmp short loc_fffb9b82  ; jmp 0xfffb9b82

loc_fffb9b77:
cmp eax, 0x2e00
jne short loc_fffb9b84  ; jne 0xfffb9b84

loc_fffb9b7e:
cmp byte [ebp - 0x41], 2

loc_fffb9b82:
jne short loc_fffb9b9a  ; jne 0xfffb9b9a

loc_fffb9b84:
sub esp, 0xc
mov ecx, dword [esi + 4]
push dword [esi + 8]
mov eax, dword [ebp - 0x2c]
mov edx, dword [esi]
call mrc_pch_iobp_update
add esp, 0x10

loc_fffb9b9a:
add esi, 0xc

loc_fffb9b9d:
cmp esi, edi
jne short loc_fffb9b3f  ; jne 0xfffb9b3f
cmp dword [ebp - 0x30], 6
ja loc_fffb9c2b  ; ja 0xfffb9c2b
mov ecx, dword [ebp - 0x30]
mov eax, dword [ecx*4 + ref_fffcbdd8]  ; mov eax, dword [ecx*4 - 0x34228]
test eax, eax
je short loc_fffb9c2b  ; je 0xfffb9c2b
test dword [ebp - 0x34], 0x80000
je short loc_fffb9c2b  ; je 0xfffb9c2b
mov edx, dword [ebp - 0x34]
and edx, 0x70000
shr edx, 0x10
cmp dword [ebp - 0x38], 2
mov cl, dl
jne short loc_fffb9bdd  ; jne 0xfffb9bdd
cmp dl, 5
ja short loc_fffb9c2b  ; ja 0xfffb9c2b
jmp short loc_fffb9c10  ; jmp 0xfffb9c10

loc_fffb9bdd:
cmp dword [ebp - 0x38], 1
jne short loc_fffb9c2b  ; jne 0xfffb9c2b
test dl, dl
jne short loc_fffb9bf3  ; jne 0xfffb9bf3
mov dl, byte [ebp - 0x3c]
and edx, 3
dec dl
jne short loc_fffb9c2b  ; jne 0xfffb9c2b
jmp short loc_fffb9c15  ; jmp 0xfffb9c15

loc_fffb9bf3:
dec cl
jne short loc_fffb9c10  ; jne 0xfffb9c10
mov dl, byte [ebp - 0x3c]
and edx, 0xc
cmp dl, 4
jne short loc_fffb9c2b  ; jne 0xfffb9c2b
sub esp, 0xc
mov ecx, dword [eax + 0x10]
mov edx, dword [eax + 0xc]
push dword [eax + 0x14]
jmp short loc_fffb9c20  ; jmp 0xfffb9c20

loc_fffb9c10:
imul edx, edx, 0xc
add eax, edx

loc_fffb9c15:
sub esp, 0xc
mov ecx, dword [eax + 4]
push dword [eax + 8]
mov edx, dword [eax]

loc_fffb9c20:
mov eax, dword [ebp - 0x2c]
call mrc_pch_iobp_update
add esp, 0x10

loc_fffb9c2b:
call mrc_sku_type
cmp eax, 2
je short loc_fffb9c90  ; je 0xfffb9c90

loc_fffb9c35:
mov esi, dword [ebp - 0x40]
mov eax, dword [esi + 0xa00b0]
and al, 0x7f
or eax, 0x10000
mov dword [esi + 0xa00b0], eax
call mrc_sku_type
cmp eax, 2
jne short loc_fffb9cc6  ; jne 0xfffb9cc6
jmp short loc_fffb9c9d  ; jmp 0xfffb9c9d

loc_fffb9c57:
movzx edx, bl
mov eax, dword [0xf0000060]
shl edx, 0xc
and eax, 0xfc000000
add eax, edx
mov edx, dword [eax + 0xe0110]
or edx, 0x31c1
mov dword [eax + 0xe0110], edx
mov edx, dword [eax + 0xe0104]
or edx, 0x17d010
mov dword [eax + 0xe0104], edx
inc ebx
jmp short loc_fffb9c92  ; jmp 0xfffb9c92

loc_fffb9c90:
xor ebx, ebx

loc_fffb9c92:
call nb_usb3_ports
cmp bl, al
jb short loc_fffb9c57  ; jb 0xfffb9c57
jmp short loc_fffb9c35  ; jmp 0xfffb9c35

loc_fffb9c9d:
mov eax, dword [ebp - 0x2c]
mov word [eax + 0x260c], 0x10
sub esp, 0xc
mov ecx, 0xffffceff
push 0x3100
mov edx, 0xec000106
mov eax, dword [ebp - 0x2c]
call mrc_pch_iobp_update
add esp, 0x10

loc_fffb9cc6:
mov ebx, dword [ebp - 0x28]
mov eax, dword [ebx + 2]
mov cl, byte [eax + 0x3414]
mov dx, word [eax + 0x3804]
and dh, 0x40
jne short loc_fffb9ce2  ; jne 0xfffb9ce2

loc_fffb9cde:
xor edx, edx
jmp short loc_fffb9d10  ; jmp 0xfffb9d10

loc_fffb9ce2:
mov edx, dword [eax + 0x38b0]
and edx, 0xffff8003
mov dword [eax + 0x38b0], edx
mov edx, dword [eax + 0x38b4]
cmp edx, 0xff0a55a
jne short loc_fffb9cde  ; jne 0xfffb9cde
mov eax, dword [eax + 0x3860]
cmp eax, 0x7fff
setne dl

loc_fffb9d10:
and cl, 0x20
mov eax, dword [ebx + 0xa]
je short loc_fffb9d22  ; je 0xfffb9d22
test byte [eax], 1
jne short loc_fffb9d2b  ; jne 0xfffb9d2b
jmp near loc_fffb9e3f  ; jmp 0xfffb9e3f

loc_fffb9d22:
test byte [eax], 1
jne loc_fffb9e3f  ; jne 0xfffb9e3f

loc_fffb9d2b:
mov ecx, dword [ebp + 8]
sub esp, 0xc
mov eax, dword [ecx]
lea ecx, [ebp - 0x20]
push ecx
mov byte [ebp - 0x48], dl
push 0
push 0
push ref_fffcca88  ; push 0xfffcca88
push dword [ebp + 8]
call dword [eax + 0x20]  ; ucall
mov eax, dword [ebx + 2]
add esp, 0x20
mov dl, byte [ebp - 0x48]
mov cl, byte [eax + 0x3420]
test cl, cl
jns short loc_fffb9d6b  ; jns 0xfffb9d6b
push ebx
mov eax, dword [ebp - 0x20]
push ebx
push 4
push eax
call dword [eax]  ; ucall
jmp near loc_fffb9e3c  ; jmp 0xfffb9e3c

loc_fffb9d6b:
mov ecx, dword [ebx + 0xa]
test byte [ecx], 1
mov cl, 0
je short loc_fffb9d90  ; je 0xfffb9d90
dec dl
jne loc_fffb9e07  ; jne 0xfffb9e07
mov dl, byte [eax + 0x3414]
and edx, 0xffffffdf
mov byte [eax + 0x3414], dl
mov cl, 1
jmp short loc_fffb9e07  ; jmp 0xfffb9e07

loc_fffb9d90:
dec dl
jne short loc_fffb9df5  ; jne 0xfffb9df5
mov eax, dword [0xf0000060]
mov ecx, dword [ebx + 0x26]
movzx edx, byte [ebx + 1]
and eax, 0xfc000000
shl edx, 0x14
add eax, edx
mov ecx, dword [ecx + 1]
mov edx, dword [eax + 0xc8010]
mov dword [eax + 0xc8010], ecx
mov si, word [eax + 0xc8004]
mov cx, word [eax + 0xc8004]
or ecx, 2
mov word [eax + 0xc8004], cx
mov ecx, dword [eax + 0xc8010]
and ecx, 0xffff8000
mov cx, word [ecx + 0x5b54]
mov word [eax + 0xc8004], si
shr cx, 0xf
mov dword [eax + 0xc8010], edx

loc_fffb9df5:
mov edx, dword [ebx + 2]
mov al, byte [edx + 0x3414]
or eax, 0x20
mov byte [edx + 0x3414], al

loc_fffb9e07:
mov eax, dword [ebx + 2]
test cl, cl
mov dl, byte [eax + 0x3414]
je short loc_fffb9e3f  ; je 0xfffb9e3f
mov edx, dword [eax + 0x3428]
mov eax, 3
and dl, 2
jne short loc_fffb9e33  ; jne 0xfffb9e33
mov eax, dword [ebx + 0x26]
mov al, byte [eax]
and eax, 1
cmp al, 1
sbb eax, eax
add eax, 5

loc_fffb9e33:
push ecx
mov edx, dword [ebp - 0x20]
push ecx
push eax
push edx
call dword [edx]  ; ucall

loc_fffb9e3c:
add esp, 0x10

loc_fffb9e3f:
mov ebx, dword [ebp - 0x28]
mov byte [ebp - 0x1c], 0x1d
mov byte [ebp - 0x1b], 0
mov byte [ebp - 0x1a], 0x1a
mov byte [ebp - 0x19], 0
call mrc_sku_type
movzx edx, byte [ebx + 1]
mov dword [ebp - 0x38], eax
shl edx, 0x14
mov esi, dword [0xf0000060]
and esi, 0xfc000000
mov dword [ebp - 0x2c], esi
mov eax, dword [0xf0000060]
and eax, 0xfc000000
cmp dword [ebp - 0x38], 1
mov dword [ebp - 0x30], 0
lea edi, [edx + eax]
jne short loc_fffb9e9c  ; jne 0xfffb9e9c
mov eax, dword [0xf0000060]
and eax, 0xfc000000
add eax, 0xfd000
mov dword [ebp - 0x30], eax

loc_fffb9e9c:
mov esi, dword [ebp - 0x2c]
mov edx, dword [0xf0000060]
mov ecx, dword [ebx + 0x12]
mov dword [ebp - 0x3c], edx
mov dword [ebp - 0x40], ecx
mov eax, dword [esi + 0xf80ac]
and eax, 0xffefffff
mov dword [esi + 0xf80ac], eax
xor esi, esi
mov byte [ebp - 0x34], 0
jmp short loc_fffb9f28  ; jmp 0xfffb9f28

loc_fffb9ec7:
movzx edx, byte [ebx + 1]
mov eax, dword [0xf0000060]
shl edx, 0x14
and eax, 0xfc000000
movzx ecx, byte [ebp - 0x34]
add eax, edx
mov edx, ecx
shl edx, 0xc
add eax, edx
mov dx, word [eax + 0xe0000]
inc dx
je short loc_fffb9f25  ; je 0xfffb9f25
mov edx, dword [ebx + 0x1e]
cmp dword [edx + ecx*4], 1
mov dx, word [eax + 0xe0070]
setne cl
and edx, 0xf
movzx ecx, cl
inc ecx
cmp dx, cx
je short loc_fffb9f25  ; je 0xfffb9f25
mov si, word [eax + 0xe0070]
and esi, 0xfffffff0
or esi, ecx
mov word [eax + 0xe0070], si
mov esi, 1

loc_fffb9f25:
inc byte [ebp - 0x34]

loc_fffb9f28:
call nb_usb3_ports
cmp byte [ebp - 0x34], al
jb short loc_fffb9ec7  ; jb 0xfffb9ec7
mov eax, esi
test al, al
je short loc_fffb9f42  ; je 0xfffb9f42
mov eax, 0x186a0
call usleep

loc_fffb9f42:
xor edx, edx
jmp short loc_fffb9f95  ; jmp 0xfffb9f95

loc_fffb9f46:
movzx ecx, byte [ebx + 1]
mov eax, dword [0xf0000060]
shl ecx, 0x14
and eax, 0xfc000000
add eax, ecx
movzx ecx, dl
shl ecx, 0xc
add eax, ecx
mov cx, word [eax + 0xe0000]
inc cx
je short loc_fffb9f94  ; je 0xfffb9f94
mov ecx, dword [eax + 0xe0338]
and ecx, 0xfbffffff
mov dword [eax + 0xe0338], ecx
test dl, dl
jne short loc_fffb9f94  ; jne 0xfffb9f94
mov cl, byte [eax + 0xe00f4]
and ecx, 0x1f
or ecx, 0xffffff80
mov byte [eax + 0xe00f4], cl

loc_fffb9f94:
inc edx

loc_fffb9f95:
mov byte [ebp - 0x48], dl
call nb_usb3_ports
mov dl, byte [ebp - 0x48]
cmp dl, al
jb short loc_fffb9f46  ; jb 0xfffb9f46
mov byte [ebp - 0x34], 0
jmp short loc_fffb9ff7  ; jmp 0xfffb9ff7

loc_fffb9faa:
movzx edx, byte [ebp - 0x34]
mov eax, dword [0xf0000060]
movzx ecx, byte [ebx + 1]
and eax, 0xfc000000
shl ecx, 0x14
movzx esi, byte [ebp + edx*2 - 0x1c]
shl esi, 0xf
add ecx, esi
movzx esi, byte [ebp + edx*2 - 0x1b]
shl esi, 0xc
add ecx, esi
lea eax, [ecx + eax + 0x88]
mov eax, dword [eax]
mov esi, dword [0xf0000060]
and esi, 0xfc000000
and eax, 0xfffffffb
lea ecx, [ecx + esi + 0x88]
mov dword [ecx], eax
inc byte [ebp - 0x34]

loc_fffb9ff7:
call mrc_sku_type
dec eax
cmp eax, 1
ja short loc_fffba00d  ; ja 0xfffba00d
mov dl, byte [ebp - 0x34]
cmp dl, byte [eax + ref_fffcb998]  ; cmp dl, byte [eax - 0x34668]
jb short loc_fffb9faa  ; jb 0xfffb9faa

loc_fffba00d:
mov ecx, dword [ebp - 0x40]
cmp byte [ecx], 1
jne short loc_fffba04c  ; jne 0xfffba04c
mov esi, dword [ebp - 0x40]
mov ecx, dword [ebx + 2]
mov eax, dword [esi + 1]
mov edx, dword [ecx + 0x3404]
shr eax, 0xc
and edx, 0xfffffffc
and eax, 3
or al, 0x80
or eax, edx
mov dword [ecx + 0x3404], eax
mov eax, dword [ebx + 2]
mov edx, dword [esi + 1]
mov eax, dword [eax + 0x3404]
mov eax, dword [edx + 0x10]
or eax, 1
mov dword [edx + 0x10], eax

loc_fffba04c:
mov eax, dword [ebx + 2]
cmp dword [ebx + 0x16], 0
mov edx, dword [eax + 0x3410]
jne short loc_fffba060  ; jne 0xfffba060
and edx, 0xfffffffb
jmp short loc_fffba063  ; jmp 0xfffba063

loc_fffba060:
or edx, 4

loc_fffba063:
mov dword [eax + 0x3410], edx
mov eax, dword [ebx + 2]
cmp dword [ebp - 0x38], 1
mov edx, dword [eax + 0x3410]
mov edx, dword [ebx + 0x1a]
jne loc_fffba13a  ; jne 0xfffba13a
cmp dword [edx], 0
jne loc_fffba11d  ; jne 0xfffba11d
mov eax, dword [edi + 0xfa034]
xor al, al
or eax, 0x70
mov dword [edi + 0xfa034], eax
mov eax, dword [edi + 0xfa070]
xor ah, ah
mov dword [edi + 0xfa070], eax
mov al, byte [edi + 0xfa090]
and eax, 0x1f
mov byte [edi + 0xfa090], al
mov eax, dword [ebp - 0x3c]
and eax, 0xfc000000
mov dl, byte [eax + 0xe0410]
and edx, 0x30
cmp dl, 0x30
jne short loc_fffba0e2  ; jne 0xfffba0e2
mov edx, dword [ebx + 2]
mov eax, dword [edx + 0x3418]
or eax, 0x2000000
mov dword [edx + 0x3418], eax
jmp short loc_fffba12f  ; jmp 0xfffba12f

loc_fffba0e2:
mov dl, byte [eax + 0xe0410]
and dl, 0x10
jne short loc_fffba0ff  ; jne 0xfffba0ff
mov ecx, dword [ebp - 0x30]
mov dl, byte [ecx + 0x92]
or edx, 1
mov byte [ecx + 0x92], dl

loc_fffba0ff:
mov al, byte [eax + 0xe0410]
test al, 0x20
jne short loc_fffba16a  ; jne 0xfffba16a
mov esi, dword [ebp - 0x30]
mov al, byte [esi + 0x92]
or eax, 2
mov byte [esi + 0x92], al
jmp short loc_fffba16a  ; jmp 0xfffba16a

loc_fffba11d:
mov edx, dword [eax + 0x3418]
or edx, 0x2000000
mov dword [eax + 0x3418], edx

loc_fffba12f:
mov eax, dword [ebx + 2]
mov eax, dword [eax + 0x3418]
jmp short loc_fffba16a  ; jmp 0xfffba16a

loc_fffba13a:
cmp dword [ebp - 0x38], 2
jne short loc_fffba16a  ; jne 0xfffba16a
cmp dword [edx], 3
jne short loc_fffba16a  ; jne 0xfffba16a
mov al, byte [edi + 0xfa090]
and eax, 0x3f
mov byte [edi + 0xfa090], al
mov byte [edi + 0xfa0a0], 0
mov eax, dword [edi + 0xfa0a4]
or ah, 0x80
mov dword [edi + 0xfa0a4], eax

loc_fffba16a:
mov eax, dword [ebx + 0x1a]
cmp dword [eax], 2
jne short loc_fffba18e  ; jne 0xfffba18e
mov edx, dword [ebp - 0x2c]
mov ax, word [edx + 0xf8002]
mov al, byte [edi + 0xfa090]
and eax, 0x3f
or eax, 0xffffff80
mov byte [edi + 0xfa090], al

loc_fffba18e:
cmp dword [ebp - 0x38], 2
jne short loc_fffba1df  ; jne 0xfffba1df
sub esp, 0xc
mov ebx, dword [ebx + 2]
push 0x3700
mov ecx, 0xfffff7ff
mov edx, 0xed00015c
mov eax, ebx
call mrc_pch_iobp_update
or ecx, 0xffffffff
mov edx, 0xed000118
mov eax, ebx
mov dword [esp], 0xc00000
call mrc_pch_iobp_update
or ecx, 0xffffffff
mov edx, 0xed000120
mov eax, ebx
mov dword [esp], 0x240000
call mrc_pch_iobp_update
add esp, 0x10

loc_fffba1df:
mov edx, dword [ebp - 0x28]

push edx
call frag_fffba1df
add esp, 4

loc_fffba341:
mov eax, dword [ebp - 0x28]
mov esi, dword [eax + 0x22]
mov ebx, dword [eax + 2]

push esi
push ebx
call frag_fffba341
add esp, 8

loc_fffba3f0:
mov edx, dword [ebp + 8]
push eax
push eax
mov eax, dword [edx]
push ref_fffcca4c  ; push 0xfffcca4c
push edx
call dword [eax + 0x18]  ; ucall
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffba408:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x2cc]
mov ebx, dword [ebp + 8]
cmp dword [ebx + 0x1749], 2
mov al, byte [ebx + 0x176a]
sete cl
mov byte [ebp - 0x2c0], al
cmp ecx, 1
mov dl, byte [ebx + 0x1742]
mov byte [ebp - 0x2c4], dl
mov dword [ebp - 0x290], ecx
sbb eax, eax
mov ecx, 0xf4240
and eax, 0xfffffc00
lea esi, [ebx + 0x16be]
movzx edx, word [ebx + 0x1766]
add eax, 0x800
imul eax, edx
xor edx, edx
add eax, 0x7a120
mov dword [ebp - 0x2b8], esi
div ecx
lea esi, [ebx + 0x2974]
mov byte [ebx + 0x1742], 0
xor edi, edi
mov dword [ebp - 0x280], esi
mov dword [ebp - 0x278], eax

loc_fffba490:  ; not directly referenced
imul eax, edi, 0x1347
mov esi, dword [ebp - 0x2b8]
cmp dword [esi + eax + 0x12be], 2
je short loc_fffba4b2  ; je 0xfffba4b2

loc_fffba4a6:  ; not directly referenced
inc edi
cmp edi, 2
je loc_fffba53a  ; je 0xfffba53a
jmp short loc_fffba490  ; jmp 0xfffba490

loc_fffba4b2:  ; not directly referenced
mov edx, dword [ebp - 0x280]
mov esi, dword [ebx + 0x103f]
lea ecx, [edx + eax + 8]
mov edx, edi
shl edx, 8
mov eax, dword [ecx + 0x141]
and eax, 0xff0fffff
or eax, 0x200000
lea esi, [edx + esi + 0x3074]
add edx, 0x64
mov dword [ebp - 0x284], edx
mov dword [esi], eax
xor edx, edx
jmp short loc_fffba52d  ; jmp 0xfffba52d

loc_fffba4ed:  ; not directly referenced
movzx esi, dl
mov eax, dword [ecx + esi*4 + 0x169]
mov dword [ebp - 0x288], esi
or eax, 0x20
and eax, 0xffffffbf
mov esi, eax
or esi, 0x40000
cmp dword [ebp - 0x290], 0
cmovne eax, esi
mov esi, dword [ebp - 0x288]
shl esi, 9
add esi, dword [ebp - 0x284]
add esi, dword [ebx + 0x103f]
inc edx
mov dword [esi], eax

loc_fffba52d:  ; not directly referenced
cmp dl, byte [ebx + 0x1755]
jb short loc_fffba4ed  ; jb 0xfffba4ed
jmp near loc_fffba4a6  ; jmp 0xfffba4a6

loc_fffba53a:  ; not directly referenced
imul edi, dword [ebp - 0x278], 0xf
mov dword [ebp - 0x284], 0
mov dword [ebp - 0x2bc], edi

loc_fffba551:  ; not directly referenced
mov dl, byte [ebp - 0x284]
mov eax, 1
mov cl, dl
mov esi, eax
shl esi, cl
mov dword [ebp - 0x298], esi
mov cl, byte [ebp - 0x298]
mov byte [ebp - 0x27c], cl
mov cl, byte [ebp - 0x2c0]
test byte [ebp - 0x27c], cl
jne short loc_fffba5b1  ; jne 0xfffba5b1

loc_fffba582:  ; not directly referenced
inc dword [ebp - 0x284]
cmp dword [ebp - 0x284], 4
jne short loc_fffba551  ; jne 0xfffba551
lea esi, [ebx + 0x2974]
mov eax, 0x3074
mov dword [ebp - 0x27c], 0
mov dword [ebp - 0x280], esi
jmp near loc_fffbad60  ; jmp 0xfffbad60

loc_fffba5b1:  ; not directly referenced
shr dl, 1
mov ecx, dword [ebp - 0x284]
movzx esi, dl
add ecx, 2
and ecx, 2
mov byte [ebp - 0x2ac], dl
imul edi, esi, 0xfb
mov dword [ebp - 0x278], 0
shl eax, cl
mov dword [ebp - 0x288], esi
mov ecx, eax
mov al, byte [ebp - 0x298]
or eax, ecx
mov dword [ebp - 0x294], edi
mov byte [ebp - 0x28c], al

loc_fffba5f6:  ; not directly referenced
mov al, byte [ebp - 0x298]
mov byte [ebp - 0x2a8], al
mov dl, byte [ebp - 0x2a8]
imul eax, dword [ebp - 0x278], 0x1347
test byte [ebx + eax + 0x3acb], dl
je loc_fffba787  ; je 0xfffba787
cmp dword [ebp - 0x290], 0
lea edi, [ebx + eax + 0x297c]
je short loc_fffba66d  ; je 0xfffba66d
mov eax, dword [ebp - 0x284]
mov ecx, dword [ebp - 0x284]
and eax, 1
mov edx, dword [ebp - 0x278]
imul eax, eax, 0xa
add eax, dword [ebp - 0x294]
push 0
push 0
mov ax, word [edi + eax + 0x123c]
or al, 0x80
movzx eax, ax
push eax
mov eax, ebx
push 2
call fcn_fffb8fda  ; call 0xfffb8fda
jmp near loc_fffba720  ; jmp 0xfffba720

loc_fffba66d:  ; not directly referenced
mov eax, dword [ebp - 0x284]
mov ecx, dword [ebp - 0x288]
and eax, 1
mov edx, dword [ebp - 0x278]
imul eax, eax, 0xa
add eax, dword [ebp - 0x294]
mov si, word [edi + eax + 0x123a]
mov eax, ebx
call fcn_fffb90cf  ; call 0xfffb90cf
or si, 0x80
test eax, eax
mov dword [ebp - 0x280], eax
je loc_fffbb7e5  ; je 0xfffbb7e5
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffba6d7  ; jne 0xfffba6d7
sub esp, 0xc
mov edx, ebx
movzx ecx, byte [eax]
lea eax, [ebp - 0x26a]
push esi
call fcn_fffb92d0  ; call 0xfffb92d0
mov si, word [ebp - 0x26a]
add esp, 0x10

loc_fffba6d7:  ; not directly referenced
cmp dword [edi + 0xf5], 2
jne short loc_fffba704  ; jne 0xfffba704
mov eax, dword [ebp - 0x280]
sub esp, 0xc
mov edx, ebx
movzx ecx, byte [eax]
lea eax, [ebp - 0x26a]
push esi
call fcn_fffb92d0  ; call 0xfffb92d0
mov si, word [ebp - 0x26a]
add esp, 0x10

loc_fffba704:  ; not directly referenced
push eax
movzx ecx, byte [ebp - 0x298]
mov edx, dword [ebp - 0x278]
push eax
movzx eax, si
push eax
mov eax, ebx
push 1
call fcn_fffb96d4  ; call 0xfffb96d4

loc_fffba720:  ; not directly referenced
mov cl, byte [ebp - 0x28c]
add esp, 0x10
mov dl, byte [ebp - 0x27c]
cmp dword [edi + 0xf5], 2
cmove edx, ecx
mov eax, dword [ebp - 0x290]
neg eax
mov esi, edx
mov edx, dword [ebx + 0x1005]
and eax, 0x10001
cmp edx, HASWELL_FAMILY_GT3E
sete cl
cmp edx, HASWELL_FAMILY_MOBILE
sete dl
or cl, dl
je short loc_fffba76f  ; je 0xfffba76f
mov eax, esi
and eax, 0xf
shl eax, 0x10
or eax, 0xf

loc_fffba76f:  ; not directly referenced
mov ecx, dword [ebp - 0x278]
mov edx, dword [ebx + 0x103f]
shl ecx, 0xa
lea edx, [ecx + edx + 0x4194]
mov dword [edx], eax

loc_fffba787:  ; not directly referenced
inc dword [ebp - 0x278]
cmp dword [ebp - 0x278], 2
jne loc_fffba5f6  ; jne 0xfffba5f6
mov edi, dword [ebp - 0x284]
mov esi, 0xc0
and edi, 3
shl edi, 0x16
mov dword [ebp - 0x29c], edi
jmp near loc_fffbab18  ; jmp 0xfffbab18

loc_fffba7b6:  ; not directly referenced
imul eax, dword [ebp - 0x280], 0x1347
mov dl, byte [ebp - 0x2a8]
test byte [ebx + eax + 0x3acb], dl
jne short loc_fffba7e3  ; jne 0xfffba7e3

loc_fffba7cf:  ; not directly referenced
inc dword [ebp - 0x280]
cmp dword [ebp - 0x280], 2
jne short loc_fffba7b6  ; jne 0xfffba7b6
jmp near loc_fffba86f  ; jmp 0xfffba86f

loc_fffba7e3:  ; not directly referenced
mov eax, dword [ebx + eax + 0x2abd]
mov edi, dword [ebp - 0x29c]
and eax, 0xff0fff7d
mov byte [ebp - 0x27c], 0
or eax, 0x200082
or eax, edi
mov dword [ebp - 0x278], eax
mov eax, dword [ebp - 0x280]
shl eax, 8
add eax, 0x74
mov dword [ebp - 0x288], eax
jmp short loc_fffba85c  ; jmp 0xfffba85c

loc_fffba81d:  ; not directly referenced
push eax
movzx edi, byte [ebp - 0x27c]
mov eax, ebx
push esi
mov ecx, dword [ebp - 0x284]
mov edx, dword [ebp - 0x280]
push 1
push edi
shl edi, 9
call fcn_fffb02b4  ; call 0xfffb02b4
add edi, dword [ebp - 0x288]
add edi, dword [ebx + 0x103f]
mov eax, dword [ebp - 0x278]
inc byte [ebp - 0x27c]
add esp, 0x10
mov dword [edi], eax

loc_fffba85c:  ; not directly referenced
mov dl, byte [ebp - 0x27c]
cmp dl, byte [ebx + 0x1755]
jb short loc_fffba81d  ; jb 0xfffba81d
jmp near loc_fffba7cf  ; jmp 0xfffba7cf

loc_fffba86f:  ; not directly referenced
cmp si, 0xc0
mov word [ebp - 0x2a4], si
jne short loc_fffba88a  ; jne 0xfffba88a
mov edx, dword [ebp - 0x2bc]
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76

loc_fffba88a:  ; not directly referenced
mov eax, ebx
lea edi, [ebp - 0x1c8]
call wait_5030
mov edx, dword [ebp - 0x2bc]
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
lea ecx, [ebp - 0x180]
lea eax, [ebp - 0x138]
mov dword [ebp - 0x270], ecx
mov dword [ebp - 0x288], edi
mov dword [ebp - 0x278], eax
lea edx, [ebp - 0x60]
lea ecx, [ebp - 0xa8]
lea eax, [esi - 2]
mov dword [ebp - 0x28c], ebx
lea edi, [ebp - 0xf0]
mov dword [ebp - 0x280], edx
mov dword [ebp - 0x27c], ecx
mov dword [ebp - 0x294], 0x54
mov dword [ebp - 0x2b4], eax

loc_fffba8f6:  ; not directly referenced
mov ecx, dword [ebp - 0x28c]
mov dl, byte [ebp - 0x2a8]
test byte [ecx + 0x3acb], dl
je short loc_fffba929  ; je 0xfffba929
mov al, byte [ebx + 0x1755]
mov edx, dword [ebp - 0x294]
mov byte [ebp - 0x2cc], al
mov dword [ebp - 0x2a0], edx
xor eax, eax
jmp near loc_fffbaafc  ; jmp 0xfffbaafc

loc_fffba929:  ; not directly referenced
add dword [ebp - 0x28c], 0x1347
add dword [ebp - 0x294], 0x100
add dword [ebp - 0x270], 0x24
add dword [ebp - 0x288], 0x24
add edi, 0x24
add dword [ebp - 0x278], 0x24
add dword [ebp - 0x280], 0x24
add dword [ebp - 0x27c], 0x24
cmp dword [ebp - 0x294], 0x254
jne short loc_fffba8f6  ; jne 0xfffba8f6
jmp near loc_fffbab0d  ; jmp 0xfffbab0d

loc_fffba974:  ; not directly referenced
mov edx, dword [ebp - 0x2a0]
add edx, dword [ebx + 0x103f]
mov edx, dword [edx]
and edx, 0x1ff
cmp edx, 0xf
setg dl
cmp word [ebp - 0x2a4], 0xc0
movzx edx, dl
jne loc_fffbaa3e  ; jne 0xfffbaa3e
test edx, edx
je short loc_fffba9f1  ; je 0xfffba9f1
mov ecx, dword [ebp - 0x270]
mov edx, dword [ebp - 0x288]
mov dword [edi + eax*4], 0xc0
mov dword [ecx + eax*4], 0xc0
mov ecx, dword [ebp - 0x278]
mov dword [edx + eax*4], 0xc0
mov edx, dword [ebp - 0x280]
mov dword [ecx + eax*4], 0xc0
mov ecx, dword [ebp - 0x27c]
mov dword [edx + eax*4], 0xc0
mov dword [ecx + eax*4], 0xc0
jmp near loc_fffbaaf1  ; jmp 0xfffbaaf1

loc_fffba9f1:  ; not directly referenced
mov edx, dword [ebp - 0x270]
mov ecx, dword [ebp - 0x288]
mov dword [edi + eax*4], 0xfffffffe
mov dword [edx + eax*4], 0xfffffffe
mov edx, dword [ebp - 0x278]
mov dword [ecx + eax*4], 0xfffffffe
mov ecx, dword [ebp - 0x280]
mov dword [edx + eax*4], 0xfffffffe
mov edx, dword [ebp - 0x27c]
mov dword [ecx + eax*4], 0xfffffffe
mov dword [edx + eax*4], 0xfffffffe
jmp near loc_fffbaaf1  ; jmp 0xfffbaaf1

loc_fffbaa3e:  ; not directly referenced
test edx, edx
je loc_fffbaaf1  ; je 0xfffbaaf1
mov ecx, dword [ebp - 0x270]
mov edx, dword [ebp - 0x2b4]
cmp dword [ecx + eax*4], edx
jne short loc_fffbaa5a  ; jne 0xfffbaa5a
mov dword [ecx + eax*4], esi

loc_fffbaa5a:  ; not directly referenced
mov ecx, dword [ebp - 0x2b4]
cmp dword [edi + eax*4], ecx
mov dword [edi + eax*4], esi
jne short loc_fffbaa6a  ; jne 0xfffbaa6a
jmp short loc_fffbaa73  ; jmp 0xfffbaa73

loc_fffbaa6a:  ; not directly referenced
mov edx, dword [ebp - 0x278]
mov dword [edx + eax*4], esi

loc_fffbaa73:  ; not directly referenced
cmp esi, 0x13e
jne short loc_fffbaa9f  ; jne 0xfffbaa9f
mov ecx, dword [ebp - 0x288]
cmp dword [ecx + eax*4], 0xc0
jne short loc_fffbaa9f  ; jne 0xfffbaa9f
mov edx, dword [ebp - 0x270]
mov edx, dword [edx + eax*4]
mov dword [ebp - 0x2d4], edx
sub edx, 0xffffffffffffff80
mov dword [edi + eax*4], edx

loc_fffbaa9f:  ; not directly referenced
mov edx, dword [ebp - 0x278]
mov ecx, dword [edi + eax*4]
mov dword [ebp - 0x2b0], ecx
mov edx, dword [edx + eax*4]
sub ecx, edx
mov dword [ebp - 0x2c8], edx
mov edx, dword [ebp - 0x280]
mov dword [ebp - 0x2d0], ecx
mov ecx, dword [edx + eax*4]
mov edx, dword [ebp - 0x27c]
sub ecx, dword [edx + eax*4]
cmp dword [ebp - 0x2d0], ecx
jle short loc_fffbaaf1  ; jle 0xfffbaaf1
mov ecx, dword [ebp - 0x2c8]
mov dword [edx + eax*4], ecx
mov edx, dword [ebp - 0x280]
mov ecx, dword [ebp - 0x2b0]
mov dword [edx + eax*4], ecx

loc_fffbaaf1:  ; not directly referenced
inc eax
add dword [ebp - 0x2a0], 0x200

loc_fffbaafc:  ; not directly referenced
cmp byte [ebp - 0x2cc], al
ja loc_fffba974  ; ja 0xfffba974
jmp near loc_fffba929  ; jmp 0xfffba929

loc_fffbab0d:  ; not directly referenced
add esi, 2
cmp esi, 0x140
je short loc_fffbab27  ; je 0xfffbab27

loc_fffbab18:  ; not directly referenced
mov dword [ebp - 0x280], 0
jmp near loc_fffba7b6  ; jmp 0xfffba7b6

loc_fffbab27:  ; not directly referenced
movzx eax, byte [ebp - 0x2ac]
mov dword [ebp - 0x278], 0
imul eax, eax, 0xfb
mov dword [ebp - 0x288], eax

loc_fffbab44:  ; not directly referenced
imul eax, dword [ebp - 0x278], 0x1347
mov dl, byte [ebp - 0x2a8]
test byte [ebx + eax + 0x3acb], dl
jne short loc_fffbab72  ; jne 0xfffbab72

loc_fffbab5d:  ; not directly referenced
inc dword [ebp - 0x278]
cmp dword [ebp - 0x278], 2
je loc_fffba582  ; je 0xfffba582
jmp short loc_fffbab44  ; jmp 0xfffbab44

loc_fffbab72:  ; not directly referenced
mov ecx, dword [ebp - 0x288]
lea eax, [ebx + eax + 0x297c]
mov edx, dword [ebp - 0x278]
mov dword [ebp - 0x27c], eax
shl edx, 0xa
cmp dword [ebp - 0x290], 0
mov cl, byte [eax + ecx + 0x1232]
mov eax, dword [ebx + 0x103f]
mov byte [ebp - 0x294], cl
lea eax, [edx + eax + 0x4194]
mov dword [eax], 0
je short loc_fffbac14  ; je 0xfffbac14
mov eax, dword [ebp - 0x284]
mov esi, dword [ebp - 0x27c]
and eax, 1
mov ecx, dword [ebp - 0x284]
imul eax, eax, 0xa
add eax, dword [ebp - 0x288]
push 0
mov edx, dword [ebp - 0x278]
push 0
movzx eax, word [esi + eax + 0x123c]
push eax
mov eax, ebx
push 2
call fcn_fffb8fda  ; call 0xfffb8fda

loc_fffbabf1:  ; not directly referenced
imul esi, dword [ebp - 0x284], 9
imul edi, dword [ebp - 0x278], 9
add esp, 0x10
mov byte [ebp - 0x280], 0
mov dword [ebp - 0x2a0], esi
jmp near loc_fffbad49  ; jmp 0xfffbad49

loc_fffbac14:  ; not directly referenced
mov eax, dword [ebp - 0x284]
movzx ecx, byte [ebp - 0x298]
and eax, 1
mov edx, dword [ebp - 0x278]
push edi
imul eax, eax, 0xa
add eax, dword [ebp - 0x288]
push edi
mov edi, dword [ebp - 0x27c]
movzx eax, word [edi + eax + 0x123a]
push eax
mov eax, ebx
push 1
call fcn_fffb96d4  ; call 0xfffb96d4
jmp short loc_fffbabf1  ; jmp 0xfffbabf1

loc_fffbac4f:  ; not directly referenced
movzx eax, byte [ebp - 0x280]
lea edx, [edi + eax]
mov ecx, dword [ebp + edx*4 - 0xa8]
mov esi, dword [ebp + edx*4 - 0x60]
sub esi, ecx
mov dword [ebp - 0x29c], ecx
sub esi, 0x21
cmp esi, 0x3e
ja loc_fffbb7ec  ; ja 0xfffbb7ec
cmp byte [ebp - 0x294], 0x10
jne short loc_fffbace2  ; jne 0xfffbace2
test byte [ebp - 0x280], 1
je short loc_fffbace2  ; je 0xfffbace2
mov cl, byte [ebp - 0x280]
lea esi, [ecx - 1]
and esi, 0xff
lea ecx, [edi + esi]
mov ecx, dword [ebp + ecx*4 - 0xa8]
add ecx, 0x40
cmp dword [ebp - 0x29c], ecx
jle short loc_fffbacbe  ; jle 0xfffbacbe
mov ecx, dword [ebp - 0x29c]
add ecx, 0xffffffffffffff80
mov dword [ebp + edx*4 - 0xa8], ecx

loc_fffbacbe:  ; not directly referenced
add esi, edi
lea edx, [edi + eax]
mov ecx, dword [ebp + edx*4 - 0xa8]
mov esi, dword [ebp + esi*4 - 0xa8]
sub esi, 0x40
cmp ecx, esi
jge short loc_fffbace2  ; jge 0xfffbace2
sub ecx, 0xffffffffffffff80
mov dword [ebp + edx*4 - 0xa8], ecx

loc_fffbace2:  ; not directly referenced
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffbacf9  ; jne 0xfffbacf9
lea edx, [edi + eax]
add dword [ebp + edx*4 - 0xa8], 0x40

loc_fffbacf9:  ; not directly referenced
lea edx, [edi + eax]
mov esi, dword [ebp - 0x27c]
mov ecx, dword [ebp + edx*4 - 0xa8]
mov edx, dword [ebp - 0x2a0]
add edx, eax
mov word [esi + edx*2 + 0x1dd], cx
add ecx, 0x20
mov word [esi + edx*2 + 0x225], cx
mov ecx, dword [ebp - 0x284]
push esi
mov edx, dword [ebp - 0x278]
push 0
push 0xff
push eax
mov eax, ebx
call fcn_fffb02b4  ; call 0xfffb02b4
inc byte [ebp - 0x280]
add esp, 0x10

loc_fffbad49:  ; not directly referenced
mov al, byte [ebp - 0x280]
cmp al, byte [ebx + 0x1755]
jb loc_fffbac4f  ; jb 0xfffbac4f
jmp near loc_fffbab5d  ; jmp 0xfffbab5d

loc_fffbad60:  ; not directly referenced
imul edx, dword [ebp - 0x27c], 0x1347
mov esi, dword [ebp - 0x2b8]
cmp dword [esi + edx + 0x12be], 2
je short loc_fffbad90  ; je 0xfffbad90

loc_fffbad7a:  ; not directly referenced
inc dword [ebp - 0x27c]
add eax, 0x100
cmp dword [ebp - 0x27c], 2
je short loc_fffbadee  ; je 0xfffbadee
jmp short loc_fffbad60  ; jmp 0xfffbad60

loc_fffbad90:  ; not directly referenced
mov ecx, dword [ebp - 0x280]
lea esi, [eax - 0x3010]
mov dword [ebp - 0x278], esi
lea edi, [ecx + edx + 8]
mov edx, dword [ebx + 0x103f]
add edx, eax
mov ecx, dword [edi + 0x141]
mov dword [edx], ecx
xor edx, edx
jmp short loc_fffbade4  ; jmp 0xfffbade4

loc_fffbadba:  ; not directly referenced
movzx esi, dl
inc edx
mov ecx, dword [edi + esi*4 + 0x169]
mov dword [ebp - 0x284], ecx
mov ecx, esi
shl ecx, 9
add ecx, dword [ebp - 0x278]
add ecx, dword [ebx + 0x103f]
mov esi, dword [ebp - 0x284]
mov dword [ecx], esi

loc_fffbade4:  ; not directly referenced
cmp dl, byte [ebx + 0x1755]
jb short loc_fffbadba  ; jb 0xfffbadba
jmp short loc_fffbad7a  ; jmp 0xfffbad7a

loc_fffbadee:  ; not directly referenced
cmp dword [ebp - 0x290], 0
je loc_fffbaf58  ; je 0xfffbaf58

loc_fffbadfb:  ; not directly referenced
mov al, byte [ebp - 0x2c4]
lea edi, [ebp - 0x1f4]
mov byte [ebx + 0x1742], al
mov ecx, 0xb
xor eax, eax
mov esi, ref_fffcbdf4  ; mov esi, 0xfffcbdf4
rep stosd  ; rep stosd dword es:[edi], eax
lea edi, [ebp - 0x25a]
mov cl, 7
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
lea edi, [ebp - 0x253]
mov esi, ref_fffcbdfc  ; mov esi, 0xfffcbdfc
mov cl, 7
lea edx, [ebp - 0x243]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
lea edi, [ebp - 0x220]
mov esi, ref_fffcbe04  ; mov esi, 0xfffcbe04
mov cl, 3
mov word [ebp - 0x1e6], 0x3ff
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
lea edi, [ebp - 0x214]
mov esi, ref_fffcbe10  ; mov esi, 0xfffcbe10
mov cl, 3
mov word [ebp - 0x1ca], 1
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
lea esi, [ebp - 0x233]
mov cl, 8
mov eax, esi
mov byte [ebp - 0x25f], 0
mov byte [ebp - 0x25e], 1
mov byte [ebp - 0x25d], 0xff
mov byte [ebp - 0x25c], 2
mov byte [ebp - 0x25b], 3
mov byte [ebp - 0x243], 0
mov byte [ebp - 0x242], 0
mov byte [ebp - 0x241], 1
mov byte [ebp - 0x240], 1
mov byte [ebp - 0x23f], 1
mov byte [ebp - 0x23e], 1
mov byte [ebp - 0x23d], 0
mov byte [ebp - 0x23c], 0
mov byte [ebp - 0x23b], 0
mov byte [ebp - 0x23a], 0xff
mov byte [ebp - 0x239], 0xff
mov byte [ebp - 0x238], 0
mov byte [ebp - 0x237], 0xc3
mov byte [ebp - 0x236], 0x3c
mov byte [ebp - 0x235], 0x3c
mov byte [ebp - 0x234], 0xc3
mov word [ebp - 0x22b], 1
mov dword [ebp - 0x229], 0
mov dword [ebp - 0x225], 3
mov byte [ebp - 0x221], 0
call mrc_memcpy
xor ecx, ecx
mov edx, 8
lea eax, [ebp - 0x24c]
call mrc_setmem
xor edx, edx
cmp dword [ebx + 0x1749], 2
sete dl
xor edi, edi
mov dword [ebp - 0x2bc], edx
jmp short loc_fffbaf6c  ; jmp 0xfffbaf6c

loc_fffbaf58:  ; not directly referenced
mov eax, ebx
call fcn_fffc43c7  ; call 0xfffc43c7
test eax, eax
je loc_fffbadfb  ; je 0xfffbadfb
jmp near loc_fffbb811  ; jmp 0xfffbb811

loc_fffbaf6c:  ; not directly referenced
push ecx
lea edx, [ebp + edi*2 - 0x23b]
mov eax, ebx
push ecx
mov ecx, esi
push edi
inc edi
push 8
call fcn_fffb1ee8  ; call 0xfffb1ee8
add esp, 0x10
cmp edi, 4
jne short loc_fffbaf6c  ; jne 0xfffbaf6c
lea edx, [ebp - 0x220]
mov eax, ebx
call fcn_fffb2062  ; call 0xfffb2062
mov cl, byte [ebx + 0x176a]
mov eax, 1
movzx edx, byte [ebx + 0x176b]
mov byte [ebp - 0x2c8], cl
movzx ecx, byte [ebx + 0x1755]
push 0
shl eax, cl
xor ecx, ecx
push 0
dec eax
push 0
mov word [ebp - 0x2b8], ax
lea eax, [ebp - 0x22b]
push eax
lea eax, [ebp - 0x1f4]
push 0
push eax
mov eax, ebx
push 4
push 2
call fcn_fffb2650  ; call 0xfffb2650
add esp, 0x20
cmp dword [ebx + 0x297c], 2
jne short loc_fffbafff  ; jne 0xfffbafff
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4040], 0x8049

loc_fffbafff:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffbb018  ; jne 0xfffbb018
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4440], 0x8049

loc_fffbb018:  ; not directly referenced
lea esi, [ebp - 0x25a]
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x284], 0
mov dword [ebp - 0x274], esi
mov dword [ebp - 0x2b0], edi

loc_fffbb03a:  ; not directly referenced
mov esi, dword [ebp - 0x284]
mov dword [ebp - 0x278], 1
mov ecx, esi
xor edx, edx
shl dword [ebp - 0x278], cl
movzx edi, byte [ebp - 0x278]
mov ecx, edi
mov eax, ebx
mov dword [ebp - 0x288], edi
call fcn_fffc41bb  ; call 0xfffc41bb
mov byte [ebp - 0x2b4], al
mov ecx, edi
mov edx, 1
mov eax, ebx
mov byte [ebp - 0x266], 0
mov word [ebp - 0x264], 0
call fcn_fffc41bb  ; call 0xfffc41bb
mov byte [ebp - 0x2c0], al
mov al, byte [ebp - 0x278]
test byte [ebp - 0x2c8], al
mov byte [ebp - 0x265], 0
mov word [ebp - 0x262], 0
je short loc_fffbb116  ; je 0xfffbb116
mov edx, esi
mov ecx, dword [ebp - 0x284]
shr dl, 1
add ecx, ecx
movzx eax, dl
mov dword [ebp - 0x290], 3
imul eax, eax, 0xfb
mov dword [ebp - 0x2a0], ecx
shl dword [ebp - 0x290], cl
mov dword [ebp - 0x2a8], 2
mov cl, byte [ebp - 0x2a0]
lea esi, [ebp - 0x25f]
mov byte [ebp - 0x29c], dl
not dword [ebp - 0x290]
shl dword [ebp - 0x2a8], cl
mov dword [ebp - 0x280], esi
mov dword [ebp - 0x2ac], eax
jmp near loc_fffbb4bc  ; jmp 0xfffbb4bc

loc_fffbb116:  ; not directly referenced
inc dword [ebp - 0x284]
cmp dword [ebp - 0x284], 4
jne loc_fffbb03a  ; jne 0xfffbb03a
jmp near loc_fffbb7a8  ; jmp 0xfffbb7a8

loc_fffbb12e:  ; not directly referenced
imul eax, esi, 0x1347
mov dl, byte [ebp - 0x278]
test byte [ebx + eax + 0x3acb], dl
je loc_fffbb287  ; je 0xfffbb287
mov edi, dword [ebp - 0x2b0]
lea eax, [edi + eax + 8]
mov edi, dword [ebp - 0x280]
mov dword [ebp - 0x294], eax
movsx eax, byte [edi]
cmp al, 2
jle short loc_fffbb183  ; jle 0xfffbb183
mov edx, dword [ebp - 0x290]
and edx, dword [ebp + esi*4 - 0x24c]
or edx, dword [ebp - 0x2a8]
sub eax, 2
mov dword [ebp + esi*4 - 0x24c], edx
jmp short loc_fffbb194  ; jmp 0xfffbb194

loc_fffbb183:  ; not directly referenced
test al, al
jns short loc_fffbb1a0  ; jns 0xfffbb1a0
mov edi, dword [ebp - 0x290]
and dword [ebp + esi*4 - 0x24c], edi

loc_fffbb194:  ; not directly referenced
shl eax, 7
mov word [ebp - 0x27c], ax
jmp short loc_fffbb1c7  ; jmp 0xfffbb1c7

loc_fffbb1a0:  ; not directly referenced
mov cl, byte [ebp - 0x2a0]
mov edx, dword [ebp - 0x290]
and edx, dword [ebp + esi*4 - 0x24c]
mov word [ebp - 0x27c], 0
shl eax, cl
or edx, eax
mov dword [ebp + esi*4 - 0x24c], edx

loc_fffbb1c7:  ; not directly referenced
mov edi, dword [ebp - 0x294]
add edi, dword [ebp - 0x28c]
mov byte [ebp - 0x298], 0
mov dword [ebp - 0x2a4], edi
jmp short loc_fffbb25a  ; jmp 0xfffbb25a

loc_fffbb1e2:  ; not directly referenced
movzx ecx, byte [ebp - 0x298]
mov edi, dword [ebp - 0x28c]
mov edx, dword [ebp - 0x294]
lea eax, [ecx + edi + 0xe8]
movzx edi, word [edx + eax*2 + 0xd]
movsx eax, word [ebp - 0x27c]
add edi, eax
lea eax, [edi + 0x20]
and edi, 0x1ff
shl edi, 9
and eax, 0x1ff
mov dword [ebp - 0x2c4], edi
mov edi, dword [ebp - 0x2a4]
or eax, dword [ebp - 0x2c4]
movzx edx, byte [ecx + edi + 0x309]
and edx, 0x3f
shl edx, 0x14
or eax, edx
push edx
mov edx, esi
push eax
mov eax, ebx
push 3
push ecx
mov ecx, dword [ebp - 0x284]
call fcn_fffb02b4  ; call 0xfffb02b4
inc byte [ebp - 0x298]
add esp, 0x10

loc_fffbb25a:  ; not directly referenced
mov al, byte [ebp - 0x298]
cmp al, byte [ebx + 0x1755]
jb loc_fffbb1e2  ; jb 0xfffbb1e2
mov ecx, esi
mov eax, dword [ebx + 0x103f]
shl ecx, 0xa
mov edx, dword [ebp + esi*4 - 0x24c]
lea eax, [ecx + eax + 0x40d0]
mov dword [eax], edx

loc_fffbb287:  ; not directly referenced
inc esi
cmp esi, 2
jne loc_fffbb12e  ; jne 0xfffbb12e
mov dl, byte [ebp - 0x278]
cmp dword [ebp - 0x2bc], 0
mov byte [ebp - 0x28c], dl
jne loc_fffbb34a  ; jne 0xfffbb34a
mov eax, ebx
call wait_5030
mov cl, byte [ebp - 0x28c]
test byte [ebx + 0x3acb], cl
je short loc_fffbb2f6  ; je 0xfffbb2f6
push eax
mov ecx, dword [ebp - 0x288]
xor edx, edx
push eax
mov eax, dword [ebp - 0x284]
and eax, 1
imul eax, eax, 0xa
add eax, dword [ebp - 0x2ac]
mov ax, word [ebx + eax + 0x3bb4]
or ah, 1
movzx eax, ax
push eax
mov eax, ebx
push 0
call fcn_fffb96d4  ; call 0xfffb96d4
add esp, 0x10

loc_fffbb2f6:  ; not directly referenced
mov al, byte [ebp - 0x28c]
test byte [ebx + 0x4e12], al
je short loc_fffbb33e  ; je 0xfffbb33e
push eax
mov ecx, dword [ebp - 0x288]
mov edx, 1
push eax
mov eax, dword [ebp - 0x284]
and eax, 1
imul eax, eax, 0xa
add eax, dword [ebp - 0x2ac]
mov ax, word [ebx + eax + 0x4efb]
or ah, 1
movzx eax, ax
push eax
mov eax, ebx
push 0
call fcn_fffb96d4  ; call 0xfffb96d4
add esp, 0x10

loc_fffbb33e:  ; not directly referenced
mov edx, 0xf
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76

loc_fffbb34a:  ; not directly referenced
mov al, byte [ebp - 0x2c0]
or eax, dword [ebp - 0x2b4]
movzx eax, al
lea edi, [ebp - 0x24c]
lea esi, [ebp - 0x253]
mov dword [ebp - 0x270], edi
mov dword [ebp - 0x2c4], eax

loc_fffbb371:  ; not directly referenced
movsx ecx, byte [esi]
mov edx, 2
push 0
mov eax, ebx
lea edi, [ebp - 0x206]
push 0
push 0
push 0
push dword [ebp - 0x284]
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x1c
lea eax, [ebp - 0x25a]
push 0
xor ecx, ecx
mov edx, dword [ebp - 0x2c4]
push 1
push eax
mov eax, ebx
call fcn_fffb21f3  ; call 0xfffb21f3
mov dword [ebp - 0x294], edi
add esp, 0x10
mov dword [ebp - 0x2d0], edi
xor eax, eax
mov dword [ebp - 0x298], 1

loc_fffbb3d2:  ; not directly referenced
imul edx, eax, 0x1347
mov cl, byte [ebp - 0x28c]
test byte [ebx + edx + 0x3acb], cl
je loc_fffbb481  ; je 0xfffbb481
mov ecx, eax
mov edx, dword [ebx + 0x103f]
shl ecx, 0xa
mov edi, dword [ebp - 0x2b8]
lea edx, [ecx + edx + 0x40ec]
xor ecx, ecx
mov edx, dword [edx]
and edi, edx
mov dx, word [ebp + eax*2 - 0x264]
or edi, edx
mov dl, byte [ebx + 0x1755]
mov word [ebp - 0x2cc], di
mov byte [ebp - 0x2a4], dl
jmp short loc_fffbb459  ; jmp 0xfffbb459

loc_fffbb428:  ; not directly referenced
mov edx, 1
shl edx, cl
test word [ebp - 0x2cc], dx
jne short loc_fffbb458  ; jne 0xfffbb458
or word [ebp + eax*2 - 0x264], dx
mov edx, dword [ebp - 0x280]
mov edi, dword [ebp - 0x2d0]
mov dl, byte [edx]
add byte [ebp + eax - 0x266], dl
mov byte [edi + ecx], dl

loc_fffbb458:  ; not directly referenced
inc ecx

loc_fffbb459:  ; not directly referenced
cmp byte [ebp - 0x2a4], cl
ja short loc_fffbb428  ; ja 0xfffbb428
mov edi, dword [ebp - 0x2b8]
mov edx, 0
cmp word [ebp + eax*2 - 0x264], di
cmove edx, dword [ebp - 0x298]
mov dword [ebp - 0x298], edx

loc_fffbb481:  ; not directly referenced
inc eax
add dword [ebp - 0x2d0], 9
cmp eax, 2
jne loc_fffbb3d2  ; jne 0xfffbb3d2
cmp dword [ebp - 0x298], 1
je short loc_fffbb4da  ; je 0xfffbb4da
inc esi
cmp esi, dword [ebp - 0x270]
jne loc_fffbb371  ; jne 0xfffbb371
inc dword [ebp - 0x280]
mov esi, dword [ebp - 0x274]
cmp dword [ebp - 0x280], esi
je short loc_fffbb4d0  ; je 0xfffbb4d0

loc_fffbb4bc:  ; not directly referenced
imul edi, dword [ebp - 0x284], 9
xor esi, esi
mov dword [ebp - 0x28c], edi
jmp near loc_fffbb12e  ; jmp 0xfffbb12e

loc_fffbb4d0:  ; not directly referenced
mov dword [ebp - 0x298], 0

loc_fffbb4da:  ; not directly referenced
movzx eax, byte [ebp - 0x29c]
xor edi, edi
imul eax, eax, 0xfb
mov dword [ebp - 0x2cc], eax

loc_fffbb4ef:  ; not directly referenced
imul eax, edi, 0x1347
mov dl, byte [ebp - 0x28c]
test byte [ebx + eax + 0x3acb], dl
je loc_fffbb792  ; je 0xfffbb792
mov ecx, dword [ebp - 0x2b0]
cmp dword [ebp - 0x298], 0
lea esi, [ecx + eax + 8]
je loc_fffbb7ec  ; je 0xfffbb7ec
mov al, byte [ebx + 0x1755]
mov byte [ebp - 0x27c], 0
movsx edx, byte [ebp + edi - 0x266]
mov byte [ebp - 0x29c], al
shr al, 1
movzx eax, al
movsx ecx, byte [ebp - 0x29c]
add eax, edx
cdq
idiv ecx
mov byte [ebp - 0x278], al
imul eax, dword [ebp - 0x284], 0x12
lea eax, [esi + eax + 0x1d0]
mov dword [ebp - 0x2c4], eax

loc_fffbb565:  ; not directly referenced
cmp byte [ebp - 0x278], 2
jle short loc_fffbb59e  ; jle 0xfffbb59e
mov eax, dword [ebp - 0x290]
and eax, dword [ebp + edi*4 - 0x24c]
or eax, dword [ebp - 0x2a8]
mov dword [ebp + edi*4 - 0x24c], eax
movsx eax, byte [ebp - 0x278]
sub eax, 2
shl eax, 7
mov word [ebp - 0x280], ax
jmp short loc_fffbb5f0  ; jmp 0xfffbb5f0

loc_fffbb59e:  ; not directly referenced
cmp byte [ebp - 0x278], 0
mov edx, dword [ebp - 0x290]
jns short loc_fffbb5c8  ; jns 0xfffbb5c8
movsx cx, byte [ebp - 0x278]
shl ecx, 7
and dword [ebp + edi*4 - 0x24c], edx
mov word [ebp - 0x280], cx
jmp short loc_fffbb5f0  ; jmp 0xfffbb5f0

loc_fffbb5c8:  ; not directly referenced
mov cl, byte [ebp - 0x2a0]
and edx, dword [ebp + edi*4 - 0x24c]
movsx eax, byte [ebp - 0x278]
mov word [ebp - 0x280], 0
shl eax, cl
or eax, edx
mov dword [ebp + edi*4 - 0x24c], eax

loc_fffbb5f0:  ; not directly referenced
mov eax, dword [ebp - 0x2c4]
mov dword [ebp - 0x2d0], 0
movsx edx, word [ebp - 0x280]
add eax, 0xd
movsx ecx, byte [ebp - 0x278]
mov dword [ebp - 0x270], eax
mov dword [ebp - 0x2b4], edx
mov dword [ebp - 0x2c0], ecx
jmp short loc_fffbb692  ; jmp 0xfffbb692

loc_fffbb625:  ; not directly referenced
mov edx, dword [ebp - 0x294]
mov eax, dword [ebp - 0x2d0]
movsx ecx, byte [edx + eax]
sub ecx, dword [ebp - 0x2c0]
shl ecx, 7
mov edx, dword [ebp - 0x2b4]
add edx, ecx
mov ecx, dword [ebp - 0x270]
movzx eax, word [ecx + 0x48]
add eax, edx
cmp eax, 0x1bf
jle short loc_fffbb66a  ; jle 0xfffbb66a
inc byte [ebp - 0x27c]
inc byte [ebp - 0x278]
jmp near loc_fffbb802  ; jmp 0xfffbb802

loc_fffbb66a:  ; not directly referenced
movzx ecx, word [ecx]
inc dword [ebp - 0x2d0]
add ecx, edx
add dword [ebp - 0x270], 2
cmp ecx, 0x5f
jg short loc_fffbb692  ; jg 0xfffbb692
inc byte [ebp - 0x27c]
dec byte [ebp - 0x278]
jmp near loc_fffbb802  ; jmp 0xfffbb802

loc_fffbb692:  ; not directly referenced
mov dl, byte [ebp - 0x2d0]
cmp byte [ebp - 0x29c], dl
ja short loc_fffbb625  ; ja 0xfffbb625
jmp near loc_fffbb7f3  ; jmp 0xfffbb7f3

loc_fffbb6a5:  ; not directly referenced
lea eax, [edi + edi*8]
lea ecx, [ebp - 0x18]
add ecx, eax
mov byte [ebp - 0x27c], 0
mov dword [ebp - 0x29c], ecx
jmp short loc_fffbb71d  ; jmp 0xfffbb71d

loc_fffbb6bc:  ; not directly referenced
movzx ecx, byte [ebp - 0x27c]
mov edx, dword [ebp - 0x29c]
movsx eax, byte [ecx + edx - 0x1ee]
movsx edx, byte [ebp - 0x278]
sub eax, edx
imul edx, dword [ebp - 0x284], 9
shl eax, 7
add edx, ecx
add eax, dword [ebp - 0x280]
add word [esi + edx*2 + 0x225], ax
add word [esi + edx*2 + 0x1dd], ax
push eax
mov edx, edi
mov eax, ebx
push 0
push 0xff
push ecx
mov ecx, dword [ebp - 0x284]
call fcn_fffb02b4  ; call 0xfffb02b4
inc byte [ebp - 0x27c]
add esp, 0x10

loc_fffbb71d:  ; not directly referenced
mov cl, byte [ebp - 0x27c]
cmp cl, byte [ebx + 0x1755]
jb short loc_fffbb6bc  ; jb 0xfffbb6bc
mov ecx, edi
mov eax, dword [ebx + 0x103f]
shl ecx, 0xa
mov edx, dword [ebp + edi*4 - 0x24c]
cmp dword [ebp - 0x2bc], 0
lea eax, [ecx + eax + 0x40d0]
mov dword [eax], edx
jne short loc_fffbb792  ; jne 0xfffbb792
mov eax, dword [ebp - 0x284]
mov ecx, dword [ebp - 0x288]
and eax, 1
imul eax, eax, 0xa
add eax, dword [ebp - 0x2cc]
push edx
push edx
mov ax, word [esi + eax + 0x1238]
mov edx, edi
or ah, 1
movzx eax, ax
push eax
mov eax, ebx
push 0
call fcn_fffb96d4  ; call 0xfffb96d4
mov edx, 0xf
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
add esp, 0x10

loc_fffbb792:  ; not directly referenced
inc edi
add dword [ebp - 0x294], 9
cmp edi, 2
je loc_fffbb116  ; je 0xfffbb116
jmp near loc_fffbb4ef  ; jmp 0xfffbb4ef

loc_fffbb7a8:  ; not directly referenced
push eax
mov ecx, 0x1010101
xor edx, edx
push eax
mov eax, ebx
push 0
push 8
call fcn_fffb1d24  ; call 0xfffb1d24
lea edx, [ebp - 0x214]
mov eax, ebx
call fcn_fffb2062  ; call 0xfffb2062
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x3670], 0
mov eax, ebx
call wait_5030
add esp, 0x10
jmp short loc_fffbb811  ; jmp 0xfffbb811

loc_fffbb7e5:  ; not directly referenced
mov eax, 1
jmp short loc_fffbb811  ; jmp 0xfffbb811

loc_fffbb7ec:  ; not directly referenced
mov eax, 8
jmp short loc_fffbb811  ; jmp 0xfffbb811

loc_fffbb7f3:  ; not directly referenced
cmp byte [ebp - 0x27c], 3
jbe loc_fffbb6a5  ; jbe 0xfffbb6a5
jmp short loc_fffbb7e5  ; jmp 0xfffbb7e5

loc_fffbb802:  ; not directly referenced
cmp byte [ebp - 0x27c], 3
jbe loc_fffbb565  ; jbe 0xfffbb565
jmp short loc_fffbb7e5  ; jmp 0xfffbb7e5

loc_fffbb811:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbb819:  ; not directly referenced
push ebp
xor ecx, ecx
mov edx, 0x10
mov ebp, esp
push edi
xor edi, edi
push esi
push ebx
xor ebx, ebx
lea esp, [esp - 0x5c]
mov esi, dword [ebp + 8]
lea eax, [esi + 0x16be]
mov dword [ebp - 0x54], eax
lea eax, [ebp - 0x28]
call mrc_setmem
mov ecx, 1
mov edx, 3
lea eax, [ebp - 0x3b]
call mrc_setmem
sub esp, 0xc
mov ecx, 0x11
movzx edx, byte [esi + 0x176b]
mov eax, esi
push 0
mov byte [ebp - 0x3e], 0xfc
mov byte [ebp - 0x3d], 0
mov byte [ebp - 0x3c], 4
call fcn_fffc5844  ; call 0xfffc5844
mov dl, byte [ebp - 0x3a]
mov cl, byte [ebp - 0x3b]
add edx, ecx
mov al, byte [ebp - 0x39]
add edx, eax
add esp, 0x10
mov byte [ebp - 0x4c], dl
mov edx, dword [ebp - 0x54]
mov dword [ebp - 0x58], edx

loc_fffbb891:  ; not directly referenced
imul eax, ebx, 0x1347
mov ecx, dword [ebp - 0x54]
cmp dword [ecx + eax + 0x12be], 2
jne short loc_fffbb8d9  ; jne 0xfffbb8d9
mov edx, dword [ebp - 0x58]
lea eax, [edx + eax + 0x12b0]
mov edx, ebx
movzx ecx, byte [eax + 0x115d]
mov dword [ebp - 0x50], eax
mov eax, esi
call fcn_fffc41bb  ; call 0xfffc41bb
or edi, eax
mov eax, dword [ebp - 0x50]
movzx ecx, byte [esi + 0x1755]
add eax, 0x107
xor edx, edx
call mrc_fillword

loc_fffbb8d9:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffbb891  ; jne 0xfffbb891
lea ecx, [esi + 0x1774]
mov eax, esi
mov dword [ebp - 0x58], ecx
mov ecx, 2
mov edx, dword [ebp - 0x58]
lea ebx, [esi + 0x1e34]
call fcn_fffbf934  ; call 0xfffbf934
mov eax, edi
xor ecx, ecx
movzx edi, al
mov dword [ebp - 0x54], edi
mov edi, 0x14

loc_fffbb90c:  ; not directly referenced
mov edx, dword [ebp - 0x54]
mov dword [ebp + ecx*4 - 0x38], 0
bt edx, ecx
jae short loc_fffbb93a  ; jae 0xfffbb93a
xor edx, edx
mov eax, dword [ebx + 4]
add eax, dword [ebx]
div edi
test eax, eax
je short loc_fffbb932  ; je 0xfffbb932
cmp eax, 0xc
mov dword [ebp + ecx*4 - 0x38], eax
jbe short loc_fffbb93a  ; jbe 0xfffbb93a

loc_fffbb932:  ; not directly referenced
mov dword [ebp + ecx*4 - 0x38], 0xc

loc_fffbb93a:  ; not directly referenced
inc ecx
add ebx, 0x48
cmp ecx, 2
jne short loc_fffbb90c  ; jne 0xfffbb90c
mov cl, 5
mov edx, dword [ebp - 0x58]
mov eax, esi
xor edi, edi
call fcn_fffbf934  ; call 0xfffbf934
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x2c], 0
jmp near loc_fffbba25  ; jmp 0xfffbba25

loc_fffbb964:  ; not directly referenced
mov ecx, dword [ebp - 0x54]
bt ecx, ebx
jb short loc_fffbb974  ; jb 0xfffbb974

loc_fffbb96c:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffbb964  ; jne 0xfffbb964
jmp short loc_fffbb9c3  ; jmp 0xfffbb9c3

loc_fffbb974:  ; not directly referenced
movsx eax, byte [ebp + edi - 0x3e]
mov ecx, 0xc
imul eax, dword [ebp + ebx*4 - 0x38]
mov byte [ebp - 0x50], 0
cdq
idiv ecx
mov dword [ebp - 0x5c], eax
jmp short loc_fffbb9b6  ; jmp 0xfffbb9b6

loc_fffbb98f:  ; not directly referenced
push 1
movzx eax, byte [ebp - 0x50]
mov ecx, dword [ebp - 0x5c]
push 0
mov edx, 2
push 1
push eax
mov eax, esi
push 0
push ebx
push 0
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
inc byte [ebp - 0x50]
add esp, 0x20

loc_fffbb9b6:  ; not directly referenced
mov al, byte [ebp - 0x50]
cmp al, byte [esi + 0x1755]
jb short loc_fffbb98f  ; jb 0xfffbb98f
jmp short loc_fffbb96c  ; jmp 0xfffbb96c

loc_fffbb9c3:  ; not directly referenced
sub esp, 0xc
lea edx, [ebp - 0x28]
push edx
mov ecx, dword [ebp - 0x54]
mov edx, dword [ebp - 0x58]
push 0x36
mov eax, esi
push 1
push 5
push 0
call fcn_fffc0a00  ; call 0xfffc0a00
mov ecx, edi
lea edx, [esi + 0x1bf8]
add esp, 0x20
xor eax, eax
mov byte [ebp - 0x50], cl

loc_fffbb9ef:  ; not directly referenced
mov ecx, dword [ebp - 0x54]
bt ecx, eax
jae short loc_fffbba16  ; jae 0xfffbba16
mov ebx, dword [edx]
sub ebx, dword [edx - 4]
cmp byte [ebp - 0x50], 0
jne short loc_fffbba0a  ; jne 0xfffbba0a
mov dword [ebp + eax*4 - 0x30], 0

loc_fffbba0a:  ; not directly referenced
movzx ecx, byte [ebp + edi - 0x3b]
imul ecx, ebx
add dword [ebp + eax*4 - 0x30], ecx

loc_fffbba16:  ; not directly referenced
inc eax
add edx, 0x48
cmp eax, 2
jne short loc_fffbb9ef  ; jne 0xfffbb9ef
inc edi
cmp edi, 3
je short loc_fffbba2c  ; je 0xfffbba2c

loc_fffbba25:  ; not directly referenced
xor ebx, ebx
jmp near loc_fffbb964  ; jmp 0xfffbb964

loc_fffbba2c:  ; not directly referenced
movsx eax, byte [ebp - 0x4c]
lea ecx, [esi + 0x1bf4]
imul edx, eax, 0xa
imul eax, eax, 0x14
mov dword [ebp - 0x58], edx
mov dword [ebp - 0x50], eax
mov dword [ebp - 0x4c], ecx
lea eax, [esi + 0x16be]
xor ebx, ebx
mov dword [ebp - 0x60], eax

loc_fffbba50:  ; not directly referenced
mov edx, dword [ebp - 0x54]
bt edx, ebx
jae short loc_fffbbad1  ; jae 0xfffbbad1
imul eax, ebx, 0x1347
mov ecx, dword [ebp - 0x60]
push 2
lea eax, [ecx + eax + 0x12b0]
mov dword [ebp - 0x5c], eax
mov eax, dword [ebp + ebx*4 - 0x30]
lea ecx, [ebx + 1]
cdq
or edx, 1
movsx edi, dl
imul edi, dword [ebp - 0x58]
add eax, edi
cdq
idiv dword [ebp - 0x50]
mov edx, 5
mov edi, eax
mov dword [ebp + ebx*4 - 0x30], eax
mov eax, dword [ebp - 0x54]
sar eax, cl
mov ecx, edi
push eax
mov eax, esi
push 1
push 7
push 0
push ebx
push 0
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
mov edx, dword [ebp - 0x4c]
add esp, 0x20
imul eax, edi, 0xa
imul edi, edi, 0xfffffffffffffff6
add dword [edx], eax
mov eax, dword [ebp - 0x5c]
add dword [edx + 4], edi
add eax, 0x107
xor edx, edx
movzx ecx, byte [esi + 0x1755]
call mrc_fillword

loc_fffbbad1:  ; not directly referenced
inc ebx
add dword [ebp - 0x4c], 0x48
cmp ebx, 2
jne loc_fffbba50  ; jne 0xfffbba50
push 2
mov eax, esi
xor ecx, ecx
push 0
mov edx, 2
push 1
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
mov byte [esi + 0x1741], 0
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbbb0c:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x3c]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
mov dword [ebp - 0x3c], esi
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x40], esi

loc_fffbbb2d:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbbb49  ; ja 0xfffbbb49
cmp byte [ebx + 0x1746], 0
jne short loc_fffbbb49  ; jne 0xfffbbb49

loc_fffbbb3e:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbbb2d  ; jne 0xfffbbb2d
jmp near loc_fffbbc6b  ; jmp 0xfffbbc6b

loc_fffbbb49:  ; not directly referenced
imul esi, ecx, 0x2a
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x34], esi
mov dword [ebp - 0x38], eax

loc_fffbbb64:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2fa
mov esi, dword [ebp - 0x3c]
xor edi, edi
lea eax, [esi + eax + 5]
mov dword [ebp - 0x30], eax
imul eax, dword [ebp - 0x20], 0x1347
mov esi, dword [ebp - 0x40]
lea eax, [esi + eax + 8]
mov dword [ebp - 0x28], eax

loc_fffbbb88:  ; not directly referenced
imul eax, edi, 0xfb
mov esi, dword [ebp - 0x28]
lea edx, [esi + eax + 0x1150]
cmp dword [edx + 1], 2
lea eax, [edx + 1]
mov dword [ebp - 0x48], eax
jne loc_fffbbc4f  ; jne 0xfffbbc4f
imul edx, edi, 0x14f
mov esi, dword [ebp - 0x30]
cmp ecx, 1
lea edx, [esi + edx + 8]
mov dword [ebp - 0x44], edx
mov edx, dword [ebp - 0x34]
mov esi, dword [eax + edx + 4]
mov edx, dword [ebp - 0x28]
lea eax, [ecx + edi*4 + 0x16]
mov edx, dword [edx + eax*8]
mov dword [ebp - 0x24], edx
je short loc_fffbbc0f  ; je 0xfffbbc0f
jb short loc_fffbbc1e  ; jb 0xfffbbc1e
cmp ecx, 3
ja short loc_fffbbc1e  ; ja 0xfffbbc1e
mov eax, dword [ebp - 0x48]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffbbbef  ; jne 0xfffbbbef
and dl, 1
jne short loc_fffbbbf6  ; jne 0xfffbbbf6
xor eax, eax
jmp short loc_fffbbc37  ; jmp 0xfffbbc37

loc_fffbbbef:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffbbc37  ; je 0xfffbbc37

loc_fffbbbf6:  ; not directly referenced
mov eax, dword [ebp - 0x44]
mov edx, dword [ebp - 0x38]
movzx edx, byte [eax + edx + 0xed]
xor eax, eax
test esi, esi
mov dword [ebp - 0x44], edx
je short loc_fffbbc37  ; je 0xfffbbc37
jmp short loc_fffbbc2b  ; jmp 0xfffbbc2b

loc_fffbbc0f:  ; not directly referenced
mov edx, dword [ebp - 0x44]
movzx eax, word [edx + 0x148]
test ax, ax
jne short loc_fffbbc37  ; jne 0xfffbbc37

loc_fffbbc1e:  ; not directly referenced
xor eax, eax
test esi, esi
je short loc_fffbbc37  ; je 0xfffbbc37
mov eax, dword [ebp - 0x44]
movzx edx, byte [eax + 0x3f]

loc_fffbbc2b:  ; not directly referenced
imul edx, dword [ebp - 0x24]
lea eax, [esi + edx - 1]
xor edx, edx
div esi

loc_fffbbc37:  ; not directly referenced
cmp eax, 0xf
mov edx, 0xf
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffbbc4f:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffbbb88  ; jne 0xfffbbb88
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
je loc_fffbbb3e  ; je 0xfffbbb3e
jmp near loc_fffbbb64  ; jmp 0xfffbbb64

loc_fffbbc6b:  ; not directly referenced
lea esi, [ebx + 0x3af5]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffbbc7c:  ; not directly referenced
cmp edx, 1
ja short loc_fffbbc8a  ; ja 0xfffbbc8a
cmp byte [ebx + 0x1746], 0
je short loc_fffbbcbd  ; je 0xfffbbcbd

loc_fffbbc8a:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffbbcbd:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbbc7c  ; jne 0xfffbbc7c
lea esp, [esp + 0x3c]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbbcd4:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x3c]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
mov dword [ebp - 0x3c], esi
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x40], esi

loc_fffbbcf5:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbbd11  ; ja 0xfffbbd11
cmp byte [ebx + 0x1746], 0
jne short loc_fffbbd11  ; jne 0xfffbbd11

loc_fffbbd06:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbbcf5  ; jne 0xfffbbcf5
jmp near loc_fffbbe33  ; jmp 0xfffbbe33

loc_fffbbd11:  ; not directly referenced
imul esi, ecx, 0x2a
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x34], esi
mov dword [ebp - 0x38], eax

loc_fffbbd2c:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2fa
mov esi, dword [ebp - 0x3c]
xor edi, edi
lea eax, [esi + eax + 5]
mov dword [ebp - 0x30], eax
imul eax, dword [ebp - 0x20], 0x1347
mov esi, dword [ebp - 0x40]
lea eax, [esi + eax + 8]
mov dword [ebp - 0x28], eax

loc_fffbbd50:  ; not directly referenced
imul eax, edi, 0xfb
mov esi, dword [ebp - 0x28]
lea edx, [esi + eax + 0x1150]
cmp dword [edx + 1], 2
lea eax, [edx + 1]
mov dword [ebp - 0x48], eax
jne loc_fffbbe17  ; jne 0xfffbbe17
imul edx, edi, 0x14f
mov esi, dword [ebp - 0x30]
cmp ecx, 1
lea edx, [esi + edx + 8]
mov dword [ebp - 0x44], edx
mov edx, dword [ebp - 0x34]
mov esi, dword [eax + edx + 4]
mov edx, dword [ebp - 0x28]
lea eax, [ecx + edi*4 + 0x16]
mov edx, dword [edx + eax*8]
mov dword [ebp - 0x24], edx
je short loc_fffbbdd7  ; je 0xfffbbdd7
jb short loc_fffbbde6  ; jb 0xfffbbde6
cmp ecx, 3
ja short loc_fffbbde6  ; ja 0xfffbbde6
mov eax, dword [ebp - 0x48]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffbbdb7  ; jne 0xfffbbdb7
and dl, 1
jne short loc_fffbbdbe  ; jne 0xfffbbdbe
xor eax, eax
jmp short loc_fffbbdff  ; jmp 0xfffbbdff

loc_fffbbdb7:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffbbdff  ; je 0xfffbbdff

loc_fffbbdbe:  ; not directly referenced
mov eax, dword [ebp - 0x44]
mov edx, dword [ebp - 0x38]
movzx edx, byte [eax + edx + 0xee]
xor eax, eax
test esi, esi
mov dword [ebp - 0x44], edx
je short loc_fffbbdff  ; je 0xfffbbdff
jmp short loc_fffbbdf3  ; jmp 0xfffbbdf3

loc_fffbbdd7:  ; not directly referenced
mov edx, dword [ebp - 0x44]
movzx eax, word [edx + 0x142]
test ax, ax
jne short loc_fffbbdff  ; jne 0xfffbbdff

loc_fffbbde6:  ; not directly referenced
xor eax, eax
test esi, esi
je short loc_fffbbdff  ; je 0xfffbbdff
mov eax, dword [ebp - 0x44]
movzx edx, byte [eax + 0x37]

loc_fffbbdf3:  ; not directly referenced
imul edx, dword [ebp - 0x24]
lea eax, [esi + edx - 1]
xor edx, edx
div esi

loc_fffbbdff:  ; not directly referenced
cmp dword [ebp + ecx*4 - 0x1c], 4
mov edx, 4
cmovae edx, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovae eax, edx
mov dword [ebp + ecx*4 - 0x1c], eax

loc_fffbbe17:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffbbd50  ; jne 0xfffbbd50
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
je loc_fffbbd06  ; je 0xfffbbd06
jmp near loc_fffbbd2c  ; jmp 0xfffbbd2c

loc_fffbbe33:  ; not directly referenced
lea esi, [ebx + 0x3aef]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffbbe44:  ; not directly referenced
cmp edx, 1
ja short loc_fffbbe52  ; ja 0xfffbbe52
cmp byte [ebx + 0x1746], 0
je short loc_fffbbe85  ; je 0xfffbbe85

loc_fffbbe52:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffbbe85:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbbe44  ; jne 0xfffbbe44
lea esp, [esp + 0x3c]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbbe9c:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
xor esi, esi
push ebx
xor ebx, ebx
lea esp, [esp - 0x40]
mov ecx, dword [ebp + 8]
lea eax, [ecx + 0x10b7]
lea edx, [ecx + 0x2974]
mov dword [ebp - 0x44], eax
mov dword [ebp - 0x48], edx

loc_fffbbebf:  ; not directly referenced
lea eax, [ebx - 2]
cmp eax, 1
ja short loc_fffbbed4  ; ja 0xfffbbed4
cmp byte [ecx + 0x1746], 0
je loc_fffbbffc  ; je 0xfffbbffc

loc_fffbbed4:  ; not directly referenced
imul eax, ebx, 0x2a
mov dword [ebp + ebx*4 - 0x1c], 0
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x34], eax

loc_fffbbee9:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2fa
mov edx, dword [ebp - 0x44]
xor edi, edi
lea eax, [edx + eax + 5]
mov dword [ebp - 0x38], eax
imul eax, dword [ebp - 0x20], 0x1347
mov edx, dword [ebp - 0x48]
lea eax, [edx + eax + 8]
mov dword [ebp - 0x30], eax

loc_fffbbf0d:  ; not directly referenced
imul eax, edi, 0xfb
mov edx, dword [ebp - 0x30]
lea eax, [edx + eax + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
mov dword [ebp - 0x28], edx
jne loc_fffbbfe5  ; jne 0xfffbbfe5
cmp dword [eax + 0xc6], 2
jne loc_fffbbfe5  ; jne 0xfffbbfe5
imul edx, edi, 0x14f
mov eax, dword [ebp - 0x38]
lea edx, [eax + edx + 8]
mov eax, dword [ebp - 0x28]
mov dword [ebp - 0x4c], edx
mov edx, dword [ebp - 0x34]
mov edx, dword [eax + edx + 4]
lea eax, [ebx + edi*4 + 0x16]
mov dword [ebp - 0x24], edx
dec edx
mov dword [ebp - 0x40], edx
mov edx, dword [ebp - 0x30]
cmp ebx, 1
lea eax, [edx + eax*8]
mov edx, dword [eax]
mov eax, dword [eax + 4]
mov dword [ebp - 0x3c], edx
mov dword [ebp - 0x2c], eax
jne short loc_fffbbf86  ; jne 0xfffbbf86
mov edx, dword [ebp - 0x4c]
movzx eax, word [edx + 0x140]
test ax, ax
je short loc_fffbbf86  ; je 0xfffbbf86
jmp short loc_fffbbfad  ; jmp 0xfffbbfad

loc_fffbbf86:  ; not directly referenced
cmp dword [ebp - 0x24], 0
je short loc_fffbbfdc  ; je 0xfffbbfdc
mov edx, dword [ebp - 0x4c]
movsx eax, byte [edx + 0x4c]
imul eax, dword [ebp - 0x2c]
mov dword [ebp - 0x2c], eax
movzx eax, byte [edx + 0x4b]
xor edx, edx
imul eax, dword [ebp - 0x3c]
add eax, dword [ebp - 0x2c]
add eax, dword [ebp - 0x40]
div dword [ebp - 0x24]

loc_fffbbfad:  ; not directly referenced
mov dword [ebp - 0x24], eax
cmp dword [ebp - 0x24], 3
jbe short loc_fffbbfdc  ; jbe 0xfffbbfdc
mov edx, dword [ebp - 0x28]
mov eax, dword [ebp - 0x34]
movzx eax, word [edx + eax + 0x1e]
mov edx, dword [ebp - 0x24]
sub edx, eax
cmp edx, 3
ja short loc_fffbbfdc  ; ja 0xfffbbfdc
mov edx, dword [ebp + ebx*4 - 0x1c]
mov eax, dword [ebp - 0x24]
cmp dword [ebp - 0x24], edx
cmovb eax, edx
mov dword [ebp + ebx*4 - 0x1c], eax

loc_fffbbfdc:  ; not directly referenced
mov edx, esi
mov al, 1
test dl, dl
cmove esi, eax

loc_fffbbfe5:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffbbf0d  ; jne 0xfffbbf0d
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
jne loc_fffbbee9  ; jne 0xfffbbee9

loc_fffbbffc:  ; not directly referenced
inc ebx
cmp ebx, 4
jne loc_fffbbebf  ; jne 0xfffbbebf
mov edx, esi
test dl, dl
je short loc_fffbc067  ; je 0xfffbc067
lea esi, [ecx + 0x3aed]
mov edx, 0xfffffffe
lea edi, [ecx + 0x3acd]

loc_fffbc01d:  ; not directly referenced
cmp edx, 1
ja short loc_fffbc02b  ; ja 0xfffbc02b
cmp byte [ecx + 0x1746], 0
je short loc_fffbc05e  ; je 0xfffbc05e

loc_fffbc02b:  ; not directly referenced
mov ebx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ebx, edi
mov word [esi], ax
mov word [ebx + ecx + 0x2980], ax
mov word [ebx + ecx + 0x3bc8], ax
mov word [ebx + ecx + 0x4e14], ax
mov word [ebx + ecx + 0x3cc7], ax
mov word [ebx + ecx + 0x4f0f], ax

loc_fffbc05e:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbc01d  ; jne 0xfffbc01d

loc_fffbc067:  ; not directly referenced
lea esp, [esp + 0x40]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbc075:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x44]
mov ebx, dword [ebp + 8]
lea edi, [ebx + 0x10b7]
mov dword [ebp - 0x44], edi
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x48], edi

loc_fffbc096:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbc0b2  ; ja 0xfffbc0b2
cmp byte [ebx + 0x1746], 0
jne short loc_fffbc0b2  ; jne 0xfffbc0b2

loc_fffbc0a7:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbc096  ; jne 0xfffbc096
jmp near loc_fffbc20e  ; jmp 0xfffbc20e

loc_fffbc0b2:  ; not directly referenced
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
add eax, 0xb0
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x40], eax

loc_fffbc0cc:  ; not directly referenced
imul eax, dword [ebp - 0x24], 0x2fa
mov edi, dword [ebp - 0x44]
mov dword [ebp - 0x20], 0
lea eax, [edi + eax + 5]
mov dword [ebp - 0x3c], eax
imul eax, dword [ebp - 0x24], 0x1347
mov edi, dword [ebp - 0x48]
lea eax, [edi + eax + 8]
mov dword [ebp - 0x2c], eax

loc_fffbc0f5:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0xfb
mov edi, dword [ebp - 0x2c]
lea eax, [edi + eax + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
mov dword [ebp - 0x50], edx
jne loc_fffbc1ef  ; jne 0xfffbc1ef
imul eax, dword [ebp - 0x20], 0x14f
mov edi, dword [ebp - 0x3c]
lea esi, [edi + eax + 8]
imul eax, ecx, 0x2a
cmp ecx, 1
mov edi, dword [edx + eax + 4]
mov edx, dword [ebp - 0x20]
lea eax, [edi - 1]
mov dword [ebp - 0x38], eax
mov eax, dword [ebp - 0x2c]
lea edx, [ecx + edx*4 + 0x16]
lea eax, [eax + edx*8]
mov edx, dword [eax]
mov eax, dword [eax + 4]
mov dword [ebp - 0x30], edx
mov dword [ebp - 0x34], eax
je short loc_fffbc1ac  ; je 0xfffbc1ac
jb short loc_fffbc1b8  ; jb 0xfffbc1b8
cmp ecx, 3
ja short loc_fffbc1b8  ; ja 0xfffbc1b8
mov eax, dword [ebp - 0x50]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffbc16c  ; jne 0xfffbc16c
and dl, 1
jne short loc_fffbc173  ; jne 0xfffbc173
xor eax, eax
jmp short loc_fffbc1d7  ; jmp 0xfffbc1d7

loc_fffbc16c:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffbc1d7  ; je 0xfffbc1d7

loc_fffbc173:  ; not directly referenced
mov eax, dword [ebp - 0x40]
lea edx, [esi + eax + 0x2d]
xor esi, esi
movzx eax, byte [edx + 6]
mov dword [ebp - 0x28], eax
mov eax, dword [ebp - 0x50]
cmp byte [eax + 0xe6], 0x13
jne short loc_fffbc193  ; jne 0xfffbc193
movsx esi, byte [edx + 0x1c]

loc_fffbc193:  ; not directly referenced
xor eax, eax
test edi, edi
je short loc_fffbc1d7  ; je 0xfffbc1d7
imul esi, dword [ebp - 0x34]
mov edx, dword [ebp - 0x30]
imul edx, dword [ebp - 0x28]
add edx, dword [ebp - 0x38]
lea eax, [edx + esi]
jmp short loc_fffbc1d3  ; jmp 0xfffbc1d3

loc_fffbc1ac:  ; not directly referenced
movzx eax, word [esi + 0x13e]
test ax, ax
jne short loc_fffbc1d7  ; jne 0xfffbc1d7

loc_fffbc1b8:  ; not directly referenced
xor eax, eax
test edi, edi
je short loc_fffbc1d7  ; je 0xfffbc1d7
movsx eax, byte [esi + 0x49]
imul eax, dword [ebp - 0x34]
movzx edx, byte [esi + 0x38]
imul edx, dword [ebp - 0x30]
add edx, dword [ebp - 0x38]
add eax, edx

loc_fffbc1d3:  ; not directly referenced
xor edx, edx
div edi

loc_fffbc1d7:  ; not directly referenced
cmp eax, 0xf
mov edx, 0xf
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffbc1ef:  ; not directly referenced
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
jne loc_fffbc0f5  ; jne 0xfffbc0f5
inc dword [ebp - 0x24]
cmp dword [ebp - 0x24], 2
je loc_fffbc0a7  ; je 0xfffbc0a7
jmp near loc_fffbc0cc  ; jmp 0xfffbc0cc

loc_fffbc20e:  ; not directly referenced
lea esi, [ebx + 0x3aeb]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffbc21f:  ; not directly referenced
cmp edx, 1
ja short loc_fffbc22d  ; ja 0xfffbc22d
cmp byte [ebx + 0x1746], 0
je short loc_fffbc260  ; je 0xfffbc260

loc_fffbc22d:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffbc260:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbc21f  ; jne 0xfffbc21f
lea esp, [esp + 0x44]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbc277:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x3c]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
mov dword [ebp - 0x3c], esi
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x40], esi

loc_fffbc298:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbc2b4  ; ja 0xfffbc2b4
cmp byte [ebx + 0x1746], 0
jne short loc_fffbc2b4  ; jne 0xfffbc2b4

loc_fffbc2a9:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbc298  ; jne 0xfffbc298
jmp near loc_fffbc3d8  ; jmp 0xfffbc3d8

loc_fffbc2b4:  ; not directly referenced
imul esi, ecx, 0x2a
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
mov dword [ebp - 0x20], 0
mov dword [ebp - 0x34], esi
mov dword [ebp - 0x38], eax

loc_fffbc2cf:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0x2fa
mov esi, dword [ebp - 0x3c]
xor edi, edi
lea eax, [esi + eax + 5]
mov dword [ebp - 0x30], eax
imul eax, dword [ebp - 0x20], 0x1347
mov esi, dword [ebp - 0x40]
lea eax, [esi + eax + 8]
mov dword [ebp - 0x28], eax

loc_fffbc2f3:  ; not directly referenced
imul eax, edi, 0xfb
mov esi, dword [ebp - 0x28]
lea edx, [esi + eax + 0x1150]
cmp dword [edx + 1], 2
lea eax, [edx + 1]
mov dword [ebp - 0x48], eax
jne loc_fffbc3bc  ; jne 0xfffbc3bc
imul edx, edi, 0x14f
mov esi, dword [ebp - 0x30]
cmp ecx, 1
lea edx, [esi + edx + 8]
mov dword [ebp - 0x44], edx
mov edx, dword [ebp - 0x34]
mov esi, dword [eax + edx + 4]
mov edx, dword [ebp - 0x28]
lea eax, [ecx + edi*4 + 0x16]
mov edx, dword [edx + eax*8]
mov dword [ebp - 0x24], edx
je short loc_fffbc37a  ; je 0xfffbc37a
jb short loc_fffbc389  ; jb 0xfffbc389
cmp ecx, 3
ja short loc_fffbc389  ; ja 0xfffbc389
mov eax, dword [ebp - 0x48]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffbc35a  ; jne 0xfffbc35a
and dl, 1
jne short loc_fffbc361  ; jne 0xfffbc361
xor eax, eax
jmp short loc_fffbc3a2  ; jmp 0xfffbc3a2

loc_fffbc35a:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffbc3a2  ; je 0xfffbc3a2

loc_fffbc361:  ; not directly referenced
mov eax, dword [ebp - 0x44]
mov edx, dword [ebp - 0x38]
movzx edx, word [eax + edx + 0xeb]
xor eax, eax
test esi, esi
mov dword [ebp - 0x44], edx
je short loc_fffbc3a2  ; je 0xfffbc3a2
jmp short loc_fffbc396  ; jmp 0xfffbc396

loc_fffbc37a:  ; not directly referenced
mov edx, dword [ebp - 0x44]
movzx eax, word [edx + 0x138]
test ax, ax
jne short loc_fffbc3a2  ; jne 0xfffbc3a2

loc_fffbc389:  ; not directly referenced
xor eax, eax
test esi, esi
je short loc_fffbc3a2  ; je 0xfffbc3a2
mov eax, dword [ebp - 0x44]
movzx edx, word [eax + 0x3c]

loc_fffbc396:  ; not directly referenced
imul edx, dword [ebp - 0x24]
lea eax, [esi + edx - 1]
xor edx, edx
div esi

loc_fffbc3a2:  ; not directly referenced
cmp eax, 0x1ff
mov edx, 0x1ff
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffbc3bc:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffbc2f3  ; jne 0xfffbc2f3
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
je loc_fffbc2a9  ; je 0xfffbc2a9
jmp near loc_fffbc2cf  ; jmp 0xfffbc2cf

loc_fffbc3d8:  ; not directly referenced
lea esi, [ebx + 0x3ae5]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffbc3e9:  ; not directly referenced
cmp edx, 1
ja short loc_fffbc3f7  ; ja 0xfffbc3f7
cmp byte [ebx + 0x1746], 0
je short loc_fffbc42a  ; je 0xfffbc42a

loc_fffbc3f7:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffbc42a:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbc3e9  ; jne 0xfffbc3e9
lea esp, [esp + 0x3c]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbc441:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x44]
mov ebx, dword [ebp + 8]
lea edi, [ebx + 0x10b7]
mov dword [ebp - 0x44], edi
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x48], edi

loc_fffbc462:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbc47e  ; ja 0xfffbc47e
cmp byte [ebx + 0x1746], 0
jne short loc_fffbc47e  ; jne 0xfffbc47e

loc_fffbc473:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbc462  ; jne 0xfffbc462
jmp near loc_fffbc5da  ; jmp 0xfffbc5da

loc_fffbc47e:  ; not directly referenced
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
add eax, 0xb0
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x40], eax

loc_fffbc498:  ; not directly referenced
imul eax, dword [ebp - 0x24], 0x2fa
mov edi, dword [ebp - 0x44]
mov dword [ebp - 0x20], 0
lea eax, [edi + eax + 5]
mov dword [ebp - 0x3c], eax
imul eax, dword [ebp - 0x24], 0x1347
mov edi, dword [ebp - 0x48]
lea eax, [edi + eax + 8]
mov dword [ebp - 0x2c], eax

loc_fffbc4c1:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0xfb
mov edi, dword [ebp - 0x2c]
lea eax, [edi + eax + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
mov dword [ebp - 0x50], edx
jne loc_fffbc5bb  ; jne 0xfffbc5bb
imul eax, dword [ebp - 0x20], 0x14f
mov edi, dword [ebp - 0x3c]
lea esi, [edi + eax + 8]
imul eax, ecx, 0x2a
cmp ecx, 1
mov edi, dword [edx + eax + 4]
mov edx, dword [ebp - 0x20]
lea eax, [edi - 1]
mov dword [ebp - 0x38], eax
mov eax, dword [ebp - 0x2c]
lea edx, [ecx + edx*4 + 0x16]
lea eax, [eax + edx*8]
mov edx, dword [eax]
mov eax, dword [eax + 4]
mov dword [ebp - 0x30], edx
mov dword [ebp - 0x34], eax
je short loc_fffbc578  ; je 0xfffbc578
jb short loc_fffbc584  ; jb 0xfffbc584
cmp ecx, 3
ja short loc_fffbc584  ; ja 0xfffbc584
mov eax, dword [ebp - 0x50]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffbc538  ; jne 0xfffbc538
and dl, 1
jne short loc_fffbc53f  ; jne 0xfffbc53f
xor eax, eax
jmp short loc_fffbc5a3  ; jmp 0xfffbc5a3

loc_fffbc538:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffbc5a3  ; je 0xfffbc5a3

loc_fffbc53f:  ; not directly referenced
mov eax, dword [ebp - 0x40]
lea edx, [esi + eax + 0x2d]
xor esi, esi
movzx eax, byte [edx + 7]
mov dword [ebp - 0x28], eax
mov eax, dword [ebp - 0x50]
cmp byte [eax + 0xe6], 0x13
jne short loc_fffbc55f  ; jne 0xfffbc55f
movsx esi, byte [edx + 0x1d]

loc_fffbc55f:  ; not directly referenced
xor eax, eax
test edi, edi
je short loc_fffbc5a3  ; je 0xfffbc5a3
imul esi, dword [ebp - 0x34]
mov edx, dword [ebp - 0x30]
imul edx, dword [ebp - 0x28]
add edx, dword [ebp - 0x38]
lea eax, [edx + esi]
jmp short loc_fffbc59f  ; jmp 0xfffbc59f

loc_fffbc578:  ; not directly referenced
movzx eax, word [esi + 0x134]
test ax, ax
jne short loc_fffbc5a3  ; jne 0xfffbc5a3

loc_fffbc584:  ; not directly referenced
xor eax, eax
test edi, edi
je short loc_fffbc5a3  ; je 0xfffbc5a3
movsx eax, byte [esi + 0x48]
imul eax, dword [ebp - 0x34]
movzx edx, byte [esi + 0x36]
imul edx, dword [ebp - 0x30]
add edx, dword [ebp - 0x38]
add eax, edx

loc_fffbc59f:  ; not directly referenced
xor edx, edx
div edi

loc_fffbc5a3:  ; not directly referenced
cmp eax, 0x14
mov edx, 0x14
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffbc5bb:  ; not directly referenced
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
jne loc_fffbc4c1  ; jne 0xfffbc4c1
inc dword [ebp - 0x24]
cmp dword [ebp - 0x24], 2
je loc_fffbc473  ; je 0xfffbc473
jmp near loc_fffbc498  ; jmp 0xfffbc498

loc_fffbc5da:  ; not directly referenced
lea esi, [ebx + 0x3ae1]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffbc5eb:  ; not directly referenced
cmp edx, 1
ja short loc_fffbc5f9  ; ja 0xfffbc5f9
cmp byte [ebx + 0x1746], 0
je short loc_fffbc62c  ; je 0xfffbc62c

loc_fffbc5f9:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffbc62c:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbc5eb  ; jne 0xfffbc5eb
lea esp, [esp + 0x44]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbc643:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x40]
mov edi, dword [ebp + 8]
lea eax, [edi + 0x10b7]
lea edx, [edi + 0x2974]
mov dword [ebp - 0x48], eax
mov dword [ebp - 0x4c], edx

loc_fffbc664:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbc680  ; ja 0xfffbc680
cmp byte [edi + 0x1746], 0
jne short loc_fffbc680  ; jne 0xfffbc680

loc_fffbc675:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbc664  ; jne 0xfffbc664
jmp near loc_fffbc800  ; jmp 0xfffbc800

loc_fffbc680:  ; not directly referenced
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
add eax, 0xb0
mov dword [ebp - 0x28], 0
mov dword [ebp - 0x44], eax

loc_fffbc69a:  ; not directly referenced
imul eax, dword [ebp - 0x28], 0x2fa
mov edx, dword [ebp - 0x48]
mov dword [ebp - 0x24], 0
lea eax, [edx + eax + 5]
mov dword [ebp - 0x40], eax
imul eax, dword [ebp - 0x28], 0x1347
mov edx, dword [ebp - 0x4c]
lea eax, [edx + eax + 8]
mov dword [ebp - 0x30], eax

loc_fffbc6c3:  ; not directly referenced
imul eax, dword [ebp - 0x24], 0xfb
mov edx, dword [ebp - 0x30]
lea eax, [edx + eax + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
mov dword [ebp - 0x2c], edx
jne loc_fffbc7e1  ; jne 0xfffbc7e1
imul eax, dword [ebp - 0x24], 0x14f
mov edx, dword [ebp - 0x40]
lea esi, [edx + eax + 8]
mov edx, dword [ebp - 0x2c]
imul eax, ecx, 0x2a
mov eax, dword [edx + eax + 4]
mov edx, dword [ebp - 0x24]
mov dword [ebp - 0x20], eax
dec eax
mov dword [ebp - 0x3c], eax
cmp ecx, 1
lea eax, [ecx + edx*4 + 0x16]
mov edx, dword [ebp - 0x30]
lea eax, [edx + eax*8]
mov edx, dword [eax]
mov eax, dword [eax + 4]
mov dword [ebp - 0x34], edx
mov dword [ebp - 0x38], eax
je short loc_fffbc78b  ; je 0xfffbc78b
jb short loc_fffbc797  ; jb 0xfffbc797
cmp ecx, 3
ja short loc_fffbc797  ; ja 0xfffbc797
mov eax, dword [ebp - 0x2c]
cmp ecx, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffbc741  ; jne 0xfffbc741
and dl, 1
jne short loc_fffbc748  ; jne 0xfffbc748
xor eax, eax
jmp near loc_fffbc7c7  ; jmp 0xfffbc7c7

loc_fffbc741:  ; not directly referenced
xor eax, eax
and dl, 2
je short loc_fffbc7c7  ; je 0xfffbc7c7

loc_fffbc748:  ; not directly referenced
mov edx, dword [ebp - 0x44]
lea esi, [esi + edx + 0x2d]
xor edx, edx
movzx eax, byte [esi + 0xb]
mov bl, byte [esi + 9]
shr bl, 4
movzx ebx, bl
shl ebx, 8
or ebx, eax
mov eax, dword [ebp - 0x2c]
cmp byte [eax + 0xe6], 0x13
jne short loc_fffbc773  ; jne 0xfffbc773
movsx edx, byte [esi + 0x1e]

loc_fffbc773:  ; not directly referenced
xor eax, eax
cmp dword [ebp - 0x20], 0
je short loc_fffbc7c7  ; je 0xfffbc7c7
imul edx, dword [ebp - 0x38]
imul ebx, dword [ebp - 0x34]
add ebx, dword [ebp - 0x3c]
lea eax, [ebx + edx]
jmp short loc_fffbc7c2  ; jmp 0xfffbc7c2

loc_fffbc78b:  ; not directly referenced
movzx eax, word [esi + 0x132]
test ax, ax
jne short loc_fffbc7c7  ; jne 0xfffbc7c7

loc_fffbc797:  ; not directly referenced
xor eax, eax
cmp dword [ebp - 0x20], 0
je short loc_fffbc7c7  ; je 0xfffbc7c7
movzx edx, byte [esi + 0x3b]
mov bl, byte [esi + 0x39]
shr bl, 4
movzx ebx, bl
shl ebx, 8
movsx eax, byte [esi + 0x4a]
or ebx, edx
imul ebx, dword [ebp - 0x34]
imul eax, dword [ebp - 0x38]
add eax, dword [ebp - 0x3c]
add eax, ebx

loc_fffbc7c2:  ; not directly referenced
xor edx, edx
div dword [ebp - 0x20]

loc_fffbc7c7:  ; not directly referenced
cmp eax, 0xfff
mov edx, 0xfff
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffbc7e1:  ; not directly referenced
inc dword [ebp - 0x24]
cmp dword [ebp - 0x24], 2
jne loc_fffbc6c3  ; jne 0xfffbc6c3
inc dword [ebp - 0x28]
cmp dword [ebp - 0x28], 2
je loc_fffbc675  ; je 0xfffbc675
jmp near loc_fffbc69a  ; jmp 0xfffbc69a

loc_fffbc800:  ; not directly referenced
lea ebx, [edi + 0x3adf]
mov edx, 0xfffffffe
lea esi, [edi + 0x3acd]

loc_fffbc811:  ; not directly referenced
cmp edx, 1
ja short loc_fffbc81f  ; ja 0xfffbc81f
cmp byte [edi + 0x1746], 0
je short loc_fffbc852  ; je 0xfffbc852

loc_fffbc81f:  ; not directly referenced
mov ecx, ebx
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, esi
mov word [ebx], ax
mov word [ecx + edi + 0x2980], ax
mov word [ecx + edi + 0x3bc8], ax
mov word [ecx + edi + 0x4e14], ax
mov word [ecx + edi + 0x3cc7], ax
mov word [ecx + edi + 0x4f0f], ax

loc_fffbc852:  ; not directly referenced
inc edx
add ebx, 0x2a
cmp edx, 2
jne short loc_fffbc811  ; jne 0xfffbc811
lea esp, [esp + 0x40]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbc869:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x38]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x38], esi
mov dword [ebp - 0x3c], edi

loc_fffbc88a:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbc8a6  ; ja 0xfffbc8a6
cmp byte [ebx + 0x1746], 0
jne short loc_fffbc8a6  ; jne 0xfffbc8a6

loc_fffbc89b:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbc88a  ; jne 0xfffbc88a
jmp near loc_fffbc9e4  ; jmp 0xfffbc9e4

loc_fffbc8a6:  ; not directly referenced
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
add eax, 0xb0
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x34], eax

loc_fffbc8c0:  ; not directly referenced
imul eax, dword [ebp - 0x24], 0x2fa
mov esi, dword [ebp - 0x38]
mov edi, dword [ebp - 0x3c]
mov dword [ebp - 0x44], 0
lea eax, [esi + eax + 5]
mov dword [ebp - 0x30], eax
imul eax, dword [ebp - 0x24], 0x1347
lea eax, [edi + eax + 8]
mov dword [ebp - 0x2c], eax

loc_fffbc8e9:  ; not directly referenced
imul eax, dword [ebp - 0x44], 0xfb
mov esi, dword [ebp - 0x2c]
lea edx, [esi + eax + 0x1150]
cmp dword [edx + 1], 2
lea edi, [edx + 1]
mov dword [ebp - 0x40], edi
jne loc_fffbc9c5  ; jne 0xfffbc9c5
imul edx, dword [ebp - 0x44], 0x14f
mov esi, dword [ebp - 0x30]
mov eax, dword [ebp - 0x2c]
lea edx, [esi + edx + 8]
imul esi, ecx, 0x2a
cmp ecx, 1
mov esi, dword [edi + esi + 4]
mov edi, dword [ebp - 0x44]
lea edi, [ecx + edi*4 + 0x16]
mov eax, dword [eax + edi*8]
mov dword [ebp - 0x28], eax
je short loc_fffbc980  ; je 0xfffbc980
jb short loc_fffbc98c  ; jb 0xfffbc98c
cmp ecx, 3
ja short loc_fffbc98c  ; ja 0xfffbc98c
mov eax, dword [ebp - 0x40]
cmp ecx, 2
movzx edi, byte [eax + 0xe5]
jne short loc_fffbc953  ; jne 0xfffbc953
and edi, 1
jne short loc_fffbc95a  ; jne 0xfffbc95a
xor eax, eax
jmp short loc_fffbc9ad  ; jmp 0xfffbc9ad

loc_fffbc953:  ; not directly referenced
xor eax, eax
and edi, 2
je short loc_fffbc9ad  ; je 0xfffbc9ad

loc_fffbc95a:  ; not directly referenced
mov edi, dword [ebp - 0x34]
lea eax, [edx + edi + 0x2d]
mov dl, byte [eax + 9]
movzx eax, byte [eax + 0xa]
and edx, 0xf
shl edx, 8
or edx, eax
xor eax, eax
test esi, esi
je short loc_fffbc9ad  ; je 0xfffbc9ad
imul edx, dword [ebp - 0x28]
lea eax, [esi + edx - 1]
jmp short loc_fffbc9a9  ; jmp 0xfffbc9a9

loc_fffbc980:  ; not directly referenced
movzx eax, word [edx + 0x130]
test ax, ax
jne short loc_fffbc9ad  ; jne 0xfffbc9ad

loc_fffbc98c:  ; not directly referenced
xor eax, eax
test esi, esi
je short loc_fffbc9ad  ; je 0xfffbc9ad
mov al, byte [edx + 0x39]
movzx edx, byte [edx + 0x3a]
and eax, 0xf
shl eax, 8
or eax, edx
imul eax, dword [ebp - 0x28]
lea eax, [esi + eax - 1]

loc_fffbc9a9:  ; not directly referenced
xor edx, edx
div esi

loc_fffbc9ad:  ; not directly referenced
cmp eax, 0x28
mov edx, 0x28
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffbc9c5:  ; not directly referenced
inc dword [ebp - 0x44]
cmp dword [ebp - 0x44], 2
jne loc_fffbc8e9  ; jne 0xfffbc8e9
inc dword [ebp - 0x24]
cmp dword [ebp - 0x24], 2
je loc_fffbc89b  ; je 0xfffbc89b
jmp near loc_fffbc8c0  ; jmp 0xfffbc8c0

loc_fffbc9e4:  ; not directly referenced
lea esi, [ebx + 0x3add]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffbc9f5:  ; not directly referenced
cmp edx, 1
ja short loc_fffbca03  ; ja 0xfffbca03
cmp byte [ebx + 0x1746], 0
je short loc_fffbca36  ; je 0xfffbca36

loc_fffbca03:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffbca36:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbc9f5  ; jne 0xfffbc9f5
lea esp, [esp + 0x38]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbca4d:  ; not directly referenced
push ebp
xor ecx, ecx
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x38]
mov ebx, dword [ebp + 8]
lea esi, [ebx + 0x10b7]
lea edi, [ebx + 0x2974]
mov dword [ebp - 0x38], esi
mov dword [ebp - 0x3c], edi

loc_fffbca6e:  ; not directly referenced
lea eax, [ecx - 2]
cmp eax, 1
ja short loc_fffbca8a  ; ja 0xfffbca8a
cmp byte [ebx + 0x1746], 0
jne short loc_fffbca8a  ; jne 0xfffbca8a

loc_fffbca7f:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbca6e  ; jne 0xfffbca6e
jmp near loc_fffbcbc8  ; jmp 0xfffbcbc8

loc_fffbca8a:  ; not directly referenced
imul eax, eax, 0x23
mov dword [ebp + ecx*4 - 0x1c], 0
add eax, 0xb0
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x34], eax

loc_fffbcaa4:  ; not directly referenced
imul eax, dword [ebp - 0x24], 0x2fa
mov esi, dword [ebp - 0x38]
mov edi, dword [ebp - 0x3c]
mov dword [ebp - 0x44], 0
lea eax, [esi + eax + 5]
mov dword [ebp - 0x30], eax
imul eax, dword [ebp - 0x24], 0x1347
lea eax, [edi + eax + 8]
mov dword [ebp - 0x2c], eax

loc_fffbcacd:  ; not directly referenced
imul eax, dword [ebp - 0x44], 0xfb
mov esi, dword [ebp - 0x2c]
lea edx, [esi + eax + 0x1150]
cmp dword [edx + 1], 2
lea edi, [edx + 1]
mov dword [ebp - 0x40], edi
jne loc_fffbcba9  ; jne 0xfffbcba9
imul edx, dword [ebp - 0x44], 0x14f
mov esi, dword [ebp - 0x30]
mov eax, dword [ebp - 0x2c]
lea edx, [esi + edx + 8]
imul esi, ecx, 0x2a
cmp ecx, 1
mov esi, dword [edi + esi + 4]
mov edi, dword [ebp - 0x44]
lea edi, [ecx + edi*4 + 0x16]
mov eax, dword [eax + edi*8]
mov dword [ebp - 0x28], eax
je short loc_fffbcb64  ; je 0xfffbcb64
jb short loc_fffbcb70  ; jb 0xfffbcb70
cmp ecx, 3
ja short loc_fffbcb70  ; ja 0xfffbcb70
mov eax, dword [ebp - 0x40]
cmp ecx, 2
movzx edi, byte [eax + 0xe5]
jne short loc_fffbcb37  ; jne 0xfffbcb37
and edi, 1
jne short loc_fffbcb3e  ; jne 0xfffbcb3e
xor eax, eax
jmp short loc_fffbcb91  ; jmp 0xfffbcb91

loc_fffbcb37:  ; not directly referenced
xor eax, eax
and edi, 2
je short loc_fffbcb91  ; je 0xfffbcb91

loc_fffbcb3e:  ; not directly referenced
mov edi, dword [ebp - 0x34]
lea eax, [edx + edi + 0x2d]
mov dl, byte [eax + 0x12]
movzx eax, byte [eax + 0x13]
and edx, 0xf
shl edx, 8
or edx, eax
xor eax, eax
test esi, esi
je short loc_fffbcb91  ; je 0xfffbcb91
imul edx, dword [ebp - 0x28]
lea eax, [esi + edx - 1]
jmp short loc_fffbcb8d  ; jmp 0xfffbcb8d

loc_fffbcb64:  ; not directly referenced
movzx eax, word [edx + 0x12e]
test ax, ax
jne short loc_fffbcb91  ; jne 0xfffbcb91

loc_fffbcb70:  ; not directly referenced
xor eax, eax
test esi, esi
je short loc_fffbcb91  ; je 0xfffbcb91
mov al, byte [edx + 0x40]
movzx edx, byte [edx + 0x41]
and eax, 0xf
shl eax, 8
or eax, edx
imul eax, dword [ebp - 0x28]
lea eax, [esi + eax - 1]

loc_fffbcb8d:  ; not directly referenced
xor edx, edx
div esi

loc_fffbcb91:  ; not directly referenced
cmp eax, 0x36
mov edx, 0x36
cmovbe edx, eax
mov eax, dword [ebp + ecx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ecx*4 - 0x1c], edx

loc_fffbcba9:  ; not directly referenced
inc dword [ebp - 0x44]
cmp dword [ebp - 0x44], 2
jne loc_fffbcacd  ; jne 0xfffbcacd
inc dword [ebp - 0x24]
cmp dword [ebp - 0x24], 2
je loc_fffbca7f  ; je 0xfffbca7f
jmp near loc_fffbcaa4  ; jmp 0xfffbcaa4

loc_fffbcbc8:  ; not directly referenced
lea esi, [ebx + 0x3adb]
mov edx, 0xfffffffe
lea edi, [ebx + 0x3acd]

loc_fffbcbd9:  ; not directly referenced
cmp edx, 1
ja short loc_fffbcbe7  ; ja 0xfffbcbe7
cmp byte [ebx + 0x1746], 0
je short loc_fffbcc1a  ; je 0xfffbcc1a

loc_fffbcbe7:  ; not directly referenced
mov ecx, esi
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [esi], ax
mov word [ecx + ebx + 0x2980], ax
mov word [ecx + ebx + 0x3bc8], ax
mov word [ecx + ebx + 0x4e14], ax
mov word [ecx + ebx + 0x3cc7], ax
mov word [ecx + ebx + 0x4f0f], ax

loc_fffbcc1a:  ; not directly referenced
inc edx
add esi, 0x2a
cmp edx, 2
jne short loc_fffbcbd9  ; jne 0xfffbcbd9
lea esp, [esp + 0x38]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbcc31:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
xor ebx, ebx
lea esp, [esp - 0x38]
mov esi, dword [ebp + 8]
lea ecx, [esi + 0x10b7]
lea edi, [esi + 0x2974]
mov dword [ebp - 0x38], ecx
mov dword [ebp - 0x3c], edi

loc_fffbcc52:  ; not directly referenced
lea eax, [ebx - 2]
cmp eax, 1
ja short loc_fffbcc6e  ; ja 0xfffbcc6e
cmp byte [esi + 0x1746], 0
jne short loc_fffbcc6e  ; jne 0xfffbcc6e

loc_fffbcc63:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffbcc52  ; jne 0xfffbcc52
jmp near loc_fffbcdf7  ; jmp 0xfffbcdf7

loc_fffbcc6e:  ; not directly referenced
imul ecx, ebx, 0x2a
imul eax, eax, 0x23
mov dword [ebp + ebx*4 - 0x1c], 0
mov dword [ebp - 0x24], 0
mov dword [ebp - 0x30], ecx
mov dword [ebp - 0x34], eax

loc_fffbcc89:  ; not directly referenced
imul eax, dword [ebp - 0x24], 0x2fa
mov edi, dword [ebp - 0x38]
mov ecx, dword [ebp - 0x3c]
mov dword [ebp - 0x20], 0
lea eax, [edi + eax + 5]
mov dword [ebp - 0x2c], eax
imul eax, dword [ebp - 0x24], 0x1347
lea eax, [ecx + eax + 8]
mov dword [ebp - 0x28], eax

loc_fffbccb2:  ; not directly referenced
imul eax, dword [ebp - 0x20], 0xfb
mov edi, dword [ebp - 0x28]
lea eax, [edi + eax + 0x1150]
cmp dword [eax + 1], 2
lea edx, [eax + 1]
jne loc_fffbcdd8  ; jne 0xfffbcdd8
imul eax, dword [ebp - 0x20], 0x14f
mov ecx, dword [ebp - 0x2c]
mov edi, dword [ebp - 0x30]
cmp ebx, 1
lea eax, [ecx + eax + 8]
mov ecx, dword [edx + edi + 4]
mov edi, dword [ebp - 0x20]
mov dword [ebp - 0x44], eax
mov eax, dword [ebp - 0x28]
lea edi, [ebx + edi*4 + 0x16]
mov eax, dword [eax + edi*8]
mov dword [ebp - 0x40], eax
je short loc_fffbcd42  ; je 0xfffbcd42
jb short loc_fffbcd51  ; jb 0xfffbcd51
cmp ebx, 3
ja short loc_fffbcd51  ; ja 0xfffbcd51
cmp ebx, 2
mov dl, byte [edx + 0xe5]
jne short loc_fffbcd1b  ; jne 0xfffbcd1b
and dl, 1

loc_fffbcd12:  ; not directly referenced
jne short loc_fffbcd20  ; jne 0xfffbcd20

loc_fffbcd14:  ; not directly referenced
xor eax, eax
jmp near loc_fffbcdc0  ; jmp 0xfffbcdc0

loc_fffbcd1b:  ; not directly referenced
and dl, 2
jmp short loc_fffbcd12  ; jmp 0xfffbcd12

loc_fffbcd20:  ; not directly referenced
mov edx, dword [ebp - 0x44]
mov edi, dword [ebp - 0x34]
test ecx, ecx
movzx eax, byte [edx + edi + 0xe2]
je short loc_fffbcd14  ; je 0xfffbcd14
mov edi, dword [ebp - 0x40]
xor edx, edx
imul edi, eax
lea eax, [ecx + edi - 1]
div ecx
jmp short loc_fffbcdc0  ; jmp 0xfffbcdc0

loc_fffbcd42:  ; not directly referenced
mov edi, dword [ebp - 0x44]
movzx eax, word [edi + 0x12c]
test ax, ax
jne short loc_fffbcdc0  ; jne 0xfffbcdc0

loc_fffbcd51:  ; not directly referenced
cmp dword [edx + 0xc5], 2
jne short loc_fffbcd7d  ; jne 0xfffbcd7d
cmp ecx, 0x16e360
mov eax, 7
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
cmp ecx, 0x1c9c38
mov al, 5
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
cmp ecx, 0x2625a0
mov al, 4
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
jmp short loc_fffbcd14  ; jmp 0xfffbcd14

loc_fffbcd7d:  ; not directly referenced
cmp ecx, 0xe4e1c
mov eax, 0xa
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
cmp ecx, 0x105944
mov al, 9
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
cmp ecx, 0x1312d0
mov al, 8
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
cmp ecx, 0x16e360
mov al, 7
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
cmp ecx, 0x1c9c38
mov al, 6
jbe short loc_fffbcdc0  ; jbe 0xfffbcdc0
cmp ecx, 0x2625a0
ja loc_fffbcd14  ; ja 0xfffbcd14
mov al, 5

loc_fffbcdc0:  ; not directly referenced
cmp eax, 0xc
mov edx, 0xc
cmovbe edx, eax
mov eax, dword [ebp + ebx*4 - 0x1c]
cmp edx, eax
cmovb edx, eax
mov dword [ebp + ebx*4 - 0x1c], edx

loc_fffbcdd8:  ; not directly referenced
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 2
jne loc_fffbccb2  ; jne 0xfffbccb2
inc dword [ebp - 0x24]
cmp dword [ebp - 0x24], 2
je loc_fffbcc63  ; je 0xfffbcc63
jmp near loc_fffbcc89  ; jmp 0xfffbcc89

loc_fffbcdf7:  ; not directly referenced
lea ebx, [esi + 0x3ad9]
mov edx, 0xfffffffe
lea edi, [esi + 0x3acd]

loc_fffbce08:  ; not directly referenced
cmp edx, 1
ja short loc_fffbce16  ; ja 0xfffbce16
cmp byte [esi + 0x1746], 0
je short loc_fffbce49  ; je 0xfffbce49

loc_fffbce16:  ; not directly referenced
mov ecx, ebx
mov eax, dword [ebp + edx*4 - 0x14]
sub ecx, edi
mov word [ebx], ax
mov word [ecx + esi + 0x2980], ax
mov word [ecx + esi + 0x3bc8], ax
mov word [ecx + esi + 0x4e14], ax
mov word [ecx + esi + 0x3cc7], ax
mov word [ecx + esi + 0x4f0f], ax

loc_fffbce49:  ; not directly referenced
inc edx
add ebx, 0x2a
cmp edx, 2
jne short loc_fffbce08  ; jne 0xfffbce08
lea esp, [esp + 0x38]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbce60:  ; not directly referenced
push ebp
mov ebp, esp
push edi
xor edi, edi
push esi
push ebx
lea esp, [esp - 0x20]
mov ecx, dword [ebp + 8]
mov ebx, dword [ebp + 8]
add ecx, 0x10b7
add ebx, 0x2974
mov dword [ebp - 0x28], ecx
mov dword [ebp - 0x2c], ebx

loc_fffbce84:  ; not directly referenced
lea eax, [edi - 2]
cmp eax, 1
ja short loc_fffbcea3  ; ja 0xfffbcea3
mov ecx, dword [ebp + 8]
cmp byte [ecx + 0x1746], 0
jne short loc_fffbcea3  ; jne 0xfffbcea3

loc_fffbce98:  ; not directly referenced
inc edi
cmp edi, 4
jne short loc_fffbce84  ; jne 0xfffbce84
jmp near loc_fffbd00f  ; jmp 0xfffbd00f

loc_fffbcea3:  ; not directly referenced
lea eax, [eax + eax + 0xb0]
mov dword [ebp - 0x14], 0
mov dword [ebp - 0x24], eax

loc_fffbceb4:  ; not directly referenced
imul eax, dword [ebp - 0x14], 0x2fa
mov ebx, dword [ebp - 0x28]
mov ecx, dword [ebp - 0x2c]
mov dword [ebp - 0x10], 0
lea eax, [ebx + eax + 5]
mov dword [ebp - 0x20], eax
imul eax, dword [ebp - 0x14], 0x1347
lea eax, [ecx + eax + 8]
mov dword [ebp - 0x1c], eax

loc_fffbcedd:  ; not directly referenced
imul eax, dword [ebp - 0x10], 0xfb
mov ebx, dword [ebp - 0x1c]
lea edx, [ebx + eax + 0x1150]
cmp dword [edx + 1], 2
lea eax, [edx + 1]
jne loc_fffbcff0  ; jne 0xfffbcff0
imul edx, dword [ebp - 0x10], 0x14f
mov ecx, dword [ebp - 0x20]
mov ebx, dword [ebp - 0x10]
lea esi, [ecx + edx + 8]
lea edx, [edi + ebx*4 + 0x16]
mov ebx, dword [ebp - 0x1c]
lea ecx, [ebx + edx*8]
lea edx, [edi - 2]
cmp edx, 1
ja loc_fffbcfa8  ; ja 0xfffbcfa8
cmp edi, 2
mov dl, byte [eax + 0xe5]
jne short loc_fffbcf32  ; jne 0xfffbcf32
and dl, 1
jmp short loc_fffbcf35  ; jmp 0xfffbcf35

loc_fffbcf32:  ; not directly referenced
and dl, 2

loc_fffbcf35:  ; not directly referenced
je short loc_fffbcf99  ; je 0xfffbcf99
mov dl, byte [esi + 0xdc]
mov bl, dl
and edx, 0xf
shr bl, 4
mov byte [ebp - 0x17], dl
mov edx, dword [ebp - 0x24]
mov byte [ebp - 0x15], bl
cmp byte [eax + 0xe6], 0x12
mov eax, 0
lea ebx, [esi + edx + 0x24]
mov dl, byte [ebx + 4]
movzx ebx, byte [ebx + 5]
mov byte [ebp - 0x16], dl
je short loc_fffbcf81  ; je 0xfffbcf81
cmp byte [ebp - 0x17], 0
je short loc_fffbcf81  ; je 0xfffbcf81
movzx eax, byte [ebp - 0x15]
imul eax, eax, 0x3e8
movzx esi, byte [ebp - 0x17]
cdq
idiv esi

loc_fffbcf81:  ; not directly referenced
mov dword [ecx + 4], eax
xor eax, eax
test bl, bl
je short loc_fffbcfee  ; je 0xfffbcfee
movzx eax, byte [ebp - 0x16]
imul eax, eax, 0xf4240
cdq
idiv ebx
jmp short loc_fffbcfee  ; jmp 0xfffbcfee

loc_fffbcf99:  ; not directly referenced
mov dword [ecx + 4], 0
mov dword [ecx], 0
jmp short loc_fffbcff0  ; jmp 0xfffbcff0

loc_fffbcfa8:  ; not directly referenced
mov bl, byte [esi + 0x2d]
mov al, byte [esi + 0x2e]
mov dl, bl
mov byte [ebp - 0x15], al
shr dl, 4
xor eax, eax
movzx esi, byte [esi + 0x2f]
and bl, 0xf
je short loc_fffbcfd0  ; je 0xfffbcfd0
movzx edx, dl
imul eax, edx, 0x3e8
movzx ebx, bl
cdq
idiv ebx

loc_fffbcfd0:  ; not directly referenced
mov edx, esi
mov dword [ecx + 4], eax
xor eax, eax
test dl, dl
je short loc_fffbcfee  ; je 0xfffbcfee
movzx eax, byte [ebp - 0x15]
and esi, 0xff
imul eax, eax, 0xf4240
cdq
idiv esi

loc_fffbcfee:  ; not directly referenced
mov dword [ecx], eax

loc_fffbcff0:  ; not directly referenced
inc dword [ebp - 0x10]
cmp dword [ebp - 0x10], 2
jne loc_fffbcedd  ; jne 0xfffbcedd
inc dword [ebp - 0x14]
cmp dword [ebp - 0x14], 2
jne loc_fffbceb4  ; jne 0xfffbceb4
jmp near loc_fffbce98  ; jmp 0xfffbce98

loc_fffbd00f:  ; not directly referenced
lea esp, [esp + 0x20]
mov eax, 1
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbd01d:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov al, byte [eax + 0x3e]
mov dl, al
and eax, 0x1f
shr dl, 7
movzx edx, dl
shl edx, 5
or eax, edx
mov edx, dword [ebp + 0x10]
mov byte [edx + 0xe4], al
mov eax, 1
pop ebp
ret

fcn_fffbd046:  ; not directly referenced
push ebp
mov ebp, esp
push esi
push ebx
mov edx, dword [ebp + 0xc]
mov eax, dword [ebp + 0x10]
xor ebx, ebx
mov esi, dword [ebp + 8]
mov cl, byte [edx + 0x1f]
shr cl, 7
mov byte [eax + 0xc1], cl
mov cl, byte [edx + 0x1f]
shr cl, 3
and ecx, 1
mov byte [eax + 0xc2], cl
test byte [edx + 0x1f], 4
je short loc_fffbd083  ; je 0xfffbd083
xor ebx, ebx
cmp byte [esi + 0x1031], 0
setne bl

loc_fffbd083:  ; not directly referenced
mov byte [eax + 0xc0], bl
mov cl, byte [edx + 0x1f]
shr cl, 1
and ecx, 1
mov byte [eax + 0xc4], cl
mov dl, byte [edx + 0x1f]
and edx, 1
xor ecx, ecx
test ebx, ebx
mov byte [eax + 0xc3], dl
jne short loc_fffbd0b9  ; jne 0xfffbd0b9
test dl, dl
je short loc_fffbd0b9  ; je 0xfffbd0b9
xor ecx, ecx
cmp byte [esi + 0x1032], 0
setne cl

loc_fffbd0b9:  ; not directly referenced
mov byte [eax + 0xbf], cl
mov eax, 1
pop ebx
pop esi
pop ebp
ret

fcn_fffbd0c8:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov al, byte [eax + 0x3f]
and eax, 1
mov byte [edx + 0xbe], al
mov eax, 1
pop ebp
ret

fcn_fffbd0e4:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov al, byte [eax + 8]
shr al, 3
and eax, 3
dec al
mov eax, dword [ebp + 0x10]
sete byte [eax + 0xbc]
mov eax, 1
pop ebp
ret

fcn_fffbd106:  ; not directly referenced
push ebp
mov ecx, 8
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x2c]
mov esi, ref_fffcbe1c  ; mov esi, 0xfffcbe1c
push ebx
lea esp, [esp - 0x20]
mov ebx, dword [ebp + 0x10]
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
movzx ecx, byte [ebx + 0xe1]
test cl, cl
je short loc_fffbd16f  ; je 0xfffbd16f
mov al, byte [ebx + 0xe3]
cmp al, 7
ja short loc_fffbd16f  ; ja 0xfffbd16f
movzx edx, al
movzx eax, byte [ebx + 0xe0]
imul eax, dword [ebp + edx*4 - 0x2c]
xor edx, edx
div ecx
movzx edx, byte [ebx + 0xdd]
imul eax, edx
lea edx, [eax - 0x200]
cmp edx, 0x3e00
ja short loc_fffbd16f  ; ja 0xfffbd16f
mov dword [ebx + 0xd1], eax
mov eax, 1
jmp short loc_fffbd17b  ; jmp 0xfffbd17b

loc_fffbd16f:  ; not directly referenced
mov dword [ebx + 0xd1], 0
xor eax, eax

loc_fffbd17b:  ; not directly referenced
lea esp, [esp + 0x20]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbd184:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov al, byte [eax + 7]
shr al, 3
and eax, 7
inc eax
cmp al, 2
ja short loc_fffbd1a8  ; ja 0xfffbd1a8
mov byte [edx + 0xdd], al
mov eax, 1
jmp short loc_fffbd1b1  ; jmp 0xfffbd1b1

loc_fffbd1a8:  ; not directly referenced
mov byte [edx + 0xdd], 0
xor eax, eax

loc_fffbd1b1:  ; not directly referenced
pop ebp
ret

fcn_fffbd1b3:  ; not directly referenced
push ebp
mov ebp, esp
mov ecx, dword [ebp + 0xc]
mov eax, dword [ebp + 0x10]
mov dl, byte [ecx + 4]
and edx, 0xf
mov byte [eax + 0xe3], dl
test byte [ecx + 4], 0x70
jne short loc_fffbd1e3  ; jne 0xfffbd1e3
mov byte [eax + 0xde], 8
mov byte [eax + 0xdf], 0
mov eax, 1
jmp short loc_fffbd1e5  ; jmp 0xfffbd1e5

loc_fffbd1e3:  ; not directly referenced
xor eax, eax

loc_fffbd1e5:  ; not directly referenced
pop ebp
ret

fcn_fffbd1e7:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov al, byte [eax + 8]
and eax, 7
cmp al, 3
jne short loc_fffbd208  ; jne 0xfffbd208
mov byte [edx + 0xe0], 0x40
mov eax, 1
jmp short loc_fffbd211  ; jmp 0xfffbd211

loc_fffbd208:  ; not directly referenced
mov byte [edx + 0xe0], 0
xor eax, eax

loc_fffbd211:  ; not directly referenced
pop ebp
ret

fcn_fffbd213:  ; not directly referenced
push ebp
mov ebp, esp
push ebx
mov eax, dword [ebp + 8]
mov ecx, dword [ebp + 0x10]
mov edx, dword [eax + 0x1005]
mov eax, dword [ebp + 0xc]
mov al, byte [eax + 5]
and eax, 7
cmp al, 2
je short loc_fffbd261  ; je 0xfffbd261
cmp al, 3
je short loc_fffbd279  ; je 0xfffbd279
dec al
jne short loc_fffbd28c  ; jne 0xfffbd28c
cmp edx, HASWELL_FAMILY_ULT
je short loc_fffbd256  ; je 0xfffbd256
cmp edx, HASWELL_FAMILY_GT3E
sete bl
cmp edx, HASWELL_FAMILY_MOBILE
sete al
or bl, al
je short loc_fffbd28c  ; je 0xfffbd28c

loc_fffbd256:  ; not directly referenced
mov word [ecx + 0xd9], 0x400
jmp short loc_fffbd272  ; jmp 0xfffbd272

loc_fffbd261:  ; not directly referenced
cmp edx, HASWELL_FAMILY_ULT
jne short loc_fffbd28c  ; jne 0xfffbd28c
mov word [ecx + 0xd9], 0x800

loc_fffbd272:  ; not directly referenced
mov eax, 1
jmp short loc_fffbd297  ; jmp 0xfffbd297

loc_fffbd279:  ; not directly referenced
cmp edx, HASWELL_FAMILY_ULT
jne short loc_fffbd28c  ; jne 0xfffbd28c
mov word [ecx + 0xd9], 0x1000
jmp short loc_fffbd272  ; jmp 0xfffbd272

loc_fffbd28c:  ; not directly referenced
mov word [ecx + 0xd9], 0
xor eax, eax

loc_fffbd297:  ; not directly referenced
pop ebx
pop ebp
ret

fcn_fffbd30a:  ; not directly referenced
push ebp
mov ebp, esp
mov eax, dword [ebp + 0xc]
mov edx, dword [ebp + 0x10]
mov al, byte [eax + 7]
and eax, 7
cmp al, 2
mov byte [edx + 0xe2], al
je short loc_fffbd334  ; je 0xfffbd334
cmp al, 3
je short loc_fffbd342  ; je 0xfffbd342
dec al
jne short loc_fffbd34b  ; jne 0xfffbd34b
mov byte [edx + 0xe1], 8
jmp short loc_fffbd33b  ; jmp 0xfffbd33b

loc_fffbd334:  ; not directly referenced
mov byte [edx + 0xe1], 0x10

loc_fffbd33b:  ; not directly referenced
mov eax, 1
jmp short loc_fffbd354  ; jmp 0xfffbd354

loc_fffbd342:  ; not directly referenced
mov byte [edx + 0xe1], 0x20
jmp short loc_fffbd33b  ; jmp 0xfffbd33b

loc_fffbd34b:  ; not directly referenced
mov byte [edx + 0xe1], 0
xor eax, eax

loc_fffbd354:  ; not directly referenced
pop ebp
ret

fcn_fffbd356:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, dword [ebp + 8]
mov edx, dword [ebp + 0x10]
push ebx
mov ebx, dword [ebp + 0xc]
mov edi, dword [esi + 0x1005]
mov al, byte [ebx + 6]
mov cl, byte [ebx + 2]
shr al, 1
and eax, 1
cmp cl, 0xb
je short loc_fffbd382  ; je 0xfffbd382
cmp cl, 0xf1
jne short loc_fffbd3dc  ; jne 0xfffbd3dc
jmp short loc_fffbd3b3  ; jmp 0xfffbd3b3

loc_fffbd382:  ; not directly referenced
mov dword [edx + 0xc5], 1
mov cl, byte [ebx + 3]
and ecx, 0xf
add ebx, 0xb0
cmp edi, HASWELL_FAMILY_ULT
mov dword [edx + 0xc9], ecx
jne loc_fffbd48d  ; jne 0xfffbd48d
test al, 1
je short loc_fffbd3f2  ; je 0xfffbd3f2
jmp near loc_fffbd48d  ; jmp 0xfffbd48d

loc_fffbd3b3:  ; not directly referenced
cmp edi, HASWELL_FAMILY_ULT
jne short loc_fffbd3dc  ; jne 0xfffbd3dc
mov dword [edx + 0xc5], 2
mov al, byte [ebx + 3]
and eax, 0xf
add ebx, 0xb0
mov dword [edx + 0xc9], eax
jmp near loc_fffbd48d  ; jmp 0xfffbd48d

loc_fffbd3dc:  ; not directly referenced
mov dword [edx + 0xc5], 0
mov dword [edx + 0xc9], 0
xor ebx, ebx

loc_fffbd3f2:  ; not directly referenced
xor eax, eax

loc_fffbd3f4:  ; not directly referenced
test eax, eax
mov byte [edx + 0xe5], 0
je loc_fffbd4bd  ; je 0xfffbd4bd
cmp word [ebx], 0x4a0c
jne short loc_fffbd430  ; jne 0xfffbd430
mov al, byte [ebx + 3]
and eax, 0xfffffffe
cmp al, 0x12
jne short loc_fffbd430  ; jne 0xfffbd430
mov eax, dword [esi + 0x1021]
cmp eax, 2
jne short loc_fffbd425  ; jne 0xfffbd425
test byte [ebx + 2], 1
jmp short loc_fffbd42e  ; jmp 0xfffbd42e

loc_fffbd425:  ; not directly referenced
cmp eax, 3
jne short loc_fffbd444  ; jne 0xfffbd444
test byte [ebx + 2], 2

loc_fffbd42e:  ; not directly referenced
jne short loc_fffbd444  ; jne 0xfffbd444

loc_fffbd430:  ; not directly referenced
mov eax, dword [esi + 0x1021]
sub eax, 2
cmp eax, 1
seta al
movzx eax, al
jmp short loc_fffbd450  ; jmp 0xfffbd450

loc_fffbd444:  ; not directly referenced
or byte [esi + 0x1746], 1
mov eax, 1

loc_fffbd450:  ; not directly referenced
cmp word [ebx], 0x4a0c
jne short loc_fffbd4bd  ; jne 0xfffbd4bd
movzx edi, byte [ebx + 3]
mov esi, 0xfffffffe
and esi, edi
mov ecx, esi
cmp cl, 0x12
jne short loc_fffbd471  ; jne 0xfffbd471
mov ecx, edi
mov byte [edx + 0xe6], cl

loc_fffbd471:  ; not directly referenced
test byte [ebx + 2], 1
je short loc_fffbd47e  ; je 0xfffbd47e
or byte [edx + 0xe5], 1

loc_fffbd47e:  ; not directly referenced
test byte [ebx + 2], 2
je short loc_fffbd4bd  ; je 0xfffbd4bd
or byte [edx + 0xe5], 2
jmp short loc_fffbd4bd  ; jmp 0xfffbd4bd

loc_fffbd48d:  ; not directly referenced
cmp dword [edx + 0xc9], 8
ja loc_fffbd3f2  ; ja 0xfffbd3f2
mov ecx, dword [edx + 0xc9]
mov edi, 1
mov eax, 1
shl edi, cl
and edi, 0x10c
jne loc_fffbd3f4  ; jne 0xfffbd3f4
jmp near loc_fffbd3f2  ; jmp 0xfffbd3f2

loc_fffbd4bd:  ; not directly referenced
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbd4c2:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, 0x3074
push ebx
xor ebx, ebx
lea esp, [esp - 0x1c]
mov eax, dword [ebp + 8]
lea edx, [eax + 0x16be]
mov dword [ebp - 0x1c], edx

loc_fffbd4df:  ; not directly referenced
mov edx, dword [ebp - 0x1c]
cmp dword [edx + ebx + 0x12be], 2
je short loc_fffbd502  ; je 0xfffbd502

loc_fffbd4ec:  ; not directly referenced
add ebx, 0x1347
add esi, 0x100
cmp ebx, 0x268e
jne short loc_fffbd4df  ; jne 0xfffbd4df
jmp short loc_fffbd559  ; jmp 0xfffbd559

loc_fffbd502:  ; not directly referenced
mov edx, dword [eax + 0x103f]
mov dword [ebp - 0x20], 0
lea edx, [esi + edx - 0x3000]
mov edx, dword [edx]
or edx, 0x100000

loc_fffbd51e:  ; not directly referenced
mov cl, byte [ebp - 0x20]
mov edi, 1
shl edi, cl
mov ecx, edi
test byte [eax + ebx + 0x3acb], cl
je short loc_fffbd54e  ; je 0xfffbd54e
mov edi, dword [ebp - 0x20]
and edx, 0xff3fffff
and edi, 3
shl edi, 0x16
or edx, edi
mov edi, dword [eax + 0x103f]
add edi, esi
mov dword [edi], edx

loc_fffbd54e:  ; not directly referenced
inc dword [ebp - 0x20]
cmp dword [ebp - 0x20], 4
jne short loc_fffbd51e  ; jne 0xfffbd51e
jmp short loc_fffbd4ec  ; jmp 0xfffbd4ec

loc_fffbd559:  ; not directly referenced
cmp dword [eax + 0x297c], 2
jne short loc_fffbd574  ; jne 0xfffbd574
mov ecx, dword [eax + 0x103f]
mov dl, byte [eax + 0x3acb]
mov byte [ecx + 0x4192], dl

loc_fffbd574:  ; not directly referenced
cmp dword [eax + 0x3cc3], 2
jne short loc_fffbd58f  ; jne 0xfffbd58f
mov ecx, dword [eax + 0x103f]
mov dl, byte [eax + 0x4e12]
mov byte [ecx + 0x4592], dl

loc_fffbd58f:  ; not directly referenced
mov ecx, 1
mov edx, 3
call fcn_fffb958c  ; call 0xfffb958c
lea esp, [esp + 0x1c]
xor eax, eax
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffbd5a9:
db 0x00
db 0x00
db 0x00

fcn_fffbd5ac:  ; not directly referenced
push ebp
xor ecx, ecx
mov edx, 3
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x4c]
mov ebx, dword [ebp + 8]
mov eax, ebx
mov byte [ebp - 0x20], 2
mov byte [ebp - 0x1f], 0x40
mov byte [ebp - 0x1e], 1
mov byte [ebp - 0x1d], 0x43
mov byte [ebp - 0x1c], 3
mov byte [ebp - 0x1b], 1
mov byte [ebp - 0x1a], 0xb
mov byte [ebp - 0x19], 0
call fcn_fffb958c  ; call 0xfffb958c
test eax, eax
mov dword [ebp - 0x38], eax
jne loc_fffbd794  ; jne 0xfffbd794
mov eax, dword [ebx + 0x16c6]
cmp eax, 0x320
jbe short loc_fffbd623  ; jbe 0xfffbd623
cmp eax, 0x42b
jbe short loc_fffbd627  ; jbe 0xfffbd627
cmp eax, 0x4b0
jbe short loc_fffbd62b  ; jbe 0xfffbd62b
cmp eax, 0x535
jbe short loc_fffbd62f  ; jbe 0xfffbd62f
cmp eax, 0x640
ja loc_fffbd788  ; ja 0xfffbd788
mov al, 0x1a
jmp short loc_fffbd631  ; jmp 0xfffbd631

loc_fffbd623:  ; not directly referenced
mov al, 0x14
jmp short loc_fffbd631  ; jmp 0xfffbd631

loc_fffbd627:  ; not directly referenced
mov al, 0x16
jmp short loc_fffbd631  ; jmp 0xfffbd631

loc_fffbd62b:  ; not directly referenced
mov al, 0x17
jmp short loc_fffbd631  ; jmp 0xfffbd631

loc_fffbd62f:  ; not directly referenced
mov al, 0x18

loc_fffbd631:  ; not directly referenced
lea esi, [ebx + 0x2974]
mov byte [ebp - 0x1f], al
mov dword [ebp - 0x34], 0
mov dword [ebp - 0x48], esi

loc_fffbd644:  ; not directly referenced
imul esi, dword [ebp - 0x34], 0x1347
mov dword [ebp - 0x3c], esi
cmp dword [ebx + esi + 0x297c], 2
je short loc_fffbd667  ; je 0xfffbd667

loc_fffbd658:  ; not directly referenced
inc dword [ebp - 0x34]
cmp dword [ebp - 0x34], 2
je loc_fffbd778  ; je 0xfffbd778
jmp short loc_fffbd644  ; jmp 0xfffbd644

loc_fffbd667:  ; not directly referenced
mov eax, dword [ebp - 0x48]
mov esi, dword [ebp - 0x3c]
mov dword [ebp - 0x30], 0
lea edi, [eax + esi + 8]

loc_fffbd678:  ; not directly referenced
mov ecx, dword [ebp - 0x3c]
mov esi, dword [ebp - 0x30]
mov eax, 1
mov dl, byte [ebx + ecx + 0x3acb]
mov ecx, esi
shl eax, cl
test dl, al
jne short loc_fffbd69d  ; jne 0xfffbd69d

loc_fffbd692:  ; not directly referenced
inc dword [ebp - 0x30]
cmp dword [ebp - 0x30], 4
jne short loc_fffbd678  ; jne 0xfffbd678
jmp short loc_fffbd658  ; jmp 0xfffbd658

loc_fffbd69d:  ; not directly referenced
test cl, cl
jne short loc_fffbd6bd  ; jne 0xfffbd6bd
cmp byte [ebx + 0x16bb], 0
je short loc_fffbd6bd  ; je 0xfffbd6bd
and edx, 2
cmp dl, 1
sbb eax, eax
and eax, 0xfffffffc
add eax, 6
mov byte [ebp - 0x19], al
jmp short loc_fffbd6c1  ; jmp 0xfffbd6c1

loc_fffbd6bd:  ; not directly referenced
mov byte [ebp - 0x19], 0

loc_fffbd6c1:  ; not directly referenced
mov eax, dword [ebp - 0x30]
lea esi, [ebp - 0x20]
and eax, 1
mov dword [ebp - 0x54], esi
lea esi, [ebp - 0x18]
mov dword [ebp - 0x2c], esi
imul esi, eax, 0xa
mov dword [ebp - 0x40], eax
mov dword [ebp - 0x44], esi

loc_fffbd6dc:  ; not directly referenced
mov esi, dword [ebp - 0x54]
cmp byte [ebx + 0x1742], 0
movzx eax, byte [esi]
je short loc_fffbd70f  ; je 0xfffbd70f
cmp eax, 3
ja short loc_fffbd702  ; ja 0xfffbd702
imul edx, dword [ebp - 0x40], 5
lea edx, [eax + edx + 0x918]
movzx edx, byte [edi + edx*2 + 8]
jmp short loc_fffbd749  ; jmp 0xfffbd749

loc_fffbd702:  ; not directly referenced
mov esi, dword [ebp - 0x44]
movzx edx, byte [edi + esi + 0x1240]
jmp short loc_fffbd749  ; jmp 0xfffbd749

loc_fffbd70f:  ; not directly referenced
mov esi, dword [ebp - 0x54]
cmp eax, 3
movzx edx, byte [esi + 1]
ja short loc_fffbd736  ; ja 0xfffbd736
imul ecx, dword [ebp - 0x40], 5
lea ecx, [eax + ecx + 0x918]
mov dword [ebp - 0x4c], ecx
mov esi, dword [ebp - 0x4c]
movzx ecx, dl
mov word [edi + esi*2 + 8], cx
jmp short loc_fffbd749  ; jmp 0xfffbd749

loc_fffbd736:  ; not directly referenced
cmp eax, 0xb
jne short loc_fffbd749  ; jne 0xfffbd749
mov esi, dword [ebp - 0x44]
movzx ecx, dl
mov word [edi + esi + 0x1240], cx

loc_fffbd749:  ; not directly referenced
push 0
mov ecx, dword [ebp - 0x30]
push 0
push edx
mov edx, dword [ebp - 0x34]
push eax
mov eax, ebx
call fcn_fffb8fda  ; call 0xfffb8fda
add esp, 0x10
test eax, eax
jne short loc_fffbd791  ; jne 0xfffbd791
add dword [ebp - 0x54], 2
mov esi, dword [ebp - 0x2c]
cmp dword [ebp - 0x54], esi
jne loc_fffbd6dc  ; jne 0xfffbd6dc
jmp near loc_fffbd692  ; jmp 0xfffbd692

loc_fffbd778:  ; not directly referenced
mov byte [ebx + 0x1745], 1
mov byte [ebx + 0x1742], 1
jmp short loc_fffbd794  ; jmp 0xfffbd794

loc_fffbd788:  ; not directly referenced
mov dword [ebp - 0x38], 0x15
jmp short loc_fffbd794  ; jmp 0xfffbd794

loc_fffbd791:  ; not directly referenced
mov dword [ebp - 0x38], eax

loc_fffbd794:  ; not directly referenced
mov eax, dword [ebp - 0x38]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbd7da:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x6c]
mov ebx, dword [ebp + 8]
mov eax, ebx
call wait_5030
test eax, eax
jne loc_fffbdf5f  ; jne 0xfffbdf5f
mov eax, ebx
call wait_5084
test eax, eax
jne loc_fffbdf5f  ; jne 0xfffbdf5f
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4d94], 0xf
cmp dword [ebx + 0x1749], 2
jne loc_fffbd95f  ; jne 0xfffbd95f
mov eax, dword [ebx + 0x103f]
lea esi, [ebx + 0x16be]
mov dword [ebp - 0x40], esi
mov dword [eax + 0x4d90], 0xf
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x5030]
or eax, 0x400000
mov dword [edx + 0x5030], eax
mov edx, 1
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
cmp dword [ebx + 0x297c], 2
jne short loc_fffbd879  ; jne 0xfffbd879
mov edx, dword [ebx + 0x103f]
mov al, byte [ebx + 0x3acc]
mov byte [edx + 0x4192], al

loc_fffbd879:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffbd894  ; jne 0xfffbd894
mov edx, dword [ebx + 0x103f]
mov al, byte [ebx + 0x4e13]
mov byte [edx + 0x4592], al

loc_fffbd894:  ; not directly referenced
mov edx, 0xbb8
mov eax, ebx
call fcn_fffb2d3a  ; call 0xfffb2d3a
xor esi, esi

loc_fffbd8a2:  ; not directly referenced
imul eax, esi, 0x1347
mov edx, dword [ebp - 0x40]
mov dword [ebp - 0x3c], eax
cmp dword [edx + eax + 0x12be], 2
je short loc_fffbd8c0  ; je 0xfffbd8c0

loc_fffbd8b8:  ; not directly referenced
inc esi
cmp esi, 2
je short loc_fffbd933  ; je 0xfffbd933
jmp short loc_fffbd8a2  ; jmp 0xfffbd8a2

loc_fffbd8c0:  ; not directly referenced
xor edi, edi

loc_fffbd8c2:  ; not directly referenced
mov edx, dword [ebp - 0x3c]
mov ecx, edi
mov eax, 1
shl eax, cl
test byte [ebx + edx + 0x3acb], al
jne short loc_fffbd8df  ; jne 0xfffbd8df

loc_fffbd8d7:  ; not directly referenced
inc edi
cmp edi, 4
jne short loc_fffbd8c2  ; jne 0xfffbd8c2
jmp short loc_fffbd8b8  ; jmp 0xfffbd8b8

loc_fffbd8df:  ; not directly referenced
cmp byte [ebx + 0x1744], 0
je short loc_fffbd914  ; je 0xfffbd914
push 0
movzx ecx, al
lea eax, [ebp - 0x2c]
push eax
mov edx, esi
mov eax, ebx
push 0
mov dword [ebp - 0x2c], 0x8600
push 7
call fcn_fffb933f  ; call 0xfffb933f
mov edx, 0xf
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
add esp, 0x10

loc_fffbd914:  ; not directly referenced
push 1
mov ecx, edi
mov edx, esi
push 1
mov eax, ebx
push 0xfc
push 0x3f
call fcn_fffb8fda  ; call 0xfffb8fda
add esp, 0x10
test eax, eax
je short loc_fffbd8d7  ; je 0xfffbd8d7
jmp short loc_fffbd941  ; jmp 0xfffbd941

loc_fffbd933:  ; not directly referenced
mov eax, ebx
mov edx, 0x96
call fcn_fffb2d3a  ; call 0xfffb2d3a
xor eax, eax

loc_fffbd941:  ; not directly referenced
cmp byte [ebx + 0x1744], 0
je loc_fffbdf66  ; je 0xfffbdf66
sub esp, 0xc
push ebx
call fcn_fffbd5ac  ; call 0xfffbd5ac
add esp, 0x10
jmp near loc_fffbdf66  ; jmp 0xfffbdf66

loc_fffbd95f:  ; not directly referenced
mov eax, dword [ebx + 0x103b]
mov edi, dword [eax + 0xf80f0]
and edi, 0xfffffffe
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffbd98f  ; jne 0xfffbd98f
mov ecx, dword [edi + 0x333c]
or ecx, 0x4000000
mov dword [ebp - 0x3c], ecx
mov dword [edi + 0x333c], ecx

loc_fffbd98f:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
mov esi, 0x102
mov dword [eax + 0x5030], 0x102
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4d90], 0xf
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffbd9d2  ; jne 0xfffbd9d2
and dword [ebp - 0x3c], 0xfbffffff
mov ecx, dword [ebp - 0x3c]
mov dword [edi + 0x333c], ecx
jmp short loc_fffbd9e7  ; jmp 0xfffbd9e7

loc_fffbd9d2:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
mov esi, dword [eax + 0x5030]
and esi, 0xfffffffd
mov dword [eax + 0x5030], esi

loc_fffbd9e7:  ; not directly referenced
mov edx, 0xbb8
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffbda0f  ; jne 0xfffbda0f
mov eax, dword [ebp - 0x3c]
or eax, 0x4000000
mov dword [edi + 0x333c], eax
jmp short loc_fffbda1e  ; jmp 0xfffbda1e

loc_fffbda0f:  ; not directly referenced
mov eax, dword [ebx + 0x103f]
or esi, 2
mov dword [eax + 0x5030], esi

loc_fffbda1e:  ; not directly referenced
mov edx, 0x1d4c
mov eax, ebx
call fcn_fffb2d3a  ; call 0xfffb2d3a
mov eax, dword [ebx + 0x103f]
or esi, 0x400000
mov edx, 1
mov dword [eax + 0x5030], esi
mov eax, ebx
call fcn_fffb2d76  ; call 0xfffb2d76
cmp dword [ebx + 0x297c], 2
jne short loc_fffbda63  ; jne 0xfffbda63
mov edx, dword [ebx + 0x103f]
mov al, byte [ebx + 0x3acb]
mov byte [edx + 0x4192], al

loc_fffbda63:  ; not directly referenced
cmp dword [ebx + 0x3cc3], 2
jne short loc_fffbda7e  ; jne 0xfffbda7e
mov edx, dword [ebx + 0x103f]
mov al, byte [ebx + 0x4e12]
mov byte [edx + 0x4592], al

loc_fffbda7e:  ; not directly referenced
mov eax, ebx
mov edx, 1
call fcn_fffb2d76  ; call 0xfffb2d76
lea esi, [ebx + 0x16be]
mov dword [ebp - 0x54], esi
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x6c], esi
imul esi, dword [ebx + 0x1021], 0x2a
xor eax, eax
mov byte [ebp - 0x40], 0
mov dword [ebp - 0x70], esi
jmp near loc_fffbdcdb  ; jmp 0xfffbdcdb

loc_fffbdab1:  ; not directly referenced
movzx edx, byte [ebp - 0x40]
mov ecx, dword [ebp - 0x54]
imul eax, edx, 0x1347
mov dword [ebp - 0x44], edx
cmp dword [ecx + eax + 0x12be], 2
jne loc_fffbdcd6  ; jne 0xfffbdcd6
mov esi, dword [ebp - 0x6c]
mov dword [ebp - 0x60], eax
mov dword [ebp - 0x3c], 0
lea edi, [esi + eax + 8]
mov esi, dword [ebp - 0x70]
add eax, ebx
mov dword [ebp - 0x68], eax
mov si, word [edi + esi + 0x10]
mov word [ebp - 0x72], si
mov dl, byte [ebp - 0x72]
sub edx, 5
and edx, 7
shl edx, 3
mov word [ebp - 0x50], dx
mov edx, dword [ebp - 0x44]
shl edx, 0xa
mov dword [ebp - 0x64], edx

loc_fffbdb0a:  ; not directly referenced
mov esi, dword [ebp - 0x68]
mov cl, byte [ebp - 0x3c]
mov eax, 1
mov byte [ebp - 0x47], cl
shl eax, cl
test byte [esi + 0x3acb], al
je loc_fffbdcaa  ; je 0xfffbdcaa
cmp byte [ebx + 0x1742], 0
je short loc_fffbdb4d  ; je 0xfffbdb4d
mov al, cl
shr al, 1
movzx eax, al
imul eax, eax, 0xfb
mov ax, word [edi + eax + 0x123c]
mov word [ebp - 0x50], ax
jmp near loc_fffbdc9a  ; jmp 0xfffbdc9a

loc_fffbdb4d:  ; not directly referenced
mov al, byte [ebp - 0x47]
shr al, 1
movzx esi, al
mov byte [ebp - 0x46], al
imul eax, esi, 0xfb
mov dword [ebp - 0x4c], esi
cmp byte [edi + eax + 0x1211], 1
jne short loc_fffbdb7d  ; jne 0xfffbdb7d
cmp byte [ebx + 0x1070], 0
je short loc_fffbdb93  ; je 0xfffbdb93
cmp byte [ebx + 0x1748], 1
je short loc_fffbdb93  ; je 0xfffbdb93

loc_fffbdb7d:  ; not directly referenced
imul eax, dword [ebp - 0x4c], 0xfb
cmp byte [edi + eax + 0x1210], 1
sete al
xor edx, edx
jmp short loc_fffbdb97  ; jmp 0xfffbdb97

loc_fffbdb93:  ; not directly referenced
xor eax, eax
mov dl, 1

loc_fffbdb97:  ; not directly referenced
and edx, 1
mov esi, dword [ebp - 0x50]
shl edx, 6
and si, 0xff3f
and eax, 1
or esi, edx
shl eax, 7
mov ecx, dword [ebp - 0x4c]
or esi, eax
mov edx, dword [ebp - 0x44]
mov eax, ebx
call fcn_fffb90cf  ; call 0xfffb90cf
test eax, eax
je loc_fffbdcf9  ; je 0xfffbdcf9
movzx eax, byte [eax]
xor edx, edx
cmp al, 0x78
ja short loc_fffbdbd7  ; ja 0xfffbdbd7
mov cl, 0x3c
div cl
test ah, 0x3f
cmove edx, eax

loc_fffbdbd7:  ; not directly referenced
and edx, 3
and si, 0xf9ff
shl edx, 9
mov ecx, dword [ebp - 0x60]
or esi, edx
mov edx, dword [ebp - 0x64]
movzx eax, si
mov word [ebp - 0x50], si
mov dword [ebp - 0x2c], eax
mov eax, dword [ebx + 0x103f]
lea eax, [edx + eax + 0x429c]
mov dword [ebp - 0x5c], eax
movzx edx, byte [ebp - 0x46]
mov eax, dword [eax]
imul edx, edx, 0xfb
and eax, 0xfffff8c0
lea edx, [edx + ecx + 0x3ab0]
lea edx, [ebx + edx + 0x1d]
mov dword [ebp - 0x58], edx
cmp byte [edx + 0xbf], 1
jne short loc_fffbdc4b  ; jne 0xfffbdc4b
mov cl, byte [ebp - 0x46]
mov edx, 1
shl edx, cl
mov dword [ebp - 0x78], edx
mov edx, eax
shr edx, 6
or edx, dword [ebp - 0x78]
and edx, 3
and al, 0x3f
shl edx, 6
or eax, edx

loc_fffbdc4b:  ; not directly referenced
mov edx, dword [ebp - 0x58]
and byte [ebp - 0x2c], 0x3f
or eax, dword [ebp - 0x2c]
cmp byte [edx + 0xbe], 1
jne short loc_fffbdc7e  ; jne 0xfffbdc7e
mov cl, byte [ebp - 0x46]
mov edx, 1
shl edx, cl
mov dword [ebp - 0x58], edx
mov edx, eax
shr edx, 0xe
or edx, dword [ebp - 0x58]
and edx, 3
and ah, 0x3f
shl edx, 0xe
or eax, edx

loc_fffbdc7e:  ; not directly referenced
mov edx, dword [ebp - 0x5c]
mov dword [edx], eax
imul eax, dword [ebp - 0x4c], 0xfb
add eax, edi
mov word [eax + 0x123c], si
mov word [eax + 0x1246], si

loc_fffbdc9a:  ; not directly referenced
mov al, byte [ebp - 0x47]
mov esi, dword [ebp - 0x50]
shr al, 1
movzx eax, al
mov word [ebp + eax*2 - 0x24], si

loc_fffbdcaa:  ; not directly referenced
add dword [ebp - 0x3c], 2
cmp dword [ebp - 0x3c], 4
jne loc_fffbdb0a  ; jne 0xfffbdb0a
push 0
lea eax, [ebp - 0x24]
mov ecx, 0xf
push eax
mov edx, dword [ebp - 0x44]
mov eax, ebx
push 2
push 0
call fcn_fffb933f  ; call 0xfffb933f
add esp, 0x10
jmp short loc_fffbdcd8  ; jmp 0xfffbdcd8

loc_fffbdcd6:  ; not directly referenced
xor eax, eax

loc_fffbdcd8:  ; not directly referenced
inc byte [ebp - 0x40]

loc_fffbdcdb:  ; not directly referenced
test eax, eax
sete cl
cmp byte [ebp - 0x40], 1
setbe dl
test cl, dl
jne loc_fffbdab1  ; jne 0xfffbdab1
test eax, eax
jne loc_fffbdf5f  ; jne 0xfffbdf5f
jmp short loc_fffbdd03  ; jmp 0xfffbdd03

loc_fffbdcf9:  ; not directly referenced
mov eax, 1
jmp near loc_fffbdf5f  ; jmp 0xfffbdf5f

loc_fffbdd03:  ; not directly referenced
xor eax, eax
xor edi, edi
jmp short loc_fffbdd49  ; jmp 0xfffbdd49

loc_fffbdd09:  ; not directly referenced
mov eax, edi
mov esi, dword [ebp - 0x54]
movzx edx, al
xor eax, eax
imul ecx, edx, 0x1347
cmp dword [esi + ecx + 0x12be], 2
jne short loc_fffbdd48  ; jne 0xfffbdd48
push 0
lea eax, [ebp - 0x24]
mov ecx, 0xf
push eax
mov eax, ebx
mov word [ebp - 0x24], 0
push 3
mov word [ebp - 0x22], 0
push 0
call fcn_fffb933f  ; call 0xfffb933f
add esp, 0x10

loc_fffbdd48:  ; not directly referenced
inc edi

loc_fffbdd49:  ; not directly referenced
test eax, eax
mov edx, edi
sete cl
cmp dl, 1
setbe dl
test cl, dl
jne short loc_fffbdd09  ; jne 0xfffbdd09
test eax, eax
jne loc_fffbdf5f  ; jne 0xfffbdf5f
mov eax, ebx
call fcn_fffc43c7  ; call 0xfffc43c7
test eax, eax
jne loc_fffbdf5f  ; jne 0xfffbdf5f
lea edi, [ebp - 0x24]
mov esi, ref_fffcbe50  ; mov esi, 0xfffcbe50
mov ecx, 3
mov byte [ebp - 0x3c], 0
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
lea esi, [ebx + 0x2974]
mov dword [ebp - 0x4c], esi
imul esi, dword [ebx + 0x1021], 0x2a
mov edi, 0x100
mov dword [ebp - 0x50], esi
jmp near loc_fffbdf1c  ; jmp 0xfffbdf1c

loc_fffbdda1:  ; not directly referenced
movzx edx, byte [ebp - 0x3c]
mov ecx, dword [ebp - 0x54]
imul eax, edx, 0x1347
mov dword [ebp - 0x40], edx
cmp dword [ecx + eax + 0x12be], 2
jne loc_fffbdf17  ; jne 0xfffbdf17
mov edx, dword [ebp - 0x4c]
lea esi, [edx + eax + 8]
mov eax, dword [ebp - 0x50]
add eax, esi
mov cx, word [eax + 0xe]
mov word [ebp - 0x44], cx
movzx ecx, word [eax + 0x2e]
cmp cx, 4
jbe loc_fffbdf36  ; jbe 0xfffbdf36
cmp cx, 0xa
setne dl
cmp cx, 8
seta al
test dl, al
je short loc_fffbde08  ; je 0xfffbde08
mov eax, ecx
and eax, 0xfffffffd
cmp ax, 0xc
je short loc_fffbde08  ; je 0xfffbde08
cmp cx, 0x10
jne loc_fffbdf36  ; jne 0xfffbdf36

loc_fffbde08:  ; not directly referenced
cmp word [ebp - 0x44], 0xc
sbb edx, edx
mov eax, edx
and eax, 0xfffffff8
add eax, 0xc
mov word [ebp - 0x58], ax
lea edx, [edx*4 + 4]
mov al, byte [ebp - 0x44]
and edx, 4
sub eax, dword [ebp - 0x58]
mov word [ebp - 0x46], dx
mov edx, edi
mov edi, eax
movzx eax, byte [ebp + ecx - 0x29]
and edi, 7
and edx, 0xffffff8b
shl edi, 4
or dx, word [ebp - 0x46]
or edx, edi
and eax, 7
shl eax, 9
and dh, 0xf1
or edx, eax
mov al, byte [ebx + 0x1069]
cmp al, 6
mov edi, edx
setne cl
cmp al, 1
seta byte [ebp - 0x44]
and di, 0xefff
test byte [ebp - 0x44], cl
jne short loc_fffbde83  ; jne 0xfffbde83
cmp al, 1
mov edi, edx
setbe al
and di, 0xefff
and eax, 1
shl eax, 0xc
or edi, eax

loc_fffbde83:  ; not directly referenced
imul eax, dword [ebp - 0x40], 0x1347
test byte [ebx + eax + 0x3acb], 1
je short loc_fffbdebe  ; je 0xfffbdebe
cmp byte [ebx + 0x1742], 0
jne short loc_fffbdeb5  ; jne 0xfffbdeb5
jmp short loc_fffbdea5  ; jmp 0xfffbdea5

loc_fffbde9f:  ; not directly referenced
mov word [ebp - 0x28], di
jmp short loc_fffbdebe  ; jmp 0xfffbdebe

loc_fffbdea5:  ; not directly referenced
mov word [esi + 0x1238], di
mov word [esi + 0x1242], di
jmp short loc_fffbde9f  ; jmp 0xfffbde9f

loc_fffbdeb5:  ; not directly referenced
mov di, word [esi + 0x1238]
jmp short loc_fffbde9f  ; jmp 0xfffbde9f

loc_fffbdebe:  ; not directly referenced
imul eax, dword [ebp - 0x40], 0x1347
test byte [ebx + eax + 0x3acb], 4
je short loc_fffbdef9  ; je 0xfffbdef9
cmp byte [ebx + 0x1742], 0
jne short loc_fffbdef0  ; jne 0xfffbdef0
jmp short loc_fffbdee0  ; jmp 0xfffbdee0

loc_fffbdeda:  ; not directly referenced
mov word [ebp - 0x26], di
jmp short loc_fffbdef9  ; jmp 0xfffbdef9

loc_fffbdee0:  ; not directly referenced
mov word [esi + 0x1333], di
mov word [esi + 0x133d], di
jmp short loc_fffbdeda  ; jmp 0xfffbdeda

loc_fffbdef0:  ; not directly referenced
mov di, word [esi + 0x1333]
jmp short loc_fffbdeda  ; jmp 0xfffbdeda

loc_fffbdef9:  ; not directly referenced
push 0
lea eax, [ebp - 0x28]
mov ecx, 0xf
push eax
mov edx, dword [ebp - 0x40]
mov eax, ebx
push 0
push 0
call fcn_fffb933f  ; call 0xfffb933f
add esp, 0x10
jmp short loc_fffbdf19  ; jmp 0xfffbdf19

loc_fffbdf17:  ; not directly referenced
xor eax, eax

loc_fffbdf19:  ; not directly referenced
inc byte [ebp - 0x3c]

loc_fffbdf1c:  ; not directly referenced
test eax, eax
sete cl
cmp byte [ebp - 0x3c], 1
setbe dl
test cl, dl
jne loc_fffbdda1  ; jne 0xfffbdda1
test eax, eax
jne short loc_fffbdf5f  ; jne 0xfffbdf5f
jmp short loc_fffbdf3d  ; jmp 0xfffbdf3d

loc_fffbdf36:  ; not directly referenced
mov eax, 0xc
jmp short loc_fffbdf5f  ; jmp 0xfffbdf5f

loc_fffbdf3d:  ; not directly referenced
xor ecx, ecx
mov edx, 3
mov eax, ebx
call fcn_fffb958c  ; call 0xfffb958c
test eax, eax
jne short loc_fffbdf5f  ; jne 0xfffbdf5f
mov edx, dword [ebx + 0x103f]
mov dword [edx + 0x4d94], 0

loc_fffbdf5f:  ; not directly referenced
mov byte [ebx + 0x1742], 1

loc_fffbdf66:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffbdf6e:
db 0x00
db 0x00

fcn_fffbe238:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x6bcc]
mov dword [ebp - 0x6b4c], eax
mov al, byte [ebp + 0x30]
mov bl, byte [ebp + 8]
mov byte [ebp - 0x6b76], al
mov eax, dword [ebp - 0x6b4c]
mov byte [ebp - 0x6b48], bl
mov bl, byte [ebp + 0xc]
mov dword [ebp - 0x6b98], edx
mov byte [ebp - 0x6b50], bl
mov bl, byte [ebp + 0x14]
mov edi, dword [ebp + 0x28]
mov dl, byte [eax + 0x176b]
mov byte [ebp - 0x6ba3], bl
and edx, ecx
mov bl, byte [ebp + 0x20]
mov byte [ebp - 0x6b54], bl
xor ecx, ecx
mov bl, byte [ebp + 0x24]
mov esi, edx
mov dl, byte [eax + 0x176a]
lea eax, [ebp - 0x4efc]
and byte [ebp - 0x6b48], dl
mov edx, 0x4ee4
mov byte [ebp - 0x6b58], bl
mov bl, byte [ebp + 0x2c]
call mrc_setmem
mov ecx, 0xff
mov edx, 0x3e
mov eax, dword [ebp - 0x6b98]
call mrc_setmem
xor ecx, ecx
mov edx, 0xf0
lea eax, [ebp - 0x6aec]
call mrc_setmem
xor ecx, ecx
mov edx, 0x30
lea eax, [ebp - 0x6b1c]
call mrc_setmem
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x6b37]
call mrc_setmem
xor ecx, ecx
mov edx, 0x10
lea eax, [ebp - 0x6b2c]
call mrc_setmem
xor eax, eax

loc_fffbe31a:  ; not directly referenced
mov byte [ebp + eax - 0x6b35], al
inc eax
cmp eax, 9
jne short loc_fffbe31a  ; jne 0xfffbe31a
mov eax, dword [ebp - 0x6b4c]
cmp bl, 9
mov byte [eax + 0x1741], 0
jne short loc_fffbe33c  ; jne 0xfffbe33c
dec edi
jmp short loc_fffbe345  ; jmp 0xfffbe345

loc_fffbe33c:  ; not directly referenced
cmp bl, 0xa
lea eax, [edi - 3]
cmove edi, eax

loc_fffbe345:  ; not directly referenced
sub esp, 0xc
and esi, 0xff
mov edx, edi
mov eax, dword [ebp - 0x6b4c]
push 0
movzx ecx, dl
mov edx, esi
call fcn_fffc5844  ; call 0xfffc5844
add esp, 0x10
test bl, bl
je short loc_fffbe375  ; je 0xfffbe375
mov eax, dword [ebp - 0x6b4c]
mov byte [eax + 0x1768], bl

loc_fffbe375:  ; not directly referenced
mov edx, dword [ebp - 0x6b4c]
xor ebx, ebx
add edx, 0x2974
mov byte [ebp - 0x6b60], 0
mov dword [ebp - 0x6b5c], edx

loc_fffbe390:  ; not directly referenced
bt esi, ebx
jae short loc_fffbe3e4  ; jae 0xfffbe3e4
imul edi, ebx, 0x1347
add edi, dword [ebp - 0x6b5c]
mov cl, byte [ebp - 0x6b48]
mov edx, ebx
mov eax, dword [ebp - 0x6b4c]
and cl, byte [edi + 0x1157]
mov byte [ebp + ebx - 0x6b37], cl
movzx ecx, cl
call fcn_fffc41bb  ; call 0xfffc41bb
or byte [ebp - 0x6b60], al
mov eax, dword [ebp - 0x6b4c]
xor ecx, ecx
movzx edx, byte [eax + 0x1755]
lea eax, [edi + 0x101]
call mrc_setmem

loc_fffbe3e4:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffbe390  ; jne 0xfffbe390
cmp byte [ebp - 0x6b60], 0
je loc_fffbeffd  ; je 0xfffbeffd
movzx ebx, byte [ebp - 0x6b48]
xor eax, eax
mov dword [ebp - 0x6ba0], ebx

loc_fffbe406:  ; not directly referenced
mov esi, dword [ebp - 0x6ba0]
mov byte [ebp - 0x6b88], al
bt esi, eax
jb short loc_fffbe424  ; jb 0xfffbe424
inc eax
cmp eax, 4
jne short loc_fffbe406  ; jne 0xfffbe406
mov byte [ebp - 0x6b88], 0

loc_fffbe424:  ; not directly referenced
mov ebx, dword [ebp - 0x6b4c]
mov al, 1
mov bl, byte [ebx + 0x1755]
mov byte [ebp - 0x6b75], bl
mov bl, byte [ebp - 0x6b50]
sub ebx, 7
cmp bl, 2
mov byte [ebp - 0x6ba4], bl
mov bl, byte [ebp - 0x6b75]
cmovbe ebx, eax
cmp byte [ebp - 0x6b50], 3
sete dl
cmp byte [ebp - 0x6b50], 1
setbe al
mov byte [ebp - 0x6b75], bl
or dl, al
jne short loc_fffbe494  ; jne 0xfffbe494
xor ebx, ebx
cmp byte [ebp - 0x6b50], 2
sete bl
mov byte [ebp - 0x6b5c], 0
test ebx, ebx
mov dword [ebp - 0x6bac], ebx
je loc_fffbe54b  ; je 0xfffbe54b
jmp short loc_fffbe49e  ; jmp 0xfffbe49e

loc_fffbe494:  ; not directly referenced
mov dword [ebp - 0x6bac], 1

loc_fffbe49e:  ; not directly referenced
mov esi, dword [ebp - 0x6b4c]
cmp byte [ebp - 0x6b50], 1
mov eax, dword [esi + 0x103f]
jne short loc_fffbe4bb  ; jne 0xfffbe4bb
mov eax, dword [eax + 0x3a04]
jmp short loc_fffbe4ea  ; jmp 0xfffbe4ea

loc_fffbe4bb:  ; not directly referenced
mov eax, dword [eax + 0x3a00]
jb short loc_fffbe4ea  ; jb 0xfffbe4ea
cmp byte [ebp - 0x6b50], 2
je short loc_fffbe4d7  ; je 0xfffbe4d7
cmp byte [ebp - 0x6b50], 3
jne short loc_fffbe4f7  ; jne 0xfffbe4f7
jmp short loc_fffbe4e7  ; jmp 0xfffbe4e7

loc_fffbe4d7:  ; not directly referenced
shr eax, 0x1a
and eax, 0x1f
mov byte [ebp - 0x6b5c], al
mov al, 0x1f
jmp short loc_fffbe500  ; jmp 0xfffbe500

loc_fffbe4e7:  ; not directly referenced
shr eax, 0x14

loc_fffbe4ea:  ; not directly referenced
and eax, 0x3f
mov byte [ebp - 0x6b5c], al
mov al, 0x3f
jmp short loc_fffbe500  ; jmp 0xfffbe500

loc_fffbe4f7:  ; not directly referenced
mov al, 0x3f
mov byte [ebp - 0x6b5c], 0

loc_fffbe500:  ; not directly referenced
mov dl, byte [ebp - 0x6b5c]
mov bl, byte [ebp - 0x6b54]
sub edx, 3
mov cl, dl
neg ecx
add dl, byte [ebp - 0x6b54]
cmovs ebx, ecx
sub eax, 3
mov byte [ebp - 0x6b54], bl
sub eax, dword [ebp - 0x6b5c]
mov bl, byte [ebp - 0x6b58]
cmp al, byte [ebp - 0x6b58]
cmovs ebx, eax
mov al, byte [ebp - 0x6b54]
cmp bl, al
cmovge eax, ebx
mov byte [ebp - 0x6b58], al

loc_fffbe54b:  ; not directly referenced
movzx esi, byte [ebp - 0x6b88]
mov ebx, dword [ebp + 0x1c]
mov dword [ebp - 0x6b8c], ebx
mov dword [ebp - 0x6b64], esi
imul ebx, esi, 0x90
mov esi, dword [ebp + 0x10]
mov dword [ebp - 0x6bb8], ebx
mov dword [ebp - 0x6b70], esi
movzx ebx, byte [ebp - 0x6ba3]
movsx si, byte [ebp - 0x6b54]
mov word [ebp - 0x6ba2], bx
mov word [ebp - 0x6bc2], si
jmp near loc_fffbe883  ; jmp 0xfffbe883

loc_fffbe598:  ; not directly referenced
mov esi, dword [ebp - 0x6b70]
mov bl, byte [esi]
movzx esi, bl
mov dword [ebp - 0x6b6c], esi
xor esi, esi
cmp bl, 0x21
ja short loc_fffbe5bd  ; ja 0xfffbe5bd
mov eax, dword [ebp - 0x6b6c]
movzx esi, byte [eax + ref_fffcc308]  ; movzx esi, byte [eax - 0x33cf8]

loc_fffbe5bd:  ; not directly referenced
push eax
mov edx, dword [ebp - 0x6b4c]
mov ecx, dword [ebp - 0x6b6c]
push eax
push dword [ebp - 0x6ba0]
push dword [ebp - 0x6b64]
add edx, 0x1774
mov eax, dword [ebp - 0x6b4c]
mov dword [ebp - 0x6b9c], edx
call fcn_fffb0bed  ; call 0xfffb0bed
add esp, 0x10
cmp bl, 0x10
sete dl
cmp bl, 4
sete al
mov byte [ebp - 0x6b48], 0x36
or dl, al
jne short loc_fffbe636  ; jne 0xfffbe636
cmp bl, 5
sete dl
cmp bl, 0x20
sete al
or dl, al
jne short loc_fffbe636  ; jne 0xfffbe636
cmp bl, 0x21
sete al
cmp bl, 0x11
sete dl
or eax, edx
cmp al, 1
sbb ebx, ebx
and ebx, 0xffffffe9
add ebx, 0x36
mov byte [ebp - 0x6b48], bl

loc_fffbe636:  ; not directly referenced
mov ebx, dword [ebp - 0x6b8c]
xor edx, edx
mov ecx, 0x14
mov dword [ebp - 0x6b68], 0
movzx edi, di
mov ax, word [ebx]
mov bl, byte [ebp - 0x6b48]
div cx
movzx edx, byte [ebp - 0x6b48]
cmp dx, ax
cmova ebx, eax
and esi, 0xff
imul edi, edi, 0x6c0
imul esi, esi, 0x240
mov eax, dword [ebp - 0x6b4c]
add esi, dword [ebp - 0x6bb8]
mov byte [ebp - 0x6b48], bl
lea edi, [ebp + edi - 0x69fc]
mov dword [ebp - 0x6bc0], edi
lea esi, [eax + esi + 0x177c]
mov dword [ebp - 0x6bb4], esi
jmp near loc_fffbe85e  ; jmp 0xfffbe85e

loc_fffbe6ac:  ; not directly referenced
mov dl, byte [ebp - 0x6b68]
mov si, word [ebp - 0x6bc2]
add esi, dword [ebp - 0x6b68]
mov byte [ebp - 0x6b74], dl
xor ebx, ebx
mov word [ebp - 0x6b94], si

loc_fffbe6ce:  ; not directly referenced
movzx esi, byte [ebp - 0x6b60]
bt esi, ebx
mov dword [ebp - 0x6b90], esi
jb short loc_fffbe6e8  ; jb 0xfffbe6e8

loc_fffbe6e0:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffbe6ce  ; jne 0xfffbe6ce
jmp short loc_fffbe74c  ; jmp 0xfffbe74c

loc_fffbe6e8:  ; not directly referenced
xor edi, edi
cmp byte [ebp - 0x6b50], 7
jne short loc_fffbe70c  ; jne 0xfffbe70c
imul eax, ebx, 0x1347
mov edx, dword [ebp - 0x6b4c]
cmp dword [edx + eax + 0x2a71], 2
mov al, 0x20
cmove edi, eax

loc_fffbe70c:  ; not directly referenced
xor esi, esi
jmp short loc_fffbe740  ; jmp 0xfffbe740

loc_fffbe710:  ; not directly referenced
mov eax, edi
mov edx, ebx
push 0
cbw
movzx ecx, byte [ebp + ebx - 0x6b37]
add eax, dword [ebp - 0x6b94]
cwde
push eax
movzx eax, byte [ebp - 0x6b50]
push eax
mov eax, dword [ebp - 0x6b4c]
push esi
inc esi
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x10

loc_fffbe740:  ; not directly referenced
mov ecx, esi
cmp byte [ebp - 0x6b75], cl
ja short loc_fffbe710  ; ja 0xfffbe710
jmp short loc_fffbe6e0  ; jmp 0xfffbe6e0

loc_fffbe74c:  ; not directly referenced
push edi
lea eax, [ebp - 0x6b2c]
mov ecx, dword [ebp - 0x6b90]
push edi
mov edx, dword [ebp - 0x6b9c]
xor edi, edi
push eax
movzx eax, byte [ebp - 0x6b48]
push eax
lea eax, [ebp - 0x6b35]
push eax
push dword [ebp - 0x6b6c]
push dword [ebp - 0x6b64]
push dword [ebp - 0x6b64]
mov eax, dword [ebp - 0x6b4c]
call fcn_fffc69bc  ; call 0xfffc69bc
movsx eax, byte [ebp - 0x6b74]
mov ebx, dword [ebp - 0x6bb4]
imul eax, eax, 0x48
add eax, dword [ebp - 0x6bc0]
mov dword [ebp - 0x6bbc], eax
add esp, 0x20
mov dword [ebp - 0x6bc8], ebx

loc_fffbe7b4:  ; not directly referenced
mov esi, dword [ebp - 0x6b90]
bt esi, edi
jae loc_fffbe847  ; jae 0xfffbe847
imul edx, edi, 0x24
imul esi, edi, 0xffffffffffffffdc
mov eax, dword [ebp - 0x6b4c]
mov ecx, dword [ebp - 0x6bc8]
mov ebx, dword [ebp - 0x6bbc]
sub ecx, 8
mov dword [ebp - 0x6b94], edx
add ebx, edx
mov dword [ebp - 0x6bb0], esi
mov al, byte [eax + 0x1755]
mov byte [ebp - 0x6ba8], al
jmp short loc_fffbe840  ; jmp 0xfffbe840

loc_fffbe7fa:  ; not directly referenced
mov esi, dword [ecx + eax*8]
cmp dx, si
mov word [ebx + eax*4], si
mov word [ebp - 0x6b74], si
cmova edx, esi
inc eax

loc_fffbe80f:  ; not directly referenced
cmp byte [ebp - 0x6ba8], al
ja short loc_fffbe7fa  ; ja 0xfffbe7fa
cmp byte [ebp - 0x6b75], 1
jne short loc_fffbe832  ; jne 0xfffbe832
mov eax, dword [ebp - 0x6bb0]
mov esi, dword [ebp - 0x6b94]
add eax, ebx
mov word [eax + esi], dx

loc_fffbe832:  ; not directly referenced
add ecx, 4
add ebx, 2
cmp ecx, dword [ebp - 0x6bc8]
je short loc_fffbe847  ; je 0xfffbe847

loc_fffbe840:  ; not directly referenced
xor eax, eax
or edx, 0xffffffff
jmp short loc_fffbe80f  ; jmp 0xfffbe80f

loc_fffbe847:  ; not directly referenced
inc edi
add dword [ebp - 0x6bc8], 0x48
cmp edi, 2
jne loc_fffbe7b4  ; jne 0xfffbe7b4
inc dword [ebp - 0x6b68]

loc_fffbe85e:  ; not directly referenced
mov al, byte [ebp - 0x6b54]
add eax, dword [ebp - 0x6b68]
cmp byte [ebp - 0x6b58], al
jge loc_fffbe6ac  ; jge 0xfffbe6ac
add dword [ebp - 0x6b8c], 2
inc dword [ebp - 0x6b70]

loc_fffbe883:  ; not directly referenced
mov edi, dword [ebp - 0x6b70]
sub edi, dword [ebp + 0x10]
cmp di, word [ebp - 0x6ba2]
jb loc_fffbe598  ; jb 0xfffbe598
movzx eax, byte [ebp - 0x6ba3]
mov bl, byte [ebp - 0x6b58]
imul eax, eax, 0x30
sub ebx, dword [ebp - 0x6b54]
mov byte [ebp - 0x6b94], bl
inc ebx
mov byte [ebp - 0x6b68], bl
mov edx, dword [ebp - 0x6b98]
movzx ebx, byte [ebp - 0x6b60]
mov dword [ebp - 0x6b90], edx
movzx esi, byte [ebp - 0x6b68]
xor edi, edi
lea eax, [ebp + eax - 0x6aec]
mov dword [ebp - 0x6b9c], ebx
mov dword [ebp - 0x6b8c], eax
mov dword [ebp - 0x6b74], esi

loc_fffbe8f1:  ; not directly referenced
mov ebx, dword [ebp - 0x6b9c]
bt ebx, edi
jae loc_fffbed7f  ; jae 0xfffbed7f
imul eax, edi, 0x1347
mov esi, dword [ebp - 0x6b4c]
lea ebx, [edi + edi*8]
mov dword [ebp - 0x6b48], 0
mov dword [ebp - 0x6ba8], ebx
lea eax, [esi + eax + 0x297c]
mov dword [ebp - 0x6b60], eax
imul eax, edi, 0x2772
lea eax, [ebp + eax - 0x4efc]
mov dword [ebp - 0x6b70], eax
jmp near loc_fffbed6d  ; jmp 0xfffbed6d

loc_fffbe944:  ; not directly referenced
movsx ecx, byte [ebp - 0x6b6c]
mov eax, dword [ebp + 0x10]
mov bl, byte [eax + esi]
lea eax, [ebx - 4]
cmp al, 1
setbe dl
cmp bl, 0x21
sete al
or dl, al
jne short loc_fffbe96c  ; jne 0xfffbe96c
cmp bl, 0x20
jne loc_fffbea09  ; jne 0xfffbea09

loc_fffbe96c:  ; not directly referenced
mov ebx, dword [ebp + 0x18]
movzx edx, byte [ebx + esi]
imul eax, esi, 0x1b0
imul ebx, ecx, 0x12
add eax, ebx
add eax, dword [ebp - 0x6ba8]
add eax, dword [ebp - 0x6b48]
mov ebx, edx
imul bx, word [ebp + eax*4 - 0x69fa]
imul edx, dword [ebp + eax*4 - 0x69fc]
lea eax, [edx + ebx]
add eax, eax
mov word [ebp - 0x6b78], ax
mov eax, ebx
sub eax, edx
mov word [ebp - 0x6ba0], ax
mov eax, dword [ebp - 0x6b78]
sub eax, dword [ebp - 0x6ba0]
mov word [ebp - 0x6bb4], ax
mov eax, dword [ebp - 0x6b78]
add eax, dword [ebp - 0x6ba0]
cmp bx, dx
mov edx, dword [ebp - 0x6bb4]
mov ebx, 2
cmovbe edx, eax
mov word [ebp - 0x6bb4], dx
mov eax, dword [ebp - 0x6bb4]
imul edx, esi, 0x18
add ecx, edx
mov edx, eax
sar dx, 0xf
idiv bx
mov word [ebp + ecx*2 - 0x6aec], ax
jmp short loc_fffbea49  ; jmp 0xfffbea49

loc_fffbea09:  ; not directly referenced
mov ebx, dword [ebp + 0x18]
mov eax, dword [ebp - 0x6bb0]
movzx edx, byte [ebx + esi]
add eax, ecx
imul ebx, esi, 0x1b0
imul ecx, ecx, 0x12
add ecx, ebx
add ecx, dword [ebp - 0x6ba8]
add ecx, dword [ebp - 0x6b48]
movzx ebx, word [ebp + ecx*4 - 0x69fa]
add ebx, dword [ebp + ecx*4 - 0x69fc]
imul ebx, edx
mov word [ebp + eax*2 - 0x6aec], bx

loc_fffbea49:  ; not directly referenced
inc dword [ebp - 0x6b6c]
jmp short loc_fffbea6b  ; jmp 0xfffbea6b

loc_fffbea51:  ; not directly referenced
movzx esi, word [ebp - 0x6b64]
mov dword [ebp - 0x6b6c], 0
imul ecx, esi, 0x18
mov dword [ebp - 0x6bb0], ecx

loc_fffbea6b:  ; not directly referenced
mov al, byte [ebp - 0x6b54]
add eax, dword [ebp - 0x6b6c]
cmp byte [ebp - 0x6b58], al
jge loc_fffbe944  ; jge 0xfffbe944
inc word [ebp - 0x6b64]
jmp short loc_fffbea95  ; jmp 0xfffbea95

loc_fffbea8c:  ; not directly referenced
mov word [ebp - 0x6b64], 0

loc_fffbea95:  ; not directly referenced
mov bx, word [ebp - 0x6ba2]
cmp word [ebp - 0x6b64], bx
jb short loc_fffbea51  ; jb 0xfffbea51
cmp byte [ebp - 0x6ba4], 2
mov esi, 1
jbe short loc_fffbeb0c  ; jbe 0xfffbeb0c
cmp byte [ebp - 0x6b50], 6
je short loc_fffbeb07  ; je 0xfffbeb07
cmp byte [ebp - 0x6b50], 5
jne short loc_fffbeaf0  ; jne 0xfffbeaf0
mov ecx, dword [ebp - 0x6b74]
xor edx, edx
lea eax, [ebp - 0x6aec]
call fcn_fffc9ae0  ; call 0xfffc9ae0
mov ecx, dword [ebp - 0x6b74]
mov edx, 1
lea eax, [ebp - 0x6aec]
call fcn_fffc9ae0  ; call 0xfffc9ae0
jmp short loc_fffbeb0c  ; jmp 0xfffbeb0c

loc_fffbeaf0:  ; not directly referenced
mov esi, 7
cmp byte [ebp - 0x6b68], 7
mov bl, byte [ebp - 0x6b94]
cmovl esi, ebx
jmp short loc_fffbeb0c  ; jmp 0xfffbeb0c

loc_fffbeb07:  ; not directly referenced
mov esi, 3

loc_fffbeb0c:  ; not directly referenced
movsx eax, byte [ebp - 0x6b5c]
xor ebx, ebx
movzx edx, byte [ebp - 0x6b50]
mov dword [ebp - 0x6b64], eax
mov dword [ebp - 0x6b6c], edx
jmp near loc_fffbec57  ; jmp 0xfffbec57

loc_fffbeb2d:  ; not directly referenced
sub esp, 0xc
mov al, byte [ebp - 0x6b54]
push 0
add eax, ebx
xor ecx, ecx
push dword [ebp - 0x6b64]
movsx eax, al
mov edx, edi
push eax
push dword [ebp - 0x6b6c]
push dword [ebp - 0x6b48]
mov eax, dword [ebp - 0x6b4c]
call fcn_fffb67ea  ; call 0xfffb67ea
add esp, 0x20
cmp byte [ebp - 0x6b50], 0
sete cl
cmp byte [ebp - 0x6b50], 9
sete dl
mov word [ebp + ebx*2 - 0x6b1c], ax
or cl, dl
jne short loc_fffbeb97  ; jne 0xfffbeb97
cmp byte [ebp - 0x6b50], 1
je short loc_fffbeb97  ; je 0xfffbeb97
mov ecx, dword [ebp - 0x6b8c]
mov word [ecx + ebx*2], ax
jmp short loc_fffbebac  ; jmp 0xfffbebac

loc_fffbeb97:  ; not directly referenced
movzx ecx, ax
mov eax, 0x232
cdq
idiv ecx
mov edx, dword [ebp - 0x6b8c]
mov word [edx + ebx*2], ax

loc_fffbebac:  ; not directly referenced
cmp byte [ebp - 0x6b50], 4
jne loc_fffbec56  ; jne 0xfffbec56
mov ecx, dword [ebp - 0x6b60]
cmp dword [ecx + 0xf5], 1
jne loc_fffbec56  ; jne 0xfffbec56
movzx edx, byte [ecx + 0x114f]
xor eax, eax

loc_fffbebd5:  ; not directly referenced
bt edx, eax
jb short loc_fffbebe2  ; jb 0xfffbebe2
inc eax
cmp eax, 4
jne short loc_fffbebd5  ; jne 0xfffbebd5
jmp short loc_fffbebe8  ; jmp 0xfffbebe8

loc_fffbebe2:  ; not directly referenced
mov byte [ebp - 0x6b88], al

loc_fffbebe8:  ; not directly referenced
mov eax, dword [ebp - 0x6b4c]
cmp dword [eax + 0x1749], 2
jne short loc_fffbec05  ; jne 0xfffbec05

loc_fffbebf7:  ; not directly referenced
mov edx, dword [ebp - 0x6b8c]
mov word [edx + ebx*2], 1
jmp short loc_fffbec56  ; jmp 0xfffbec56

loc_fffbec05:  ; not directly referenced
mov al, byte [ebp - 0x6b88]
mov dl, byte [ebp - 0x6b88]
shr al, 1
and edx, 1
movzx eax, al
mov ecx, dword [ebp - 0x6b60]
imul edx, edx, 0xa
imul eax, eax, 0xfb
add eax, edx
mov ax, word [ecx + eax + 0x123a]
mov ecx, eax
mov edx, eax
shr cx, 9
shr dx, 6
and ecx, 1
shl ecx, 2
and edx, 1
shr ax, 2
add edx, edx
or edx, ecx
and eax, 1
or dl, al
je short loc_fffbebf7  ; je 0xfffbebf7

loc_fffbec56:  ; not directly referenced
inc ebx

loc_fffbec57:  ; not directly referenced
cmp byte [ebp - 0x6b68], bl
jg loc_fffbeb2d  ; jg 0xfffbeb2d
push 1
movzx eax, byte [ebp - 0x6ba3]
lea ebx, [ebp - 0x6aec]
push eax
push dword [ebp + 0x18]
push dword [ebp + 0x10]
push dword [ebp - 0x6b74]
movzx ecx, byte [ebp + edi - 0x6b37]
mov edx, edi
push 0x18
mov eax, dword [ebp - 0x6b4c]
and esi, 0xff
push ebx
push 0
call fcn_fffc0642  ; call 0xfffc0642
imul edx, dword [ebp - 0x6b48], 0x462
imul eax, edi, 0x2772
add esp, 0x1c
add eax, edx
mov ecx, ebx
lea edx, [ebp + eax - 0x4efc]
movsx eax, byte [ebp - 0x6b76]
push eax
push dword [ebp + 0x1c]
movsx eax, byte [ebp - 0x6b68]
push 0
push esi
push dword [ebp + 0x18]
push eax
mov eax, dword [ebp - 0x6b4c]
push 0x18
call fcn_fffbfa8e  ; call 0xfffbfa8e
mov esi, dword [ebp - 0x6b70]
add esp, 0x20
movsx bx, byte [esi + 2]
xor edx, edx
add bx, word [esi]
cmp byte [ebp - 0x6b50], 7
jne short loc_fffbed14  ; jne 0xfffbed14
mov esi, dword [ebp - 0x6b60]
mov eax, 0x20
cmp dword [esi + 0xf5], 2
cmove edx, eax

loc_fffbed14:  ; not directly referenced
movsx ax, byte [ebp - 0x6b54]
sub eax, edx
mov edx, edi
push 1
movzx ecx, byte [ebp + edi - 0x6b37]
add ebx, eax
movsx eax, bx
push eax
movzx eax, byte [ebp - 0x6b50]
push eax
push dword [ebp - 0x6b48]
mov eax, dword [ebp - 0x6b4c]
call fcn_fffb498e  ; call 0xfffb498e
mov esi, dword [ebp - 0x6b48]
mov eax, dword [ebp - 0x6b90]
add dword [ebp - 0x6b70], 0x462
add esp, 0x10
mov word [eax + esi*2], bx
inc esi
mov dword [ebp - 0x6b48], esi

loc_fffbed6d:  ; not directly referenced
mov dl, byte [ebp - 0x6b48]
cmp byte [ebp - 0x6b75], dl
ja loc_fffbea8c  ; ja 0xfffbea8c

loc_fffbed7f:  ; not directly referenced
inc edi
add dword [ebp - 0x6b90], 0x12
cmp edi, 2
jne loc_fffbe8f1  ; jne 0xfffbe8f1
cmp dword [ebp - 0x6bac], 0
je short loc_fffbedb4  ; je 0xfffbedb4
mov ecx, dword [ebp - 0x6b4c]
mov edx, dword [ecx + 0x103f]
mov eax, dword [ecx + 0x1762]
or eax, 0x20
mov dword [edx + 0x2008], eax

loc_fffbedb4:  ; not directly referenced
mov esi, dword [ebp - 0x6b4c]
xor edi, edi
movsx ebx, byte [ebp - 0x6b54]
add esi, 0x1774
mov dword [ebp - 0x6b48], ebx
mov dword [ebp - 0x6b58], esi
jmp near loc_fffbeec4  ; jmp 0xfffbeec4

loc_fffbedda:  ; not directly referenced
imul eax, edi, 0x1b0
mov ecx, dword [ebp - 0x6b98]
xor edx, edx
mov dword [ebp - 0x6b54], eax

loc_fffbedee:  ; not directly referenced
mov ebx, dword [ebp - 0x6b9c]
bt ebx, edx
jb short loc_fffbee07  ; jb 0xfffbee07

loc_fffbedf9:  ; not directly referenced
inc edx
add ecx, 0x12
cmp edx, 2
jne short loc_fffbedee  ; jne 0xfffbedee
jmp near loc_fffbeea3  ; jmp 0xfffbeea3

loc_fffbee07:  ; not directly referenced
mov esi, dword [ebp + 0x10]
xor eax, eax
movzx ebx, byte [esi + edi]
cmp bl, 0x21
ja short loc_fffbee1c  ; ja 0xfffbee1c
movzx eax, byte [ebx + ref_fffcc308]  ; movzx eax, byte [ebx - 0x33cf8]

loc_fffbee1c:  ; not directly referenced
imul eax, eax, 0x240
imul esi, edx, 0x48
lea ebx, [esi + eax]
xor eax, eax
add ebx, dword [ebp - 0x6b58]
jmp short loc_fffbee96  ; jmp 0xfffbee96

loc_fffbee32:  ; not directly referenced
movsx esi, word [ecx + eax*2]
sub esi, dword [ebp - 0x6b48]
imul esi, esi, 0x12
add esi, dword [ebp - 0x6b54]
mov dword [ebp - 0x6b5c], esi
lea esi, [edx + edx*8]
mov dword [ebp - 0x6b50], esi
mov esi, dword [ebp - 0x6b5c]
add esi, dword [ebp - 0x6b50]
add esi, eax
movzx esi, word [ebp + esi*4 - 0x69fc]
mov dword [ebx], esi
movsx esi, word [ecx + eax*2]
sub esi, dword [ebp - 0x6b48]
imul esi, esi, 0x12
add esi, dword [ebp - 0x6b54]
add esi, dword [ebp - 0x6b50]
add esi, eax
inc eax
movzx esi, word [ebp + esi*4 - 0x69fa]
mov dword [ebx + 4], esi
add ebx, 8

loc_fffbee96:  ; not directly referenced
cmp byte [ebp - 0x6b75], al
ja short loc_fffbee32  ; ja 0xfffbee32
jmp near loc_fffbedf9  ; jmp 0xfffbedf9

loc_fffbeea3:  ; not directly referenced
mov ebx, dword [ebp + 0x10]
sub esp, 0xc
mov edx, dword [ebp - 0x6b58]
mov eax, dword [ebp - 0x6b4c]
movzx ecx, byte [ebx + edi]
inc edi
push 0
call fcn_fffb0b1b  ; call 0xfffb0b1b
add esp, 0x10

loc_fffbeec4:  ; not directly referenced
cmp word [ebp - 0x6ba2], di
ja loc_fffbedda  ; ja 0xfffbedda
mov edx, dword [ebp - 0x6b98]
mov eax, dword [ebp - 0x6b4c]
add eax, 0x1774
xor esi, esi
mov dword [ebp - 0x6b48], eax
mov byte [edx + 0x3c], 4
jmp near loc_fffbefe3  ; jmp 0xfffbefe3

loc_fffbeef3:  ; not directly referenced
mov ebx, dword [ebp + 0x10]
xor eax, eax
movzx edx, byte [ebx + esi]
cmp dl, 0x21
ja short loc_fffbef08  ; ja 0xfffbef08
movzx eax, byte [edx + ref_fffcc308]  ; movzx eax, byte [edx - 0x33cf8]

loc_fffbef08:  ; not directly referenced
imul eax, eax, 0x240
mov edx, dword [ebp - 0x6b48]
add edx, eax
xor ebx, ebx
mov dword [ebp - 0x6b50], edx
mov edx, dword [ebp - 0x6b98]
mov dword [ebp - 0x6b88], eax
lea ecx, [edx + esi*2]
lea edi, [edx + esi*4 + 0x24]
mov dword [ebp - 0x6b58], ecx

loc_fffbef37:  ; not directly referenced
mov eax, dword [ebp - 0x6b9c]
bt eax, ebx
jae loc_fffbefce  ; jae 0xfffbefce
imul edx, ebx, 0x48
mov byte [ebp - 0x6b68], 0
add edx, dword [ebp - 0x6b88]
add edx, dword [ebp - 0x6b48]
jmp short loc_fffbefb0  ; jmp 0xfffbefb0

loc_fffbef5e:  ; not directly referenced
cmp byte [ebp - 0x6b68], 0
jne short loc_fffbef7a  ; jne 0xfffbef7a
mov ecx, dword [ebp - 0x6b50]
mov eax, dword [ebp - 0x6b50]
mov ecx, dword [ecx]
add ecx, dword [eax + 4]
jmp short loc_fffbefa4  ; jmp 0xfffbefa4

loc_fffbef7a:  ; not directly referenced
movzx eax, word [edi]
mov ecx, dword [edx]
mov dword [ebp - 0x6b64], ecx
mov dword [ebp - 0x6b5c], eax
mov ecx, dword [edx + 4]
mov eax, dword [ebp - 0x6b64]
add eax, ecx
cmp dword [ebp - 0x6b5c], eax
jbe short loc_fffbefa7  ; jbe 0xfffbefa7
add ecx, dword [ebp - 0x6b64]

loc_fffbefa4:  ; not directly referenced
mov word [edi], cx

loc_fffbefa7:  ; not directly referenced
inc byte [ebp - 0x6b68]
add edx, 8

loc_fffbefb0:  ; not directly referenced
mov cl, byte [ebp - 0x6b75]
cmp byte [ebp - 0x6b68], cl
jne short loc_fffbef5e  ; jne 0xfffbef5e
mov edx, dword [ebp + 0x10]
mov ecx, dword [ebp - 0x6b58]
mov al, byte [edx + esi]
mov byte [ecx + ebx + 0x34], al

loc_fffbefce:  ; not directly referenced
inc ebx
add dword [ebp - 0x6b50], 0x48
add edi, 2
cmp ebx, 2
jne loc_fffbef37  ; jne 0xfffbef37
inc esi

loc_fffbefe3:  ; not directly referenced
cmp word [ebp - 0x6ba2], si
ja loc_fffbeef3  ; ja 0xfffbeef3
mov eax, dword [ebp - 0x6b4c]
mov byte [eax + 0x1741], 0

loc_fffbeffd:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbf005:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x4fa]
mov esi, ref_fffcbe5c  ; mov esi, 0xfffcbe5c
push ebx
lea esp, [esp - 0x54c]
mov byte [ebp - 0x520], cl
mov cl, byte [ebp + 0x18]
mov dword [ebp - 0x52c], eax
mov byte [ebp - 0x538], cl
mov ecx, 0xa
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov al, byte [ebp + 8]
mov dword [ebp - 0x524], edx
mov byte [ebp - 0x530], al
mov dl, byte [ebp + 0xc]
mov al, byte [ebp + 0x20]
mov byte [ebp - 0x534], dl
mov byte [ebp - 0x53d], al
mov cl, 0xff
mov edx, 0x4d8
lea eax, [ebp - 0x4f0]
mov ebx, dword [ebp + 0x10]
mov byte [ebp - 0x507], 4
mov byte [ebp - 0x506], 1
mov byte [ebp - 0x505], 5
mov byte [ebp - 0x504], 2
mov byte [ebp - 0x50b], 4
mov byte [ebp - 0x50a], 1
mov byte [ebp - 0x509], 5
mov byte [ebp - 0x508], 2
mov byte [ebp - 0x4ff], 1
mov byte [ebp - 0x4fe], 2
mov byte [ebp - 0x4fd], 0
mov byte [ebp - 0x4fc], 0
mov byte [ebp - 0x4fb], 0
mov dword [ebp - 0x503], 0
call mrc_setmem
mov ecx, 0xff
mov edx, 0x53e
mov eax, dword [ebp - 0x524]
call mrc_setmem
mov eax, dword [ebp - 0x52c]
mov dl, byte [ebp - 0x520]
mov byte [ebp - 0x50d], 0
and dl, byte [eax + 0x176b]
mov cl, byte [eax + 0x176a]
xor eax, eax
and byte [ebp - 0x530], cl
movzx ecx, dl
and dl, 1
je short loc_fffbf135  ; je 0xfffbf135
mov esi, dword [ebp - 0x52c]
mov al, byte [ebp - 0x530]
and al, byte [esi + 0x3acb]
test al, al
mov byte [ebp - 0x50d], al
setne al

loc_fffbf135:  ; not directly referenced
and cl, 2
mov byte [ebp - 0x50c], 0
je short loc_fffbf163  ; je 0xfffbf163
mov ecx, dword [ebp - 0x52c]
mov dl, byte [ebp - 0x530]
and dl, byte [ecx + 0x4e12]
mov cl, al
or ecx, 2
test dl, dl
mov byte [ebp - 0x50c], dl
cmovne eax, ecx

loc_fffbf163:  ; not directly referenced
mov esi, dword [ebp - 0x524]
mov ecx, dword [ebp + 0x14]
movzx eax, al
mov dl, byte [ebx]
mov dword [ebp - 0x528], eax
mov byte [esi], dl
mov dl, byte [ecx]
mov byte [esi + 4], dl
mov dl, byte [ebx + 1]
mov byte [esi + 1], dl
mov dl, byte [ecx + 1]
mov byte [esi + 5], dl
mov dl, byte [ebx + 2]
mov byte [esi + 2], dl
mov dl, byte [ecx + 2]
mov byte [esi + 6], dl
mov dl, byte [ebx + 3]
mov byte [esi + 3], dl
mov bl, byte [ebp - 0x538]
mov dl, byte [ecx + 3]
mov byte [esi + 8], bl
mov byte [esi + 7], dl
mov ecx, esi
push eax
mov edx, dword [ebp - 0x528]
push eax
movzx eax, byte [ebp - 0x534]
push 1
push eax
mov eax, dword [ebp - 0x52c]
call fcn_fffc03b8  ; call 0xfffc03b8
add esp, 0x10
cmp dword [ebp + 0x24], 0
je short loc_fffbf21d  ; je 0xfffbf21d
push esi
mov ebx, dword [ebp - 0x52c]
mov ecx, dword [ebp - 0x528]
push 0
add ebx, 0x1774
mov eax, dword [ebp - 0x52c]
push 0
mov edx, ebx
push 0
call fcn_fffc32d9  ; call 0xfffc32d9
pop edi
pop eax
mov ecx, dword [ebp - 0x528]
mov edx, ebx
push 0
mov eax, dword [ebp - 0x52c]
push 0xf
push 0
push 0
push 0
push 1
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20

loc_fffbf21d:  ; not directly referenced
cmp dword [ebp + 0x28], 0
je short loc_fffbf25f  ; je 0xfffbf25f
sub esp, 0xc
push dword [ebp - 0x52c]
call fcn_fffbb819  ; call 0xfffbb819
pop edx
pop ecx
mov edx, dword [ebp - 0x52c]
mov ecx, dword [ebp - 0x528]
push 0
add edx, 0x1774
mov eax, dword [ebp - 0x52c]
push 0xf
push 0
push 0
push 0
push 2
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20

loc_fffbf25f:  ; not directly referenced
mov edx, dword [ebp - 0x524]
mov bl, byte [ebp - 0x53d]
lea esi, [ebp - 0x4f0]
mov dword [ebp - 0x538], edx
mov dword [ebp - 0x53c], edx
mov byte [ebp - 0x520], 0
lea edi, [ebp - 0x507]
xor eax, eax
mov byte [edx + 0x529], bl
mov ebx, dword [ebp + 0x1c]
mov dword [ebp - 0x534], ebx
mov dword [ebp - 0x51c], esi
movzx ebx, byte [ebp - 0x530]
mov dword [ebp - 0x530], ebx
jmp near loc_fffbf721  ; jmp 0xfffbf721

loc_fffbf2b3:  ; not directly referenced
mov ebx, dword [ebp - 0x534]
mov dl, byte [ebx]
mov ebx, dword [ebp - 0x53c]
mov byte [ebx + 0x524], dl
mov ebx, dword [ebp - 0x534]
cmp byte [ebx], 6
ja loc_fffbf67c  ; ja 0xfffbf67c
movzx edx, byte [ebx]
jmp dword [edx*4 + ref_fffcbe68]  ; ujmp: jmp dword [edx*4 - 0x34198]

loc_fffbf2e0:  ; not directly referenced
push eax
lea eax, [ebp - 0x4fa]
lea ebx, [ebp - 0x509]
push 1
lea esi, [ebp - 0x3f8]
mov ecx, dword [ebp - 0x528]
push 0
mov edx, esi
push 0xf
push 0xc
push 0xfffffffffffffff5
push eax
lea eax, [ebp - 0x4ff]
push eax
mov eax, dword [ebp - 0x52c]
push 2
push ebx
push 0
push dword [ebp - 0x530]
call fcn_fffbe238  ; call 0xfffbe238
mov edi, dword [ebp - 0x524]
mov ecx, 0x3e
add edi, 0x13f
add esp, 0x30
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov byte [ebp - 0x520], 2
mov edi, ebx
mov eax, 1
jmp near loc_fffbf67c  ; jmp 0xfffbf67c

loc_fffbf34c:  ; not directly referenced
push eax
lea eax, [ebp - 0x4fa]
lea ebx, [ebp - 0x50b]
push 0
lea esi, [ebp - 0x110]
mov ecx, dword [ebp - 0x528]
push 9
mov edx, esi
push 0xf
push 6
push 0xfffffffffffffff6
push eax
lea eax, [ebp - 0x4ff]
push eax
mov eax, dword [ebp - 0x52c]
push 2
push ebx
push 1
push dword [ebp - 0x530]
call fcn_fffbe238  ; call 0xfffbe238
mov edi, dword [ebp - 0x524]
mov ecx, 0x3e
add edi, 0x427
add esp, 0x30
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov byte [ebp - 0x520], 2
mov edi, ebx
mov eax, 4
jmp near loc_fffbf67c  ; jmp 0xfffbf67c

loc_fffbf3b8:  ; not directly referenced
lea ebx, [ebp - 0x1de]
mov dword [ebp - 0x520], 0

loc_fffbf3c8:  ; not directly referenced
mov esi, dword [ebp - 0x530]
mov ecx, dword [ebp - 0x520]
bt esi, ecx
jae loc_fffbf4bc  ; jae 0xfffbf4bc
push eax
lea eax, [ebp - 0x4fa]
push 2
imul esi, ecx, 0x3e
mov cl, byte [ebp - 0x520]
push 0
push 0xf
push 0xb
lea edx, [ebp + esi - 0x208]
push 0
push eax
lea eax, [ebp - 0x4ff]
push eax
lea eax, [ebp - 0x509]
push 2
push eax
mov eax, 1
push 4
shl eax, cl
mov ecx, dword [ebp - 0x528]
and eax, 0xff
push eax
mov eax, dword [ebp - 0x52c]
call fcn_fffbe238  ; call 0xfffbe238
mov edx, dword [ebp - 0x524]
mov ecx, 0x3e
add esp, 0x30
lea edi, [edx + esi + 0x32f]
lea esi, [ebx - 0x2a]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
movzx eax, byte [ebp - 0x50d]
mov ecx, dword [ebp - 0x520]
bt eax, ecx
jae short loc_fffbf483  ; jae 0xfffbf483
mov ax, word [ebx - 6]
cmp ax, word [ebp - 0x1e4]
jae short loc_fffbf46f  ; jae 0xfffbf46f
mov word [ebp - 0x1e4], ax

loc_fffbf46f:  ; not directly referenced
mov ax, word [ebx - 2]
cmp ax, word [ebp - 0x1e0]
jae short loc_fffbf483  ; jae 0xfffbf483
mov word [ebp - 0x1e0], ax

loc_fffbf483:  ; not directly referenced
movzx eax, byte [ebp - 0x50c]
mov ecx, dword [ebp - 0x520]
bt eax, ecx
jae short loc_fffbf4bc  ; jae 0xfffbf4bc
mov ax, word [ebx - 4]
cmp ax, word [ebp - 0x1e2]
jae short loc_fffbf4a9  ; jae 0xfffbf4a9
mov word [ebp - 0x1e2], ax

loc_fffbf4a9:  ; not directly referenced
mov ax, word [ebx]
cmp ax, word [ebp - 0x1de]
jae short loc_fffbf4bc  ; jae 0xfffbf4bc
mov word [ebp - 0x1de], ax

loc_fffbf4bc:  ; not directly referenced
inc dword [ebp - 0x520]
add ebx, 0x3e
cmp dword [ebp - 0x520], 4
jne loc_fffbf3c8  ; jne 0xfffbf3c8
mov byte [ebp - 0x520], 2
lea edi, [ebp - 0x509]
mov eax, 3
jmp near loc_fffbf67c  ; jmp 0xfffbf67c

loc_fffbf4e9:  ; not directly referenced
lea ebx, [ebp - 0x2d6]
mov dword [ebp - 0x520], 0

loc_fffbf4f9:  ; not directly referenced
mov esi, dword [ebp - 0x530]
mov ecx, dword [ebp - 0x520]
bt esi, ecx
jae loc_fffbf5ed  ; jae 0xfffbf5ed
push eax
lea eax, [ebp - 0x4fa]
push 0
imul esi, ecx, 0x3e
mov cl, byte [ebp - 0x520]
push 9
push 0xf
push 0xe
lea edx, [ebp + esi - 0x300]
push 0
push eax
lea eax, [ebp - 0x4ff]
push eax
lea eax, [ebp - 0x50b]
push 2
push eax
mov eax, 1
push 5
shl eax, cl
mov ecx, dword [ebp - 0x528]
and eax, 0xff
push eax
mov eax, dword [ebp - 0x52c]
call fcn_fffbe238  ; call 0xfffbe238
mov edx, dword [ebp - 0x524]
mov ecx, 0x3e
add esp, 0x30
lea edi, [edx + esi + 0x237]
lea esi, [ebx - 0x2a]
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
movzx eax, byte [ebp - 0x50d]
mov ecx, dword [ebp - 0x520]
bt eax, ecx
jae short loc_fffbf5b4  ; jae 0xfffbf5b4
mov ax, word [ebx - 6]
cmp ax, word [ebp - 0x2dc]
jae short loc_fffbf5a0  ; jae 0xfffbf5a0
mov word [ebp - 0x2dc], ax

loc_fffbf5a0:  ; not directly referenced
mov ax, word [ebx - 2]
cmp ax, word [ebp - 0x2d8]
jae short loc_fffbf5b4  ; jae 0xfffbf5b4
mov word [ebp - 0x2d8], ax

loc_fffbf5b4:  ; not directly referenced
movzx eax, byte [ebp - 0x50c]
mov ecx, dword [ebp - 0x520]
bt eax, ecx
jae short loc_fffbf5ed  ; jae 0xfffbf5ed
mov ax, word [ebx - 4]
cmp ax, word [ebp - 0x2da]
jae short loc_fffbf5da  ; jae 0xfffbf5da
mov word [ebp - 0x2da], ax

loc_fffbf5da:  ; not directly referenced
mov ax, word [ebx]
cmp ax, word [ebp - 0x2d6]
jae short loc_fffbf5ed  ; jae 0xfffbf5ed
mov word [ebp - 0x2d6], ax

loc_fffbf5ed:  ; not directly referenced
inc dword [ebp - 0x520]
add ebx, 0x3e
cmp dword [ebp - 0x520], 4
jne loc_fffbf4f9  ; jne 0xfffbf4f9
mov byte [ebp - 0x520], 2
lea edi, [ebp - 0x50b]
mov eax, 2
jmp short loc_fffbf67c  ; jmp 0xfffbf67c

loc_fffbf617:  ; not directly referenced
push eax
lea eax, [ebp - 0x4fa]
lea ebx, [ebp - 0x50b]
push 0
mov ecx, dword [ebp - 0x528]
lea edx, [ebp - 0x4f0]
push 9
push 0xf
push 7
push 0
push eax
lea eax, [ebp - 0x4ff]
push eax
mov eax, dword [ebp - 0x52c]
push 2
push ebx
push 6
push dword [ebp - 0x530]
call fcn_fffbe238  ; call 0xfffbe238
mov edi, dword [ebp - 0x524]
mov ecx, 0x3e
add edi, 0x47
mov esi, dword [ebp - 0x51c]
add esp, 0x30
mov byte [ebp - 0x520], 2
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
xor eax, eax
mov edi, ebx

loc_fffbf67c:  ; not directly referenced
imul ebx, eax, 0x7c
mov dword [ebp - 0x550], 0
mov dword [ebp - 0x544], ebx

loc_fffbf68f:  ; not directly referenced
mov esi, dword [ebp - 0x550]
cmp byte [ebp + esi - 0x50d], 0
je short loc_fffbf6b8  ; je 0xfffbf6b8
mov ecx, dword [ebp - 0x544]
add ecx, esi
lea ecx, [ebp + ecx*2 - 0x4f0]
mov dword [ebp - 0x548], ecx
xor ecx, ecx
jmp short loc_fffbf70b  ; jmp 0xfffbf70b

loc_fffbf6b8:  ; not directly referenced
inc dword [ebp - 0x550]
cmp dword [ebp - 0x550], 2
jne short loc_fffbf68f  ; jne 0xfffbf68f
jmp short loc_fffbf715  ; jmp 0xfffbf715

loc_fffbf6c9:  ; not directly referenced
mov bl, byte [edi + ecx]
xor esi, esi
cmp bl, 0x21
ja short loc_fffbf6dd  ; ja 0xfffbf6dd
movzx esi, bl
movzx esi, byte [esi + ref_fffcc308]  ; movzx esi, byte [esi - 0x33cf8]

loc_fffbf6dd:  ; not directly referenced
and esi, 0xff
mov edx, dword [ebp - 0x550]
mov byte [ebp + esi - 0x503], bl
mov ebx, dword [ebp - 0x548]
lea esi, [edx + esi*2 + 0x18]
mov edx, dword [ebp - 0x524]
mov bx, word [ebx + ecx*4 + 0x24]
inc ecx
mov word [edx + esi*2 + 3], bx

loc_fffbf70b:  ; not directly referenced
cmp byte [ebp - 0x520], cl
ja short loc_fffbf6c9  ; ja 0xfffbf6c9
jmp short loc_fffbf6b8  ; jmp 0xfffbf6b8

loc_fffbf715:  ; not directly referenced
inc dword [ebp - 0x534]
inc dword [ebp - 0x53c]

loc_fffbf721:  ; not directly referenced
mov dl, byte [ebp - 0x534]
sub edx, dword [ebp + 0x1c]
cmp dl, byte [ebp - 0x53d]
jb loc_fffbf2b3  ; jb 0xfffbf2b3
mov edx, dword [ebp - 0x524]
lea ebx, [ebp - 0x503]
lea esi, [ebp - 0x4ff]
mov dword [ebp - 0x528], ebx
mov dword [ebp - 0x51c], esi
mov byte [ebp - 0x520], 0
mov byte [edx + 0x51f], 0

loc_fffbf762:  ; not directly referenced
mov esi, dword [ebp - 0x528]
mov bl, byte [esi]
test bl, bl
je loc_fffbf806  ; je 0xfffbf806
movzx esi, byte [ebp - 0x520]
mov edx, dword [ebp - 0x524]
mov byte [edx + esi + 0x520], bl
inc byte [edx + 0x51f]
cmp byte [ebp - 0x50d], 0
je short loc_fffbf7c6  ; je 0xfffbf7c6
mov ecx, dword [ebp - 0x538]
mov eax, dword [ebp - 0x52c]
movzx edx, bl
mov di, word [ecx + 0x33]
mov ecx, 1
call fcn_fffb2de8  ; call 0xfffb2de8
mov edx, dword [ebp - 0x524]
cmp di, ax
cmova edi, eax
mov word [edx + esi*4 + 0x52a], di

loc_fffbf7c6:  ; not directly referenced
cmp byte [ebp - 0x50c], 0
je short loc_fffbf800  ; je 0xfffbf800
mov ecx, dword [ebp - 0x538]
mov eax, dword [ebp - 0x52c]
movzx edx, bl
mov di, word [ecx + 0x35]
mov ecx, 1
call fcn_fffb2de8  ; call 0xfffb2de8
mov edx, dword [ebp - 0x524]
cmp di, ax
cmova edi, eax
mov word [edx + esi*4 + 0x52c], di

loc_fffbf800:  ; not directly referenced
inc byte [ebp - 0x520]

loc_fffbf806:  ; not directly referenced
inc dword [ebp - 0x528]
add dword [ebp - 0x538], 4
mov ebx, dword [ebp - 0x51c]
cmp dword [ebp - 0x528], ebx
jne loc_fffbf762  ; jne 0xfffbf762
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbf82d:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, edx
mov edx, 5
push esi
mov esi, ecx
mov ecx, 1
push ebx
mov ebx, eax
lea esp, [esp - 0x5c]
mov byte [ebp - 0x67], 5
mov byte [ebp - 0x66], 2
mov byte [ebp - 0x65], 1
mov byte [ebp - 0x64], 2
mov byte [ebp - 0x63], 1
mov byte [ebp - 0x62], 0
mov byte [ebp - 0x61], 0
mov word [ebp - 0x60], 0
mov word [ebp - 0x5e], 0
mov word [ebp - 0x5c], 0
mov word [ebp - 0x5a], 0
mov word [ebp - 0x58], 0
call fcn_fffb2de8  ; call 0xfffb2de8
mov word [ebp - 0x60], ax
mov ecx, 1
mov edx, 2
mov eax, ebx
call fcn_fffb2de8  ; call 0xfffb2de8
mov word [ebp - 0x5e], ax
lea edx, [ebp - 0x56]
push eax
mov eax, edi
push 1
movzx ecx, al
lea eax, [ebp - 0x60]
push 0
push 0xf
push 0xa
push 0xfffffffffffffff3
push eax
lea eax, [ebp - 0x65]
push eax
lea eax, [ebp - 0x67]
push 2
push eax
mov eax, ebx
push 0
push 0xf
call fcn_fffbe238  ; call 0xfffbe238
add esp, 0x30
xor eax, eax
cmp dword [ebp + 8], 0
je short loc_fffbf900  ; je 0xfffbf900
push eax
and esi, 0xff
lea edx, [ebx + 0x1774]
push eax
mov ecx, 3
mov eax, ebx
push 0
push esi
push 0
push 0
push 0
push 2
call fcn_fffb0d66  ; call 0xfffb0d66
add esp, 0x20
jmp short loc_fffbf900  ; jmp 0xfffbf900

loc_fffbf900:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbf934:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x2c]
cmp cl, 5
mov dword [ebp - 0x1c], eax
ja short loc_fffbf958  ; ja 0xfffbf958
cmp cl, 4
jae short loc_fffbf973  ; jae 0xfffbf973
lea eax, [ecx - 1]
cmp al, 1
ja loc_fffbfa80  ; ja 0xfffbfa80
jmp short loc_fffbf973  ; jmp 0xfffbf973

loc_fffbf958:  ; not directly referenced
cmp cl, 0x10
jb loc_fffbfa80  ; jb 0xfffbfa80
cmp cl, 0x11
jbe short loc_fffbf97a  ; jbe 0xfffbf97a
lea eax, [ecx - 0x20]
cmp al, 1
ja loc_fffbfa80  ; ja 0xfffbfa80
jmp short loc_fffbf97a  ; jmp 0xfffbf97a

loc_fffbf973:  ; not directly referenced
mov eax, 0xa
jmp short loc_fffbf97f  ; jmp 0xfffbf97f

loc_fffbf97a:  ; not directly referenced
mov eax, 7

loc_fffbf97f:  ; not directly referenced
xor ebx, ebx
cmp cl, 0x21
ja short loc_fffbf990  ; ja 0xfffbf990
movzx ecx, cl
movzx ebx, byte [ecx + ref_fffcc308]  ; movzx ebx, byte [ecx - 0x33cf8]

loc_fffbf990:  ; not directly referenced
imul ebx, ebx, 0x240
mov edi, dword [ebp - 0x1c]
add ebx, edx
mov dword [ebp - 0x10], 0
mov dword [ebp - 0x14], ebx
mov esi, ebx
mov dword [ebp - 0x20], eax

loc_fffbf9aa:  ; not directly referenced
cmp dword [edi + 0x297c], 2
jne loc_fffbfa66  ; jne 0xfffbfa66
imul eax, dword [ebp - 0x10], 9
imul ebx, dword [ebp - 0x10], 0x48
mov dword [ebp - 0x18], eax
add ebx, dword [ebp - 0x14]
mov byte [ebp - 0x35], 0
mov dword [ebp - 0x30], eax
jmp short loc_fffbfa21  ; jmp 0xfffbfa21

loc_fffbf9ce:  ; not directly referenced
mov edx, 1
shl edx, cl
and dl, byte [edi + 0x3acb]
and dl, 0xf
je short loc_fffbfa18  ; je 0xfffbfa18
imul edx, ecx, 0x12
mov eax, dword [ebp - 0x14]
add edx, dword [ebp - 0x30]
add edx, dword [ebp - 0x2c]
lea eax, [eax + edx*8]
mov dword [ebp - 0x24], eax
imul edx, ecx, 0x90
mov eax, dword [ebp - 0x28]
mov eax, dword [eax + edx]
cmp dword [ebx], eax
mov dword [ebp - 0x34], eax
jbe short loc_fffbfa07  ; jbe 0xfffbfa07
mov dword [ebx], eax

loc_fffbfa07:  ; not directly referenced
mov edx, dword [ebp - 0x24]
mov edx, dword [edx + 4]
cmp dword [ebx + 4], edx
mov dword [ebp - 0x24], edx
jbe short loc_fffbfa18  ; jbe 0xfffbfa18
mov dword [ebx + 4], edx

loc_fffbfa18:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffbf9ce  ; jne 0xfffbf9ce
inc byte [ebp - 0x35]

loc_fffbfa21:  ; not directly referenced
mov edx, dword [ebp - 0x1c]
mov al, byte [ebp - 0x35]
cmp al, byte [edx + 0x1755]
jae short loc_fffbfa47  ; jae 0xfffbfa47
movzx edx, al
mov eax, dword [ebp - 0x18]
add eax, edx
mov ecx, dword [ebp - 0x14]
mov dword [ebp - 0x2c], edx
lea ecx, [ecx + eax*8]
mov dword [ebp - 0x28], ecx
xor ecx, ecx
jmp short loc_fffbf9ce  ; jmp 0xfffbf9ce

loc_fffbfa47:  ; not directly referenced
mov eax, dword [ebp - 0x20]
mov ecx, 0xa
imul eax, dword [esi]
xor edx, edx
div ecx
xor edx, edx
mov dword [esi], eax
mov eax, dword [ebp - 0x20]
imul eax, dword [ebx + 4]
div ecx
mov dword [ebx + 4], eax

loc_fffbfa66:  ; not directly referenced
inc dword [ebp - 0x10]
add esi, 0x48
add edi, 0x1347
cmp dword [ebp - 0x10], 2
jne loc_fffbf9aa  ; jne 0xfffbf9aa
xor eax, eax
jmp short loc_fffbfa85  ; jmp 0xfffbfa85

loc_fffbfa80:  ; not directly referenced
mov eax, 2

loc_fffbfa85:  ; not directly referenced
lea esp, [esp + 0x2c]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffbfa8e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x39c]
mov al, byte [ebp + 0xc]
mov dword [ebp - 0x370], edx
mov dword [ebp - 0x378], ecx
mov dl, byte [ebp + 0x14]
mov cl, byte [ebp + 0x18]
mov byte [ebp - 0x371], al
mov al, byte [ebp + 0x20]
mov byte [ebp - 0x372], dl
mov byte [ebp - 0x399], cl
mov byte [ebp - 0x374], al
mov ecx, 5
mov edx, 1
lea eax, [ebp - 0x34c]
movzx ebx, byte [ebp + 8]
call mrc_fillword
mov ecx, 5
mov edx, 1
lea eax, [ebp - 0x338]
call mrc_fillword
mov ecx, 5
or edx, 0xffffffff
lea eax, [ebp - 0x324]
call mrc_fillword
mov ecx, 5
xor edx, edx
lea eax, [ebp - 0x310]
call mrc_fillword
mov ecx, 5
xor edx, edx
lea eax, [ebp - 0x2fc]
call mrc_fillword
mov ecx, 5
xor edx, edx
lea eax, [ebp - 0x2e8]
call mrc_fillword
xor ecx, ecx
mov edx, 0x2bc
lea eax, [ebp - 0x2d4]
mov word [ebp - 0x356], 0
mov word [ebp - 0x354], 0
mov word [ebp - 0x352], 0
mov word [ebp - 0x350], 0
mov word [ebp - 0x34e], 0
call mrc_setmem
xor ecx, ecx
mov edx, 0x462
mov eax, dword [ebp - 0x370]
call mrc_setmem
movsx ecx, byte [ebp - 0x371]
mov dword [ebp - 0x398], ebx
mov ebx, dword [ebp - 0x378]
mov dl, byte [ebp - 0x372]
shr dl, 1
mov dword [ebp - 0x38c], ecx
movzx esi, byte [ebp - 0x372]
mov byte [ebp - 0x388], dl
mov dword [ebp - 0x360], esi
mov edx, dword [ebp - 0x370]
neg esi
lea ebx, [ebx + ecx*2]
mov dword [ebp - 0x35c], edx
mov dword [ebp - 0x394], ebx
mov dword [ebp - 0x368], 0
xor ebx, ebx
mov byte [ebp - 0x373], 0
mov dword [ebp - 0x3a0], esi

loc_fffbfbf7:  ; not directly referenced
mov edi, dword [ebp + 0x1c]
mov esi, dword [ebp + 0x10]
movzx eax, byte [ebp - 0x372]
imul ax, word [edi + ebx*2]
movzx edx, byte [esi + ebx]
imul ecx, ebx, 0x23
imul eax, edx
mov dword [ebp - 0x36c], 0
movsx edi, byte [ebp - 0x371]
mov word [ebp + ebx*2 - 0x356], ax
mov dword [ebp - 0x390], edi
mov dword [ebp - 0x3a8], ecx
jmp near loc_fffbfd91  ; jmp 0xfffbfd91

loc_fffbfc3d:  ; not directly referenced
mov esi, dword [ebp + 0x10]
cmp byte [esi + ebx], 0
jne short loc_fffbfc69  ; jne 0xfffbfc69
mov edx, dword [ebp - 0x3a8]
mov dword [ebp + ebx*4 - 0x324], 1
add edx, eax
mov dword [ebp + edx*4 - 0x2d4], 1
jmp near loc_fffbfd67  ; jmp 0xfffbfd67

loc_fffbfc69:  ; not directly referenced
cmp byte [ebp - 0x380], 1
mov dl, byte [ebp - 0x380]
adc byte [ebp - 0x373], 0
sub edx, dword [ebp - 0x388]
mov esi, edx
mov edx, dword [ebp - 0x3a8]
add edx, eax
jmp short loc_fffbfce5  ; jmp 0xfffbfce5

loc_fffbfc8f:  ; not directly referenced
mov ecx, esi
test cl, cl
jns short loc_fffbfc9d  ; jns 0xfffbfc9d
mov edi, dword [ebp - 0x368]
jmp short loc_fffbfcd3  ; jmp 0xfffbfcd3

loc_fffbfc9d:  ; not directly referenced
mov ecx, esi
cmp cl, byte [ebp - 0x371]
jl short loc_fffbfcba  ; jl 0xfffbfcba
mov edi, dword [ebp - 0x368]
mov ecx, dword [ebp - 0x394]
movzx edi, word [ecx + edi*2 - 2]
jmp short loc_fffbfcdd  ; jmp 0xfffbfcdd

loc_fffbfcba:  ; not directly referenced
mov ecx, esi
movsx edi, cl
cmp eax, edi
jne short loc_fffbfccd  ; jne 0xfffbfccd
mov edi, dword [ebp - 0x368]
add edi, eax
jmp short loc_fffbfcd3  ; jmp 0xfffbfcd3

loc_fffbfccd:  ; not directly referenced
add edi, dword [ebp - 0x368]

loc_fffbfcd3:  ; not directly referenced
mov ecx, dword [ebp - 0x378]
movzx edi, word [ecx + edi*2]

loc_fffbfcdd:  ; not directly referenced
add dword [ebp + edx*4 - 0x2d4], edi
inc esi

loc_fffbfce5:  ; not directly referenced
mov cl, byte [ebp - 0x388]
sub ecx, dword [ebp - 0x380]
mov edi, ecx
add edi, esi
mov ecx, edi
cmp cl, byte [ebp - 0x372]
jb short loc_fffbfc8f  ; jb 0xfffbfc8f
mov edx, dword [ebp - 0x3a8]
add edx, eax
mov edx, dword [ebp + edx*4 - 0x2d4]
cmp dword [ebp + ebx*4 - 0x34c], edx
jae short loc_fffbfd1e  ; jae 0xfffbfd1e
mov dword [ebp + ebx*4 - 0x34c], edx

loc_fffbfd1e:  ; not directly referenced
cmp dword [ebp + ebx*4 - 0x324], edx
jbe short loc_fffbfd3d  ; jbe 0xfffbfd3d
mov esi, dword [ebp - 0x3a8]
add esi, eax
mov esi, dword [ebp + esi*4 - 0x2d4]
mov dword [ebp + ebx*4 - 0x324], esi

loc_fffbfd3d:  ; not directly referenced
movzx esi, byte [ebp - 0x36c]
mov ecx, dword [ebp - 0x378]
add esi, dword [ebp - 0x368]
movzx esi, word [ecx + esi*2]
imul esi, dword [ebp - 0x3a0]
add edx, esi
imul edx, edx
add dword [ebp + ebx*4 - 0x2fc], edx

loc_fffbfd67:  ; not directly referenced
mov esi, dword [ebp - 0x3a8]
xor edx, edx
add esi, eax
inc dword [ebp - 0x36c]
mov eax, dword [ebp + esi*4 - 0x2d4]
div dword [ebp - 0x360]
mov edx, dword [ebp - 0x370]
mov dword [edx + esi*4 + 0x1a6], eax

loc_fffbfd91:  ; not directly referenced
mov cl, byte [ebp - 0x36c]
movzx eax, byte [ebp - 0x36c]
cmp eax, dword [ebp - 0x390]
mov byte [ebp - 0x380], cl
jl loc_fffbfc3d  ; jl 0xfffbfc3d
mov ecx, dword [ebp + 0x10]
mov cl, byte [ecx + ebx]
test cl, cl
mov byte [ebp - 0x380], cl
je loc_fffbff36  ; je 0xfffbff36
mov edx, dword [ebp + ebx*4 - 0x34c]
mov ecx, dword [ebp + ebx*4 - 0x324]
mov eax, edx
sub eax, ecx
add ecx, edx
imul eax, eax, 0x4e20
xor edx, edx
div ecx
xor edx, edx
mov dword [ebp - 0x36c], eax
mov dword [ebp + ebx*4 - 0x310], eax
mov eax, dword [ebp + ebx*4 - 0x2fc]
div dword [ebp - 0x38c]
test eax, eax
jne short loc_fffbfe0f  ; jne 0xfffbfe0f
mov dword [ebp + ebx*4 - 0x2fc], 0
jmp short loc_fffbfe7e  ; jmp 0xfffbfe7e

loc_fffbfe0f:  ; not directly referenced
imul eax, eax, 0x64
xor esi, esi
call fcn_fffb2140  ; call 0xfffb2140
mov ecx, eax
mov eax, 1
shr ecx, 1
jmp short loc_fffbfe48  ; jmp 0xfffbfe48

loc_fffbfe24:  ; not directly referenced
imul eax, eax, 0xa9e
xor edx, edx
mov edi, 0xa
sub ecx, 0x64
div edi
test esi, esi
je short loc_fffbfe43  ; je 0xfffbfe43
mov esi, 0x64
xor edx, edx
div esi

loc_fffbfe43:  ; not directly referenced
mov esi, 1

loc_fffbfe48:  ; not directly referenced
cmp ecx, 0x64
ja short loc_fffbfe24  ; ja 0xfffbfe24
lea edx, [ecx*8 + 0x384]
imul edx, ecx
mov ecx, 0x3e8
add edx, 0x18a88
imul edx, eax
mov eax, edx
xor edx, edx
div ecx
test esi, esi
je short loc_fffbfe77  ; je 0xfffbfe77
mov cx, 0x64
xor edx, edx
div ecx

loc_fffbfe77:  ; not directly referenced
mov dword [ebp + ebx*4 - 0x2fc], eax

loc_fffbfe7e:  ; not directly referenced
imul eax, dword [ebp + ebx*4 - 0x2fc], 0xc8
mov ecx, dword [ebp + ebx*4 - 0x34c]
mov edi, dword [ebp + ebx*4 - 0x324]
xor edx, edx
lea esi, [edi + ecx]
div esi
mov esi, eax
mov dword [ebp + ebx*4 - 0x2fc], eax
imul eax, dword [ebp - 0x36c], 0x3e8
test esi, esi
jne short loc_fffbfeb7  ; jne 0xfffbfeb7
jmp short loc_fffbfebb  ; jmp 0xfffbfebb

loc_fffbfeb7:  ; not directly referenced
xor edx, edx
div esi

loc_fffbfebb:  ; not directly referenced
mov dword [ebp + ebx*4 - 0x2e8], eax
mov edx, dword [ebp - 0x370]
mov al, byte [ebp - 0x380]
mov dword [ebp + ebx*4 - 0x338], ecx
mov byte [edx + ebx + 3], al
mov eax, dword [ebp - 0x35c]
mov edx, dword [ebp - 0x36c]
mov dword [eax + 0x1c], esi
mov esi, dword [ebp - 0x35c]
mov dword [eax + 8], edx
mov eax, dword [ebp + ebx*4 - 0x2e8]
xor edx, edx
mov dword [esi + 0x30], eax
mov eax, ecx
div dword [ebp - 0x360]
xor edx, edx
sub ecx, edi
mov dword [esi + 0x44], eax
mov eax, edi
div dword [ebp - 0x360]
mov edi, dword [ebp + 0x10]
mov dword [esi + 0x58], eax
movzx eax, cx
movzx esi, byte [edi + ebx]
cdq
idiv dword [ebp - 0x360]
cdq
idiv esi
mov edx, dword [ebp - 0x370]
mov word [edx + ebx*2 + 0x6c], ax

loc_fffbff36:  ; not directly referenced
inc ebx
add dword [ebp - 0x35c], 4
mov ecx, dword [ebp - 0x398]
add dword [ebp - 0x368], ecx
cmp ebx, 5
jne loc_fffbfbf7  ; jne 0xfffbfbf7
xor eax, eax
jmp short loc_fffbff8d  ; jmp 0xfffbff8d

loc_fffbff57:  ; not directly referenced
lea esi, [ebp + ecx*4 - 0x338]
lea ecx, [ebp + ecx*4 - 0x334]
mov ebx, dword [esi]
mov edi, dword [ecx]
cmp ebx, edi
jae short loc_fffbff71  ; jae 0xfffbff71
mov dword [esi], edi
mov dword [ecx], ebx

loc_fffbff71:  ; not directly referenced
inc edx
jmp short loc_fffbff81  ; jmp 0xfffbff81

loc_fffbff74:  ; not directly referenced
not ecx
xor edx, edx
add ecx, 5
mov dword [ebp - 0x35c], ecx

loc_fffbff81:  ; not directly referenced
movzx ecx, dl
cmp ecx, dword [ebp - 0x35c]
jl short loc_fffbff57  ; jl 0xfffbff57
inc eax

loc_fffbff8d:  ; not directly referenced
movzx ecx, al
cmp al, 4
jne short loc_fffbff74  ; jne 0xfffbff74
mov esi, dword [ebp - 0x328]
xor edi, edi
xor ebx, ebx

loc_fffbff9e:  ; not directly referenced
cmp edi, 4
je short loc_fffbffac  ; je 0xfffbffac
mov eax, dword [ebp + edi*4 - 0x338]
jmp short loc_fffbffae  ; jmp 0xfffbffae

loc_fffbffac:  ; not directly referenced
mov eax, esi

loc_fffbffae:  ; not directly referenced
call mrc_highest_bit
inc edi
add ebx, eax
cmp edi, 5
jne short loc_fffbff9e  ; jne 0xfffbff9e
add ebx, 0xb
cmp bl, 0x40
ja short loc_fffbffdc  ; ja 0xfffbffdc

loc_fffbffc3:  ; not directly referenced
cmp byte [ebp - 0x399], 0
mov byte [ebp - 0x372], 0
je loc_fffc0075  ; je 0xfffc0075
jmp near loc_fffc0099  ; jmp 0xfffc0099

loc_fffbffdc:  ; not directly referenced
movzx ecx, byte [ebp - 0x373]
movzx ebx, bl
lea eax, [ecx + ebx - 0x41]
cdq
idiv ecx
mov edx, 1
xor ebx, ebx
and eax, 0xff
mov ecx, eax
mov dword [ebp - 0x35c], eax
dec ecx
shl edx, cl
movzx eax, dl

loc_fffc0007:  ; not directly referenced
mov edx, dword [ebp + ebx*4 - 0x34c]
mov cl, byte [ebp - 0x35c]
add edx, eax
imul esi, ebx, 0x23
shr edx, cl
mov dword [ebp - 0x368], esi
mov dword [ebp + ebx*4 - 0x34c], edx
movzx edx, word [ebp + ebx*2 - 0x356]
add edx, eax
sar edx, cl
mov word [ebp + ebx*2 - 0x356], dx
xor edx, edx
jmp short loc_fffc005f  ; jmp 0xfffc005f

loc_fffc0040:  ; not directly referenced
add edi, dword [ebp - 0x368]
mov cl, byte [ebp - 0x35c]
inc edx
mov esi, dword [ebp + edi*4 - 0x2d4]
add esi, eax
shr esi, cl
mov dword [ebp + edi*4 - 0x2d4], esi

loc_fffc005f:  ; not directly referenced
movzx edi, dl
cmp edi, dword [ebp - 0x390]
jl short loc_fffc0040  ; jl 0xfffc0040
inc ebx
cmp ebx, 5
jne short loc_fffc0007  ; jne 0xfffc0007
jmp near loc_fffbffc3  ; jmp 0xfffbffc3

loc_fffc0075:  ; not directly referenced
mov ebx, dword [ebp - 0x360]
cmp dword [ebp - 0x390], ebx
jle short loc_fffc0099  ; jle 0xfffc0099
cmp byte [ebp - 0x388], 0
je short loc_fffc0099  ; je 0xfffc0099
dec byte [ebp - 0x371]
mov byte [ebp - 0x372], 1

loc_fffc0099:  ; not directly referenced
mov cl, byte [ebp - 0x372]
mov byte [ebp - 0x360], 0
mov byte [ebp - 0x35c], cl
mov dword [ebp - 0x368], 0xffffffff
mov dword [ebp - 0x364], 0xffffffff
xor esi, esi
xor edi, edi
jmp near loc_fffc0223  ; jmp 0xfffc0223

loc_fffc00c9:  ; not directly referenced
mov bl, byte [ebp - 0x398]
mov ecx, dword [ebp - 0x398]
mov byte [ebp - 0x390], bl
mov ebx, dword [ebp + 0x10]
cmp byte [ebx + ecx], 0
je loc_fffc0186  ; je 0xfffc0186
imul eax, ecx, 0x8c
mov ecx, dword [ebp - 0x38c]
mov dword [ebp - 0x3a0], 0
mov eax, dword [ecx + eax]
cmp dword [ebp - 0x36c], eax
mov dword [ebp - 0x378], eax
cmovbe eax, dword [ebp - 0x36c]
mov dword [ebp - 0x36c], eax
xor edx, edx
mov eax, 1

loc_fffc0121:  ; not directly referenced
mov ecx, dword [ebp + 0x10]
mov ebx, dword [ebp - 0x3a0]
cmp byte [ecx + ebx], 0
je short loc_fffc015a  ; je 0xfffc015a
cmp byte [ebp - 0x390], bl
je short loc_fffc015a  ; je 0xfffc015a
mov ecx, dword [ebp + ebx*4 - 0x34c]
xor ebx, ebx
mov dword [ebp - 0x380], ecx
mov dword [ebp - 0x37c], ebx
mov ebx, dword [ebp - 0x380]
imul ebx, edx
mul ecx
add edx, ebx

loc_fffc015a:  ; not directly referenced
inc dword [ebp - 0x3a0]
cmp dword [ebp - 0x3a0], 5
jne short loc_fffc0121  ; jne 0xfffc0121
mov ebx, dword [ebp - 0x378]
imul ebx, edx
mul dword [ebp - 0x378]
add edx, ebx
add dword [ebp - 0x388], eax
adc dword [ebp - 0x384], edx

loc_fffc0186:  ; not directly referenced
inc dword [ebp - 0x398]
cmp dword [ebp - 0x398], 5
jne loc_fffc00c9  ; jne 0xfffc00c9
mov eax, 1
xor edx, edx
xor ecx, ecx
jmp short loc_fffc01b6  ; jmp 0xfffc01b6

loc_fffc01a4:  ; not directly referenced
mov ebx, dword [ebp - 0x36c]
inc ecx
imul ebx, edx
mul dword [ebp - 0x36c]
add edx, ebx

loc_fffc01b6:  ; not directly referenced
cmp cl, byte [ebp - 0x373]
jne short loc_fffc01a4  ; jne 0xfffc01a4
add eax, dword [ebp - 0x388]
adc edx, dword [ebp - 0x384]
cmp dword [ebp - 0x364], edx
jb short loc_fffc01e8  ; jb 0xfffc01e8
ja short loc_fffc01dc  ; ja 0xfffc01dc
cmp dword [ebp - 0x368], eax
jbe short loc_fffc01e8  ; jbe 0xfffc01e8

loc_fffc01dc:  ; not directly referenced
mov dword [ebp - 0x368], eax
mov dword [ebp - 0x364], edx

loc_fffc01e8:  ; not directly referenced
cmp edx, edi
ja short loc_fffc01f2  ; ja 0xfffc01f2
jb short loc_fffc0202  ; jb 0xfffc0202
cmp eax, esi
jbe short loc_fffc0202  ; jbe 0xfffc0202

loc_fffc01f2:  ; not directly referenced
mov cl, byte [ebp - 0x35c]
mov esi, eax
mov byte [ebp - 0x360], cl
mov edi, edx

loc_fffc0202:  ; not directly referenced
movzx ecx, byte [ebp - 0x35c]
mov ebx, dword [ebp - 0x370]
inc byte [ebp - 0x35c]
mov dword [ebx + ecx*8 + 0x8e], eax
mov dword [ebx + ecx*8 + 0x92], edx

loc_fffc0223:  ; not directly referenced
mov cl, byte [ebp - 0x371]
cmp byte [ebp - 0x35c], cl
jae short loc_fffc0272  ; jae 0xfffc0272
movzx eax, byte [ebp - 0x35c]
mov dword [ebp - 0x398], 0
mov dword [ebp - 0x388], 0
mov dword [ebp - 0x384], 0
mov dword [ebp - 0x36c], 0xffffffff
lea eax, [ebp + eax*4 - 0x2d4]
mov dword [ebp - 0x38c], eax
jmp near loc_fffc00c9  ; jmp 0xfffc00c9

loc_fffc0272:  ; not directly referenced
mov edx, dword [ebp - 0x370]
mov ebx, dword [ebp - 0x364]
movzx eax, byte [ebp - 0x360]
mov word [edx], ax
mov eax, esi
mov edx, edi
sub eax, dword [ebp - 0x368]
sbb edx, dword [ebp - 0x364]
imul ecx, edx, 0x7d0
mov edx, 0x7d0
mul edx
add edx, ecx
mov ecx, dword [ebp - 0x368]
add ecx, esi
adc ebx, edi
add ecx, 1
adc ebx, 0
push ebx
push ecx
push edx
push eax
call udiv64  ; call 0xfffc91d0
mov ecx, dword [ebp - 0x370]
add esp, 0x10
mov ebx, dword [ebp - 0x368]
cmp byte [ebp - 0x374], 0
mov dword [ecx + 0x7e], esi
mov esi, dword [ebp - 0x364]
mov dword [ecx + 0x76], eax
mov dword [ecx + 0x7a], edx
mov dword [ecx + 0x82], edi
mov dword [ecx + 0x86], ebx
mov dword [ecx + 0x8a], esi
je loc_fffc03b0  ; je 0xfffc03b0
movsx eax, byte [ebp - 0x374]
movzx ebx, byte [ebp - 0x360]
jge short loc_fffc0322  ; jge 0xfffc0322
add ebx, eax
mov esi, 1
movzx edx, byte [ebp - 0x372]
cmp ebx, edx
cmovl ebx, edx
jmp short loc_fffc0349  ; jmp 0xfffc0349

loc_fffc0322:  ; not directly referenced
movzx edx, byte [ebp - 0x371]
add eax, ebx
cmp eax, edx
jl short loc_fffc0338  ; jl 0xfffc0338
mov bl, byte [ebp - 0x371]
dec ebx
jmp short loc_fffc0344  ; jmp 0xfffc0344

loc_fffc0338:  ; not directly referenced
mov bl, byte [ebp - 0x360]
add ebx, dword [ebp - 0x374]

loc_fffc0344:  ; not directly referenced
mov esi, 0xffffffff

loc_fffc0349:  ; not directly referenced
movzx edx, byte [ebp - 0x360]
mov edi, dword [ebp - 0x370]
add edx, 0x10
mov eax, 0x5a
imul ecx, dword [edi + edx*8 + 0x12], 0x5a
mul dword [edi + edx*8 + 0xe]
push 0
add edx, ecx
push 0x64
push edx
push eax
call udiv64  ; call 0xfffc91d0
add esp, 0x10
jmp short loc_fffc03a6  ; jmp 0xfffc03a6

loc_fffc0379:  ; not directly referenced
movzx ecx, bl
mov edi, dword [ebp - 0x370]
add ecx, 0x10
cmp dword [edi + ecx*8 + 0x12], edx
jb short loc_fffc03a4  ; jb 0xfffc03a4
ja short loc_fffc0393  ; ja 0xfffc0393
cmp dword [edi + ecx*8 + 0xe], eax
jbe short loc_fffc03a4  ; jbe 0xfffc03a4

loc_fffc0393:  ; not directly referenced
mov edx, dword [ebp - 0x370]
sub ebx, dword [ebp - 0x360]
mov byte [edx + 2], bl
jmp short loc_fffc03b0  ; jmp 0xfffc03b0

loc_fffc03a4:  ; not directly referenced
add ebx, esi

loc_fffc03a6:  ; not directly referenced
cmp bl, byte [ebp - 0x360]
jne short loc_fffc0379  ; jne 0xfffc0379
jmp short loc_fffc0393  ; jmp 0xfffc0393

loc_fffc03b0:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc03b8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, ecx
push esi
mov esi, eax
lea eax, [eax + 0x16be]
push ebx
lea esp, [esp - 0x4c]
mov byte [ebp - 0x29], dl
mov dl, byte [ecx + 0x529]
mov dword [ebp - 0x4c], eax
xor ecx, ecx
mov byte [ebp - 0x2a], dl
lea eax, [ebp - 0x1d]
mov edx, 5
call mrc_setmem
cmp dword [ebp + 0xc], 0
mov al, 0
mov cl, byte [ebp - 0x2a]
cmovne ecx, eax
xor eax, eax
mov byte [ebp - 0x2a], cl
jmp short loc_fffc0419  ; jmp 0xfffc0419

loc_fffc03fd:  ; not directly referenced
movzx ecx, byte [edi + eax + 0x524]
xor edx, edx
cmp cl, 5
ja short loc_fffc0413  ; ja 0xfffc0413
movzx edx, byte [ecx + ref_fffcbe84]  ; movzx edx, byte [ecx - 0x3417c]

loc_fffc0413:  ; not directly referenced
mov byte [ebp + edx - 0x1d], 1
inc eax

loc_fffc0419:  ; not directly referenced
cmp byte [ebp - 0x2a], al
ja short loc_fffc03fd  ; ja 0xfffc03fd
cmp dword [ebp + 8], 0
jne short loc_fffc043c  ; jne 0xfffc043c
sub esp, 0xc
xor edx, edx
push 1
movzx ecx, byte [edi + 8]
mov eax, esi
call fcn_fffb3889  ; call 0xfffb3889
mov dword [edi + 9], eax
add esp, 0x10

loc_fffc043c:  ; not directly referenced
movzx eax, byte [ebp - 0x29]
mov ebx, edi
mov dword [ebp - 0x3c], esi
mov dword [ebp - 0x30], 0
mov dword [ebp - 0x50], eax

loc_fffc044f:  ; not directly referenced
imul eax, dword [ebp - 0x30], 0x1347
mov edx, dword [ebp - 0x4c]
cmp dword [edx + eax + 0x12be], 2
je short loc_fffc047c  ; je 0xfffc047c

loc_fffc0463:  ; not directly referenced
inc dword [ebp - 0x30]
add ebx, 2
add dword [ebp - 0x3c], 0x1347
cmp dword [ebp - 0x30], 2
je loc_fffc063a  ; je 0xfffc063a
jmp short loc_fffc044f  ; jmp 0xfffc044f

loc_fffc047c:  ; not directly referenced
mov ecx, dword [ebp - 0x50]
mov eax, dword [ebp - 0x30]
bt ecx, eax
jae short loc_fffc0463  ; jae 0xfffc0463
mov edx, dword [ebp - 0x3c]
mov byte [ebp - 0x29], 1
cmp dword [edx + 0x2a71], 1
jne short loc_fffc04a6  ; jne 0xfffc04a6
mov al, byte [ebx + 4]
mov byte [ebp - 0x29], 0
mov byte [ebx], al
mov al, byte [ebx + 5]
mov byte [ebx + 1], al

loc_fffc04a6:  ; not directly referenced
cmp dword [esi + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffc04c1  ; jne 0xfffc04c1
mov byte [ebx], 0
mov byte [ebx + 1], 0
mov byte [ebx + 5], 0
mov byte [ebp - 0x29], 1

loc_fffc04c1:  ; not directly referenced
mov dl, byte [ebx + 4]
mov al, byte [ebp - 0x29]
mul dl
push 1
movzx edx, byte [ebx]
shl eax, 4
mov ecx, 3
add eax, edx
mov edx, dword [ebp - 0x30]
cwde
push eax
mov eax, esi
push 7
push 0
call fcn_fffb498e  ; call 0xfffb498e
mov dl, byte [ebx + 5]
mov al, byte [ebp - 0x29]
mul dl
push 1
movzx edx, byte [ebx + 1]
shl eax, 4
mov ecx, 0xc
add eax, edx
mov edx, dword [ebp - 0x30]
cwde
push eax
mov eax, esi
push 7
push 0
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x20
cmp byte [ebp - 0x2a], 0
jne loc_fffc061b  ; jne 0xfffc061b
jmp near loc_fffc0463  ; jmp 0xfffc0463

loc_fffc0522:  ; not directly referenced
cmp byte [ebp - 0x1d], 0
je short loc_fffc0550  ; je 0xfffc0550
movzx eax, byte [ebp - 0x29]
mov ecx, dword [ebp - 0x48]
push 1
lea edx, [eax + ecx + 0x20]
mov ecx, 0xf
movsx edx, word [edi + edx*2 + 7]
push edx
mov edx, dword [ebp - 0x30]
push 6
push eax
mov eax, esi
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x10

loc_fffc0550:  ; not directly referenced
cmp byte [ebp - 0x1c], 0
je short loc_fffc0581  ; je 0xfffc0581
movzx eax, byte [ebp - 0x29]
mov ecx, dword [ebp - 0x48]
push 1
lea edx, [eax + ecx + 0x9c]
mov ecx, 0xf
movsx edx, word [edi + edx*2 + 7]
push edx
mov edx, dword [ebp - 0x30]
push 0
push eax
mov eax, esi
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x10

loc_fffc0581:  ; not directly referenced
movzx eax, byte [ebp - 0x29]
mov edx, dword [ebp - 0x48]
mov dword [ebp - 0x44], eax
mov dword [ebp - 0x38], 0
lea eax, [eax + edx + 0x194]
lea eax, [edi + eax*2 + 7]
mov dword [ebp - 0x40], eax

loc_fffc05a0:  ; not directly referenced
mov edx, dword [ebp - 0x3c]
mov dword [ebp - 0x34], 1
mov cl, byte [ebp - 0x38]
shl dword [ebp - 0x34], cl
mov al, byte [ebp - 0x34]
test byte [edx + 0x3acb], al
je short loc_fffc0609  ; je 0xfffc0609
cmp byte [ebp - 0x1b], 0
je short loc_fffc05e4  ; je 0xfffc05e4
mov edx, dword [ebp - 0x40]
movzx ecx, byte [ebp - 0x34]
push 1
movsx eax, word [edx - 0xf8]
mov edx, dword [ebp - 0x30]
push eax
mov eax, esi
push 5
push dword [ebp - 0x44]
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x10

loc_fffc05e4:  ; not directly referenced
cmp byte [ebp - 0x1a], 0
je short loc_fffc0609  ; je 0xfffc0609
mov edx, dword [ebp - 0x40]
movzx ecx, byte [ebp - 0x34]
push 1
movsx eax, word [edx]
mov edx, dword [ebp - 0x30]
push eax
mov eax, esi
push 4
push dword [ebp - 0x44]
call fcn_fffb498e  ; call 0xfffb498e
add esp, 0x10

loc_fffc0609:  ; not directly referenced
inc dword [ebp - 0x38]
add dword [ebp - 0x40], 0x3e
cmp dword [ebp - 0x38], 4
jne short loc_fffc05a0  ; jne 0xfffc05a0
inc byte [ebp - 0x29]
jmp short loc_fffc0626  ; jmp 0xfffc0626

loc_fffc061b:  ; not directly referenced
imul ecx, dword [ebp - 0x30], 9
mov byte [ebp - 0x29], 0
mov dword [ebp - 0x48], ecx

loc_fffc0626:  ; not directly referenced
mov al, byte [ebp - 0x29]
cmp al, byte [esi + 0x1755]
jb loc_fffc0522  ; jb 0xfffc0522
jmp near loc_fffc0463  ; jmp 0xfffc0463

loc_fffc063a:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc0642:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
movzx ebx, cl
lea esp, [esp - 0x8c]
mov dword [ebp - 0x68], eax
mov al, byte [ebp + 0x14]
mov dword [ebp - 0x80], edx
mov byte [ebp - 0x76], al
mov cl, byte [ebp + 0x20]
imul eax, edx, 0x1347
mov edx, dword [ebp - 0x68]
mov esi, dword [ebp + 0x10]
mov byte [ebp - 0x77], cl
xor ecx, ecx
mov eax, dword [edx + eax + 0x2a71]
mov edx, 0x26
mov dword [ebp - 0x88], eax
lea eax, [ebp - 0x3e]
call mrc_setmem
movzx ecx, byte [ebp - 0x77]
mov edx, esi
movzx eax, dl
mov edx, ecx
imul edx, eax
mov dword [ebp - 0x84], ecx
mov ecx, dword [ebp + 0xc]
add eax, eax
mov word [ebp - 0x4e], 0
mov word [ebp - 0x4c], 0
mov word [ebp - 0x4a], 0
mov word [ebp - 0x48], 0
mov word [ebp - 0x46], 0xffff
mov word [ebp - 0x44], 0xffff
lea edx, [ecx + edx*2]
mov ecx, dword [ebp - 0x80]
mov dword [ebp - 0x7c], edx
mov dword [ebp - 0x74], edx
add ecx, ecx
mov edx, dword [ebp + 8]
mov word [ebp - 0x42], 0xffff
mov word [ebp - 0x40], 0xffff
mov dword [ebp - 0x64], edx
mov dword [ebp - 0x8c], eax
mov word [ebp - 0x5c], 0
mov byte [ebp - 0x75], 0
mov word [ebp - 0x6e], 0xffff
mov word [ebp - 0x70], 0
mov dword [ebp - 0x94], ecx
mov dword [ebp - 0x98], ebx
jmp near loc_fffc08c8  ; jmp 0xfffc08c8

loc_fffc0716:  ; not directly referenced
mov dx, word [ebx + ecx]
cmp word [ebp + eax*2 - 0x4e], dx
jae short loc_fffc0726  ; jae 0xfffc0726
mov word [ebp + eax*2 - 0x4e], dx

loc_fffc0726:  ; not directly referenced
cmp word [ebp + eax*2 - 0x46], dx
jbe short loc_fffc0732  ; jbe 0xfffc0732
mov word [ebp + eax*2 - 0x46], dx

loc_fffc0732:  ; not directly referenced
inc eax
add ecx, dword [ebp - 0x8c]

loc_fffc0739:  ; not directly referenced
cmp byte [ebp - 0x77], al
ja short loc_fffc0716  ; ja 0xfffc0716
cmp dword [ebp + 0x24], 0
jne loc_fffc0889  ; jne 0xfffc0889
mov eax, dword [ebp - 0x68]
mov ecx, 0x64
mov edx, dword [ebp - 0x64]
mov edi, dword [ebp - 0x64]
mov byte [ebp - 0x60], 0
mov byte [ebp - 0x6c], 0
cmp dword [eax + 0x1005], HASWELL_FAMILY_ULT
mov eax, 0x32
movsx ebx, byte [edx + 8]
cmovne ecx, eax
movzx eax, cl
add ebx, 0x30
imul eax, eax, 0x60
add edi, dword [ebp - 0x94]
cdq
xor esi, esi
idiv ebx
xor ebx, ebx
sub eax, ecx
mov word [ebp - 0x8e], ax

loc_fffc0793:  ; not directly referenced
mov ecx, dword [ebp - 0x98]
bt ecx, esi
jae short loc_fffc0811  ; jae 0xfffc0811
sub esp, 0xc
mov edx, dword [ebp - 0x80]
push 1
lea ecx, [esi + esi]
mov eax, dword [ebp - 0x68]
push 0
push 0
push 9
push 0
call fcn_fffb67ea  ; call 0xfffb67ea
movzx edx, byte [edi + 4]
add byte [ebp - 0x6c], al
movzx edx, byte [edx + ref_fffcbe8c]  ; movzx edx, byte [edx - 0x34174]
movzx eax, byte [edi]
add esp, 0x20
cmp dword [ebp - 0x88], 1
mov word [ebp - 0x5c], dx
movzx eax, byte [eax + ref_fffcbe8c]  ; movzx eax, byte [eax - 0x34174]
jne short loc_fffc07f2  ; jne 0xfffc07f2
test dx, dx
cmovne eax, edx
mov word [ebp - 0x5c], ax
mov eax, 0x3fff
jmp short loc_fffc07fd  ; jmp 0xfffc07fd

loc_fffc07f2:  ; not directly referenced
test ax, ax
mov edx, 0x3fff
cmove eax, edx

loc_fffc07fd:  ; not directly referenced
cmp word [ebp - 0x5c], 0
mov edx, dword [ebp - 0x5c]
cmove edx, eax
add ebx, eax
mov word [ebp - 0x5c], dx
inc byte [ebp - 0x60]

loc_fffc0811:  ; not directly referenced
inc esi
inc edi
cmp esi, 2
jne loc_fffc0793  ; jne 0xfffc0793
cmp byte [ebp - 0x60], 0
je short loc_fffc0838  ; je 0xfffc0838
movzx eax, bx
movzx ecx, byte [ebp - 0x60]
cdq
idiv ecx
mov ebx, eax
movzx eax, byte [ebp - 0x6c]
div byte [ebp - 0x60]
mov byte [ebp - 0x6c], al

loc_fffc0838:  ; not directly referenced
lea eax, [ebx - 0x79]
lea esi, [ebp - 0x3e]
cmp ax, 0x3f85
mov eax, 0xf0
mov ecx, 0x1e
mov edx, esi
cmovbe ebx, eax
movzx eax, word [ebp - 0x5c]
push eax
movzx ebx, bx
push ebx
movzx eax, word [ebp - 0x8e]
push eax
movzx eax, byte [ebp - 0x6c]
push eax
mov eax, dword [ebp - 0x68]
call fcn_fffb31ae  ; call 0xfffb31ae
mov ecx, dword [ebp - 0x74]
mov ax, word [ebp - 0x1a]
mov edi, dword [ebp - 0x64]
add esp, 0x10
add edi, 0xd
mov word [ecx], ax
mov ecx, 0x26
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]

loc_fffc0889:  ; not directly referenced
mov edx, dword [ebp - 0x74]
cmp byte [ebp - 0x76], 1
mov ax, word [edx]
je short loc_fffc08b0  ; je 0xfffc08b0
cmp ax, word [ebp - 0x70]
mov edx, dword [ebp - 0x70]
cmovae edx, eax
cmp word [ebp - 0x6e], ax
cmovbe ax, word [ebp - 0x6e]
mov word [ebp - 0x6e], ax
mov eax, edx
jmp short loc_fffc08b6  ; jmp 0xfffc08b6

loc_fffc08b0:  ; not directly referenced
mov word [ebp - 0x6e], 0

loc_fffc08b6:  ; not directly referenced
inc byte [ebp - 0x75]
add dword [ebp - 0x74], 2
add dword [ebp - 0x64], 0x53e
mov word [ebp - 0x70], ax

loc_fffc08c8:  ; not directly referenced
mov cl, byte [ebp - 0x76]
cmp byte [ebp - 0x75], cl
je short loc_fffc08e3  ; je 0xfffc08e3
movzx eax, byte [ebp - 0x75]
mov edx, dword [ebp + 0xc]
xor ecx, ecx
lea ebx, [edx + eax*2]
xor eax, eax
jmp near loc_fffc0739  ; jmp 0xfffc0739

loc_fffc08e3:  ; not directly referenced
xor ebx, ebx
mov edi, 0x7fff
xor esi, esi
jmp short loc_fffc094a  ; jmp 0xfffc094a

loc_fffc08ee:  ; not directly referenced
movzx eax, word [ebp + ebx*2 - 0x4e]
mov edx, dword [ebp + 0x1c]
add esi, eax
movzx ecx, byte [edx + ebx]
cdq
idiv ecx
mov ecx, dword [ebp + 0x18]
movzx ecx, byte [ecx + ebx]
mov dword [ebp - 0x5c], ecx
xor ecx, ecx
mov edx, dword [ebp - 0x5c]
mov dword [ebp - 0x64], eax
mov eax, dword [ebp - 0x68]
call fcn_fffb2de8  ; call 0xfffb2de8
movzx eax, ax
mov ecx, 1
mov dword [ebp - 0x60], eax
mov edx, dword [ebp - 0x5c]
mov eax, dword [ebp - 0x68]
call fcn_fffb2de8  ; call 0xfffb2de8
movzx ecx, ax
mov edx, dword [ebp - 0x64]
sub edx, dword [ebp - 0x60]
sub ecx, dword [ebp - 0x60]
imul edx, edx, 0x64
mov eax, edx
cdq
idiv ecx
cmp di, ax
cmovg edi, eax
inc ebx

loc_fffc094a:  ; not directly referenced
cmp byte [ebp - 0x77], bl
ja short loc_fffc08ee  ; ja 0xfffc08ee
movzx eax, si
mov ecx, 0x64
cdq
idiv dword [ebp - 0x84]
mov dword [ebp - 0x60], eax
movsx eax, di
imul eax, eax, 0x41
cdq
idiv ecx
xor edx, edx
cmp ax, 0x64
jbe short loc_fffc097a  ; jbe 0xfffc097a
lea edx, [eax - 0x64]
mov eax, 0x64

loc_fffc097a:  ; not directly referenced
movzx esi, ax
xor ecx, ecx
movzx edx, dx
movzx eax, word [ebp - 0x6e]
add edx, esi
mov dword [ebp - 0x64], edx
mov dword [ebp - 0x6c], eax
movzx edx, word [ebp - 0x70]
mov dword [ebp - 0x5c], edx
jmp short loc_fffc09f3  ; jmp 0xfffc09f3

loc_fffc0997:  ; not directly referenced
test di, di
jns short loc_fffc09a7  ; jns 0xfffc09a7
mov eax, dword [ebp - 0x7c]
mov word [eax + ecx*2], 1
jmp short loc_fffc09f2  ; jmp 0xfffc09f2

loc_fffc09a7:  ; not directly referenced
mov dx, word [ebp - 0x6e]
cmp word [ebp - 0x70], dx
je short loc_fffc09c9  ; je 0xfffc09c9
mov edx, dword [ebp - 0x7c]
movzx eax, word [edx + ecx*2]
mov edx, dword [ebp - 0x6c]
sub edx, eax
imul eax, edx, 0x64
cdq
idiv dword [ebp - 0x5c]
add eax, 0x64
jmp short loc_fffc09cb  ; jmp 0xfffc09cb

loc_fffc09c9:  ; not directly referenced
xor eax, eax

loc_fffc09cb:  ; not directly referenced
movzx eax, ax
mov ebx, 0x64
imul eax, dword [ebp - 0x64]
mov edx, ebx
sub edx, esi
mov dword [ebp - 0x68], edx
cdq
idiv ebx
add eax, dword [ebp - 0x68]
imul eax, dword [ebp - 0x60]
cdq
idiv ebx
mov edx, dword [ebp - 0x7c]
mov word [edx + ecx*2], ax

loc_fffc09f2:  ; not directly referenced
inc ecx

loc_fffc09f3:  ; not directly referenced
cmp byte [ebp - 0x76], cl
ja short loc_fffc0997  ; ja 0xfffc0997
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc0a00:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
lea esp, [esp - 0xbc]
mov bl, byte [ebp + 0xc]
mov byte [ebp - 0x5a], bl
mov bl, byte [ebp + 0x10]
mov byte [ebp - 0x5c], bl
mov bl, byte [ebp + 0x14]
mov al, byte [ebp + 8]
mov byte [ebp - 0xbd], bl
xor ebx, ebx
cmp byte [ebp - 0x5a], 0x21
mov byte [ebp - 0x98], cl
mov byte [ebp - 0x50], al
ja short loc_fffc0a43  ; ja 0xfffc0a43
movzx eax, byte [ebp - 0x5a]
movzx ebx, byte [eax + ref_fffcc308]  ; movzx ebx, byte [eax - 0x33cf8]

loc_fffc0a43:  ; not directly referenced
mov al, byte [ebp - 0x5a]
shr al, 4
cmp byte [edi + 0x1768], 1
lea esi, [eax + 1]
mov ecx, esi
mov byte [ebp - 0x4c], cl
jne short loc_fffc0a74  ; jne 0xfffc0a74
mov al, byte [edi + 0x1769]
mov byte [ebp - 0x24], al
mov byte [ebp - 0x23], al
lea ecx, [eax + 4]
add eax, 2
mov byte [ebp - 0x22], cl
mov byte [ebp - 0x21], al
jmp short loc_fffc0a84  ; jmp 0xfffc0a84

loc_fffc0a74:  ; not directly referenced
mov byte [ebp - 0x24], 1
mov byte [ebp - 0x23], 1
mov byte [ebp - 0x22], 1
mov byte [ebp - 0x21], 1

loc_fffc0a84:  ; not directly referenced
cmp byte [ebp - 0x5a], 0x21
sete cl
cmp byte [ebp - 0x5a], 0x11
sete al
or cl, al
jne short loc_fffc0aa7  ; jne 0xfffc0aa7
xor eax, eax
cmp byte [ebp - 0x5a], 5
sete al
mov dword [ebp - 0xa0], eax
jmp short loc_fffc0ab1  ; jmp 0xfffc0ab1

loc_fffc0aa7:  ; not directly referenced
mov dword [ebp - 0xa0], 1

loc_fffc0ab1:  ; not directly referenced
cmp byte [ebp - 0x5a], 0xd
mov dword [ebp - 0x6c], 0
jne short loc_fffc0adf  ; jne 0xfffc0adf
movzx eax, byte [ebp - 0x98]
xor ecx, ecx
jmp short loc_fffc0acf  ; jmp 0xfffc0acf

loc_fffc0ac9:  ; not directly referenced
lea esi, [eax - 1]
inc ecx
and eax, esi

loc_fffc0acf:  ; not directly referenced
test eax, eax
jne short loc_fffc0ac9  ; jne 0xfffc0ac9
cmp cl, 1
seta cl
movzx ecx, cl
mov dword [ebp - 0x6c], ecx

loc_fffc0adf:  ; not directly referenced
imul ebx, ebx, 0x240
mov dword [ebp - 0x84], 0
add ebx, edx
mov byte [ebp - 0x59], 0
movzx esi, byte [ebp - 0x98]
mov dword [ebp - 0x54], ebx
movzx ebx, byte [ebp - 0x50]
mov dword [ebp - 0x68], esi
imul eax, ebx, 0x90
mov dword [ebp - 0x64], ebx
sar esi, 1
mov dword [ebp - 0x50], 0
and esi, 1
imul ebx, ebx, 0x24
mov dword [ebp - 0x80], esi
mov esi, dword [ebp - 0x54]
mov dword [ebp - 0xbc], ebx
mov bl, byte [ebp - 0x98]
and ebx, 1
mov dword [ebp - 0xa4], ebx
lea esi, [esi + eax + 0x48]
mov dword [ebp - 0x74], esi
movzx esi, byte [ebp - 0x4c]
add eax, dword [ebp - 0x54]
mov dword [ebp - 0xac], esi
dec esi
mov dword [ebp - 0xa8], eax
mov dword [ebp - 0xc4], esi

loc_fffc0b5a:  ; not directly referenced
xor ecx, ecx
mov edx, 4
lea eax, [ebp - 0x28]
call mrc_setmem
mov edx, 2
xor ecx, ecx
lea eax, [ebp - 0x40]
call mrc_setmem
imul eax, dword [ebp - 0x64], 0x24
mov edx, dword [ebp - 0x50]
add edx, eax
mov ebx, dword [ebp - 0x54]
lea edx, [ebx + edx*4]
mov dword [ebp - 0x7c], edx
mov esi, edx
xor ebx, ebx
movzx edx, byte [ebp - 0x59]
imul edx, edx, 0x12
add eax, edx
add eax, dword [ebp - 0x50]
mov dword [ebp - 0x58], eax

loc_fffc0b9d:  ; not directly referenced
mov edx, dword [ebp - 0x68]
mov al, byte [ebp - 0xbd]
bt edx, ebx
mov byte [ebp + ebx - 0x42], al
mov byte [ebp + ebx - 0x3e], 0x7f
mov dword [ebp + ebx*4 - 0x20], 0
mov byte [ebp + ebx - 0x3a], 0
mov byte [ebp + ebx - 0x3c], 0
jb short loc_fffc0bd7  ; jb 0xfffc0bd7
mov word [ebp + ebx*2 - 0x28], 1
mov byte [ebp + ebx - 0x40], 1
jmp near loc_fffc0c70  ; jmp 0xfffc0c70

loc_fffc0bd7:  ; not directly referenced
cmp byte [ebp - 0x5a], 1
jne short loc_fffc0bef  ; jne 0xfffc0bef
mov cl, byte [edi + 0x1755]
mov dword [ebp - 0x4c], 0
mov byte [ebp - 0x60], cl
jmp short loc_fffc0c2c  ; jmp 0xfffc0c2c

loc_fffc0bef:  ; not directly referenced
mov eax, dword [esi]
xor edx, edx
mov ecx, 0xa
div ecx
mov dword [esi], eax
movzx edx, byte [ebp + ebx - 0x42]
cmp eax, edx
ja short loc_fffc0c36  ; ja 0xfffc0c36
jmp short loc_fffc0c38  ; jmp 0xfffc0c38

loc_fffc0c07:  ; not directly referenced
push eax
movzx eax, byte [ebp + ebx - 0x42]
mov ecx, 0xff
push eax
push dword [ebp - 0x50]
push dword [ebp - 0x4c]
mov edx, ebx
mov eax, edi
call fcn_fffb2c66  ; call 0xfffb2c66
mov byte [ebp + ebx - 0x42], al
add esp, 0x10
inc dword [ebp - 0x4c]

loc_fffc0c2c:  ; not directly referenced
mov al, byte [ebp - 0x4c]
cmp byte [ebp - 0x60], al
ja short loc_fffc0c07  ; ja 0xfffc0c07
jmp short loc_fffc0bef  ; jmp 0xfffc0bef

loc_fffc0c36:  ; not directly referenced
mov dword [esi], edx

loc_fffc0c38:  ; not directly referenced
cmp dword [ebp - 0x6c], 0
je short loc_fffc0c4e  ; je 0xfffc0c4e
mov edx, dword [ebp - 0x58]
mov ecx, dword [ebp - 0x54]
mov eax, dword [esi]
cmp dword [ecx + edx*4], eax
jbe short loc_fffc0c4e  ; jbe 0xfffc0c4e
mov dword [ecx + edx*4], eax

loc_fffc0c4e:  ; not directly referenced
mov eax, dword [esi]
mov edx, ebx
mov byte [ebp + ebx - 0x3a], al
mov byte [ebp + ebx - 0x3c], al
shl edx, 0xa
mov eax, dword [edi + 0x103f]
lea eax, [edx + eax + 0x40f0]
mov dword [eax], 0

loc_fffc0c70:  ; not directly referenced
inc ebx
add esi, 0x48
cmp ebx, 2
jne loc_fffc0b9d  ; jne 0xfffc0b9d
cmp dword [ebp - 0x6c], 0
je short loc_fffc0cef  ; je 0xfffc0cef
cmp dword [ebp - 0xa4], 0
je short loc_fffc0cba  ; je 0xfffc0cba
movzx eax, byte [ebp - 0x59]
mov ebx, dword [ebp - 0x54]
imul edx, dword [ebp - 0x64], 0x24
imul eax, eax, 0x12
mov esi, dword [ebp - 0x50]
add eax, edx
add eax, dword [ebp - 0x50]
mov edx, dword [ebx + eax*4]
mov ebx, dword [ebp - 0xa8]
mov dword [ebx + esi*4], edx
mov esi, dword [ebp - 0x54]
mov eax, dword [esi + eax*4]
mov byte [ebp - 0x3a], al
mov byte [ebp - 0x3c], al

loc_fffc0cba:  ; not directly referenced
cmp dword [ebp - 0x80], 0
je short loc_fffc0cef  ; je 0xfffc0cef
movzx eax, byte [ebp - 0x59]
mov ebx, dword [ebp - 0x54]
imul edx, dword [ebp - 0x64], 0x24
imul eax, eax, 0x12
mov esi, dword [ebp - 0x50]
add eax, edx
add eax, dword [ebp - 0x50]
mov edx, dword [ebx + eax*4]
mov ebx, dword [ebp - 0xa8]
mov dword [ebx + esi*4 + 0x48], edx
mov esi, dword [ebp - 0x54]
mov eax, dword [esi + eax*4]
mov byte [ebp - 0x39], al
mov byte [ebp - 0x3b], al

loc_fffc0cef:  ; not directly referenced
mov ebx, dword [ebp - 0x50]
mov eax, dword [ebp - 0x50]
mov esi, dword [ebp - 0x54]
add eax, dword [ebp - 0xbc]
lea ebx, [ebx + ebx - 1]
mov dword [ebp - 0xb0], ebx
lea eax, [esi + eax*4]
mov dword [ebp - 0x9c], eax

loc_fffc0d11:  ; not directly referenced
mov eax, dword [edi + 0x103f]
mov dword [ebp - 0x88], 0
mov dword [ebp - 0x70], 0
mov dword [eax + 0x4800], 4
jmp near loc_fffc123b  ; jmp 0xfffc123b

loc_fffc0d37:  ; not directly referenced
movzx esi, byte [ebp - 0x5a]
xor ebx, ebx
mov dword [ebp - 0x60], esi

loc_fffc0d40:  ; not directly referenced
mov esi, dword [ebp - 0x68]
bt esi, ebx
jae loc_fffc0dd6  ; jae 0xfffc0dd6
imul eax, ebx, 0x48
lea ecx, [ebx + 1]
mov edx, dword [ebp - 0x9c]
sar esi, cl
mov dword [ebp - 0x58], esi
mov esi, dword [ebp - 0xb0]
imul esi, dword [edx + eax]
cmp byte [ebp - 0x5a], 0xd
jne short loc_fffc0dc7  ; jne 0xfffc0dc7
push ecx
mov edx, 2
mov eax, edi
push ecx
xor ecx, ecx
push 0
push esi
call fcn_fffafeda  ; call 0xfffafeda
mov dword [esp], edi
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0x10
jmp short loc_fffc0de0  ; jmp 0xfffc0de0

loc_fffc0d8d:  ; not directly referenced
push 1
push dword [ebp - 0x58]
movzx eax, byte [ebp - 0x4c]
mov ecx, esi
push 0
mov edx, dword [ebp - 0x60]
push eax
mov eax, edi
push 0xff
push ebx
push 0
push dword [ebp - 0x70]
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20
cmp dword [ebp - 0xa0], 0
mov dword [ebp - 0x84], eax
jne short loc_fffc0dd6  ; jne 0xfffc0dd6
inc byte [ebp - 0x4c]
jmp short loc_fffc0dcb  ; jmp 0xfffc0dcb

loc_fffc0dc7:  ; not directly referenced
mov byte [ebp - 0x4c], 0

loc_fffc0dcb:  ; not directly referenced
mov cl, byte [ebp - 0x4c]
cmp cl, byte [edi + 0x1755]
jb short loc_fffc0d8d  ; jb 0xfffc0d8d

loc_fffc0dd6:  ; not directly referenced
inc ebx
cmp ebx, 2
jne loc_fffc0d40  ; jne 0xfffc0d40

loc_fffc0de0:  ; not directly referenced
push edx
xor eax, eax
cmp dword [ebp - 0x70], 0
push 0
sete al
mov edx, dword [ebp - 0x68]
push eax
movzx ecx, byte [edi + 0x1768]
lea eax, [ebp - 0x24]
push eax
mov eax, edi
call fcn_fffb21f3  ; call 0xfffb21f3
movzx eax, al
add esp, 0x10
or dword [ebp - 0x88], eax
cmp byte [ebp - 0x5c], 0
jne short loc_fffc0e34  ; jne 0xfffc0e34
mov ebx, dword [ebp - 0xc4]
cmp dword [ebp - 0x70], ebx
jae short loc_fffc0e3c  ; jae 0xfffc0e3c
movzx eax, byte [ebp - 0x98]
cmp dword [ebp - 0x88], eax
je loc_fffc124a  ; je 0xfffc124a
jmp short loc_fffc0e3c  ; jmp 0xfffc0e3c

loc_fffc0e34:  ; not directly referenced
mov ebx, dword [ebp - 0x7c]
mov dword [ebp - 0x60], ebx
jmp short loc_fffc0e42  ; jmp 0xfffc0e42

loc_fffc0e3c:  ; not directly referenced
mov esi, dword [ebp - 0x7c]
mov dword [ebp - 0x60], esi

loc_fffc0e42:  ; not directly referenced
xor ebx, ebx

loc_fffc0e44:  ; not directly referenced
mov dx, word [ebp + ebx*2 - 0x28]
mov al, bl
mov word [ebp - 0x78], dx
dec dx
jne short loc_fffc0e5e  ; jne 0xfffc0e5e
cmp byte [ebp + ebx - 0x40], 1
je loc_fffc1156  ; je 0xfffc1156

loc_fffc0e5e:  ; not directly referenced
mov esi, dword [ebp - 0x68]
bt esi, ebx
jae loc_fffc1156  ; jae 0xfffc1156
cmp dword [ebp - 0x6c], 0
mov dl, 0
cmove edx, eax
mov ecx, dword [ebp - 0x60]
mov byte [ebp - 0x59], dl
mov edx, ebx
shl edx, 0xa
mov eax, dword [edi + 0x103f]
mov ecx, dword [ecx]
mov byte [ebp - 0x4c], cl
mov dword [ebp - 0xb4], ecx
lea eax, [edx + eax + 0x4114]
mov cl, byte [ebp + ebx - 0x3e]
mov eax, dword [eax]
mov dl, byte [ebp - 0x4c]
sub edx, ecx
and eax, 0x7fffff
mov dword [ebp - 0x58], eax
jne loc_fffc0f5d  ; jne 0xfffc0f5d
movzx ecx, byte [ebp - 0x59]
mov al, byte [ebp - 0x4c]
cmp al, byte [ebp + ecx - 0x3c]
jne short loc_fffc0f1e  ; jne 0xfffc0f1e
test dl, dl
jns short loc_fffc0ee2  ; jns 0xfffc0ee2
cmp byte [ebp + ecx - 0x3a], al
jne short loc_fffc0ed2  ; jne 0xfffc0ed2

loc_fffc0ec6:  ; not directly referenced
mov dl, byte [ebp - 0x4c]
mov byte [ebp + ebx - 0x3e], dl
jmp near loc_fffc10d0  ; jmp 0xfffc10d0

loc_fffc0ed2:  ; not directly referenced
mov dword [ebp - 0x2c], 1

loc_fffc0ed9:  ; not directly referenced
mov eax, dword [ebp - 0x2c]
test eax, eax
jne short loc_fffc0ed9  ; jne 0xfffc0ed9
jmp short loc_fffc0ec6  ; jmp 0xfffc0ec6

loc_fffc0ee2:  ; not directly referenced
cmp dl, 1
jne short loc_fffc0f00  ; jne 0xfffc0f00
mov edx, dword [ebp + ebx*4 - 0x20]
mov cl, byte [ebp - 0xb4]
shr edx, 8
mov byte [ebx + ebp - 0x3e], cl
xor dh, dh
mov dword [ebp + ebx*4 - 0x20], edx
jmp short loc_fffc0f42  ; jmp 0xfffc0f42

loc_fffc0f00:  ; not directly referenced
xor eax, eax
cmp dl, 2
je loc_fffc0fb1  ; je 0xfffc0fb1
mov dword [ebp - 0x30], 1

loc_fffc0f12:  ; not directly referenced
mov eax, dword [ebp - 0x30]
test eax, eax
jne short loc_fffc0f12  ; jne 0xfffc0f12
jmp near loc_fffc10d0  ; jmp 0xfffc10d0

loc_fffc0f1e:  ; not directly referenced
mov al, byte [ebp - 0x4c]
cmp al, byte [ebp + ecx - 0x3a]
jne loc_fffc10c2  ; jne 0xfffc10c2
cmp word [ebp - 0x78], 1
je loc_fffc1156  ; je 0xfffc1156
inc dl
jne short loc_fffc0f4e  ; jne 0xfffc0f4e
and dword [ebp + ebx*4 - 0x20], 0xffffff00

loc_fffc0f42:  ; not directly referenced
mov word [ebp + ebx*2 - 0x28], 1
jmp near loc_fffc10d0  ; jmp 0xfffc10d0

loc_fffc0f4e:  ; not directly referenced
mov dl, byte [ebp - 0xb4]
mov byte [ebx + ebp - 0x3e], dl
jmp near loc_fffc10b9  ; jmp 0xfffc10b9

loc_fffc0f5d:  ; not directly referenced
movzx esi, byte [ebp - 0x59]
mov al, byte [ebp - 0x4c]
mov dword [ebp - 0x78], esi
cmp al, byte [ebp + esi - 0x3c]
jne short loc_fffc0fd3  ; jne 0xfffc0fd3
cmp dl, 2
jle short loc_fffc0f85  ; jle 0xfffc0f85
mov dword [ebp - 0x34], 1

loc_fffc0f79:  ; not directly referenced
mov eax, dword [ebp - 0x34]
test eax, eax
jne short loc_fffc0f79  ; jne 0xfffc0f79
jmp near loc_fffc10d0  ; jmp 0xfffc10d0

loc_fffc0f85:  ; not directly referenced
mov eax, dword [ebp - 0x58]
je short loc_fffc0fb1  ; je 0xfffc0fb1
call fcn_fffb2181  ; call 0xfffb2181
and eax, 0xff
mov edx, dword [ebp + ebx*4 - 0x20]
and edx, 0xff00ffff
mov byte [ebp + ebx - 0x40], 0
shl eax, 0x10
or eax, edx
mov dword [ebp + ebx*4 - 0x20], eax
jmp near loc_fffc10d0  ; jmp 0xfffc10d0

loc_fffc0fb1:  ; not directly referenced
call fcn_fffb2181  ; call 0xfffb2181
shl eax, 0x18
mov edx, dword [ebp + ebx*4 - 0x20]
and edx, 0xffffff
or eax, edx
mov dword [ebp + ebx*4 - 0x20], eax
mov byte [ebp + ebx - 0x40], 1
jmp near loc_fffc10d0  ; jmp 0xfffc10d0

loc_fffc0fd3:  ; not directly referenced
mov esi, dword [ebp - 0x78]
mov al, byte [ebp - 0x4c]
cmp al, byte [ebp + esi - 0x3a]
jne loc_fffc10c2  ; jne 0xfffc10c2
inc cl
je loc_fffc106c  ; je 0xfffc106c
test dl, dl
jg short loc_fffc106c  ; jg 0xfffc106c
mov eax, dword [ebp - 0x58]
mov byte [ebp - 0xc8], dl
call fcn_fffb2181  ; call 0xfffb2181
mov dl, byte [ebp - 0xc8]
mov cl, 0xf8
mov dword [ebp - 0xb4], eax
mov al, dl
imul eax, ecx
mov esi, dword [ebp + ebx*4 - 0x20]
mov byte [ebp - 0x5b], al
add eax, 0x27
xor ecx, ecx
cmp al, 0x3e
mov dword [ebp - 0xb8], esi
ja short loc_fffc105e  ; ja 0xfffc105e
lea ecx, [edx*8 + 8]
movzx eax, byte [ebp - 0xb4]
mov esi, 0xff
shl esi, cl
shl eax, cl
mov cl, byte [ebp - 0x5b]
not esi
add ecx, 8
and esi, dword [ebp - 0xb8]
or eax, esi
test cl, cl
jle short loc_fffc1055  ; jle 0xfffc1055
shl eax, cl
jmp short loc_fffc105c  ; jmp 0xfffc105c

loc_fffc1055:  ; not directly referenced
movsx ecx, cl
neg ecx
shr eax, cl

loc_fffc105c:  ; not directly referenced
mov ecx, eax

loc_fffc105e:  ; not directly referenced
mov al, byte [ebp - 0x4c]
mov dword [ebp + ebx*4 - 0x20], ecx
dec eax
mov byte [ebp + ebx - 0x3e], al
jmp short loc_fffc10a0  ; jmp 0xfffc10a0

loc_fffc106c:  ; not directly referenced
mov esi, dword [ebp + ebx*4 - 0x20]
mov eax, dword [ebp - 0x58]
mov byte [ebp - 0xc8], dl
call fcn_fffb2181  ; call 0xfffb2181
mov ecx, esi
and esi, 0xff0000
shr esi, 8
and ecx, 0xffff
add esi, eax
shl esi, 0x10
or esi, ecx
mov dword [ebp + ebx*4 - 0x20], esi
mov dl, byte [ebp - 0xc8]

loc_fffc10a0:  ; not directly referenced
mov ecx, dword [ebp - 0x78]
mov esi, dword [ebp - 0x78]
mov cl, byte [ebp + ecx - 0x3c]
cmp byte [ebp + esi - 0x3a], cl
jae short loc_fffc10b5  ; jae 0xfffc10b5
mov byte [ebp + ebx - 0x40], 1

loc_fffc10b5:  ; not directly referenced
test dl, dl
jg short loc_fffc10d0  ; jg 0xfffc10d0

loc_fffc10b9:  ; not directly referenced
mov word [ebp + ebx*2 - 0x28], 0
jmp short loc_fffc10d0  ; jmp 0xfffc10d0

loc_fffc10c2:  ; not directly referenced
mov dword [ebp - 0x38], 1

loc_fffc10c9:  ; not directly referenced
mov eax, dword [ebp - 0x38]
test eax, eax
jne short loc_fffc10c9  ; jne 0xfffc10c9

loc_fffc10d0:  ; not directly referenced
mov al, byte [ebp + ebx - 0x42]
cmp byte [ebp - 0x4c], al
jne short loc_fffc10de  ; jne 0xfffc10de
mov byte [ebp + ebx - 0x40], 1

loc_fffc10de:  ; not directly referenced
cmp dword [ebp - 0x58], 0
jne short loc_fffc10f9  ; jne 0xfffc10f9
cmp al, byte [ebp + ebx - 0x3e]
jne short loc_fffc10f9  ; jne 0xfffc10f9
cmp word [ebp + ebx*2 - 0x28], 1
jne short loc_fffc10f9  ; jne 0xfffc10f9
mov word [ebp + ebx*4 - 0x1e], 0xfffe

loc_fffc10f9:  ; not directly referenced
cmp byte [ebp - 0x4c], 0
jne short loc_fffc111d  ; jne 0xfffc111d
cmp dword [ebp - 0x58], 0
mov word [ebp + ebx*2 - 0x28], 1
je short loc_fffc111d  ; je 0xfffc111d
mov byte [ebp + ebx - 0x40], 1
mov byte [ebp + ebx - 0x3e], 0
mov word [ebp + ebx*4 - 0x1e], 0x707

loc_fffc111d:  ; not directly referenced
cmp dword [ebp - 0x6c], 0
jne short loc_fffc1156  ; jne 0xfffc1156
cmp word [ebp + ebx*2 - 0x28], 1
jne short loc_fffc1145  ; jne 0xfffc1145
cmp byte [ebp + ebx - 0x40], 1
je short loc_fffc1156  ; je 0xfffc1156
mov esi, dword [ebp - 0x60]
mov al, byte [ebp + ebx - 0x3c]
inc eax
mov byte [ebp + ebx - 0x3c], al
movzx eax, al
mov dword [esi], eax
jmp short loc_fffc1156  ; jmp 0xfffc1156

loc_fffc1145:  ; not directly referenced
mov edx, dword [ebp - 0x60]
mov al, byte [ebp + ebx - 0x3a]
dec eax
mov byte [ebp + ebx - 0x3a], al
movzx eax, al
mov dword [edx], eax

loc_fffc1156:  ; not directly referenced
inc ebx
add dword [ebp - 0x60], 0x48
cmp ebx, 2
jne loc_fffc0e44  ; jne 0xfffc0e44
cmp dword [ebp - 0x6c], 0
jne short loc_fffc1172  ; jne 0xfffc1172

loc_fffc116a:  ; not directly referenced
inc dword [ebp - 0x70]
jmp near loc_fffc123b  ; jmp 0xfffc123b

loc_fffc1172:  ; not directly referenced
cmp word [ebp - 0x28], 1
jne short loc_fffc11e9  ; jne 0xfffc11e9
cmp word [ebp - 0x26], 1
jne short loc_fffc11e9  ; jne 0xfffc11e9
cmp byte [ebp - 0x40], 1
jne short loc_fffc118c  ; jne 0xfffc118c
cmp byte [ebp - 0x3f], 1
je short loc_fffc116a  ; je 0xfffc116a

loc_fffc118c:  ; not directly referenced
movzx eax, byte [ebp - 0x59]
mov ebx, dword [ebp - 0x54]
imul ecx, dword [ebp - 0x64], 0x24
mov dl, byte [ebp + eax - 0x3c]
inc edx
mov byte [ebp + eax - 0x3c], dl
imul eax, eax, 0x12
movzx edx, dl
add eax, ecx
add eax, dword [ebp - 0x50]
mov dword [ebx + eax*4], edx

loc_fffc11ae:  ; not directly referenced
cmp dword [ebp - 0xa4], 0
je short loc_fffc11e1  ; je 0xfffc11e1
movzx eax, byte [ebp - 0x59]
mov esi, dword [ebp - 0x54]
imul edx, eax, 0x12
imul ecx, dword [ebp - 0x64], 0x24
mov ebx, dword [ebp - 0x74]
add edx, ecx
add edx, dword [ebp - 0x50]
mov edx, dword [esi + edx*4]
mov dword [ebx - 0x48], edx
mov dl, byte [ebp + eax - 0x3a]
mov al, byte [ebp + eax - 0x3c]
mov byte [ebp - 0x3a], dl
mov byte [ebp - 0x3c], al

loc_fffc11e1:  ; not directly referenced
cmp dword [ebp - 0x80], 0
je short loc_fffc116a  ; je 0xfffc116a
jmp short loc_fffc120d  ; jmp 0xfffc120d

loc_fffc11e9:  ; not directly referenced
movzx eax, byte [ebp - 0x59]
mov esi, dword [ebp - 0x54]
imul ecx, dword [ebp - 0x64], 0x24
mov dl, byte [ebp + eax - 0x3a]
dec edx
mov byte [ebp + eax - 0x3a], dl
imul eax, eax, 0x12
movzx edx, dl
add eax, ecx
add eax, dword [ebp - 0x50]
mov dword [esi + eax*4], edx
jmp short loc_fffc11ae  ; jmp 0xfffc11ae

loc_fffc120d:  ; not directly referenced
movzx eax, byte [ebp - 0x59]
mov ebx, dword [ebp - 0x54]
imul edx, eax, 0x12
imul ecx, dword [ebp - 0x64], 0x24
mov esi, dword [ebp - 0x74]
add edx, ecx
add edx, dword [ebp - 0x50]
mov edx, dword [ebx + edx*4]
mov dword [esi], edx
mov dl, byte [ebp + eax - 0x3a]
mov al, byte [ebp + eax - 0x3c]
mov byte [ebp - 0x39], dl
mov byte [ebp - 0x3b], al
jmp near loc_fffc116a  ; jmp 0xfffc116a

loc_fffc123b:  ; not directly referenced
mov ebx, dword [ebp - 0xac]
cmp dword [ebp - 0x70], ebx
jb loc_fffc0d37  ; jb 0xfffc0d37

loc_fffc124a:  ; not directly referenced
cmp word [ebp - 0x28], 0
je loc_fffc0d11  ; je 0xfffc0d11
cmp byte [ebp - 0x40], 0
je loc_fffc0d11  ; je 0xfffc0d11
cmp word [ebp - 0x26], 0
je loc_fffc0d11  ; je 0xfffc0d11
cmp byte [ebp - 0x3f], 0
je loc_fffc0d11  ; je 0xfffc0d11
xor ebx, ebx

loc_fffc1276:  ; not directly referenced
mov esi, dword [ebp - 0x68]
bt esi, ebx
jae short loc_fffc12cb  ; jae 0xfffc12cb
cmp byte [ebp - 0x5c], 0
je short loc_fffc12b7  ; je 0xfffc12b7
mov edx, dword [ebp + ebx*4 - 0x20]
sub esp, 0xc
mov ecx, edx
push dword [ebp + 0x18]
shr edx, 0x10
shr ecx, 0x18
and edx, 0xff
movzx eax, byte [ebp + ebx - 0x3e]
call fcn_fffc8bf1  ; call 0xfffc8bf1
imul edx, ebx, 0x48
mov esi, dword [ebp - 0x9c]
add esp, 0x10
mov dword [esi + edx], eax
jmp short loc_fffc12cb  ; jmp 0xfffc12cb

loc_fffc12b7:  ; not directly referenced
imul eax, ebx, 0x48
mov esi, dword [ebp - 0x9c]
movzx edx, byte [ebp + ebx - 0x3e]
imul edx, edx, 0xa
mov dword [esi + eax], edx

loc_fffc12cb:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc1276  ; jne 0xfffc1276
inc dword [ebp - 0x50]
add dword [ebp - 0x74], 4
cmp dword [ebp - 0x50], 2
jne loc_fffc0b5a  ; jne 0xfffc0b5a
cmp byte [ebp - 0x5a], 0xd
jne short loc_fffc1301  ; jne 0xfffc1301
push eax
xor ecx, ecx
mov edx, 2
push eax
mov eax, edi
push 0
push 0
call fcn_fffafeda  ; call 0xfffafeda
add esp, 0x10
jmp short loc_fffc1327  ; jmp 0xfffc1327

loc_fffc1301:  ; not directly referenced
push 2
movzx edx, byte [ebp - 0x5a]
xor ecx, ecx
push 0
mov eax, edi
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
mov dword [ebp - 0x84], eax
add esp, 0x20

loc_fffc1327:  ; not directly referenced
mov eax, dword [edi + 0x103f]
mov dword [eax + 0x4cf0], 0
mov eax, dword [ebp - 0x84]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc1345:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x44]
mov esi, ref_fffcbe94  ; mov esi, 0xfffcbe94
push ebx
mov ebx, eax
mov eax, ecx
lea esp, [esp - 0x4c]
mov ecx, 0xb
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
push 0
lea ecx, [ebp - 0x4f]
mov esi, eax
push 0
mov word [ebp - 0x4f], 4
mov dword [ebp - 0x4d], 0
push 1
mov dword [ebp - 0x49], 9
mov byte [ebp - 0x45], 2
push ecx
movzx ecx, byte [ebp + 8]
push ecx
lea ecx, [ebp - 0x44]
push ecx
xor ecx, ecx
push eax
mov eax, ebx
push 0x80
call fcn_fffb2650  ; call 0xfffb2650
lea edx, [esi - 4]
add esp, 0x20
test dl, dl
mov al, 1
mov byte [ebx + 0x1768], 2
cmovg eax, edx
mov byte [ebx + 0x1769], al
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc13c0:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
lea esp, [esp - 0x8c]
mov al, byte [ebp + 8]
mov byte [ebp - 0x70], dl
mov byte [ebp - 0x61], cl
mov dl, byte [ebp + 0xc]
mov cl, byte [ebp + 0x10]
mov byte [ebp - 0x62], al
mov al, byte [ebp + 0x14]
mov byte [ebp - 0x63], dl
mov byte [ebp - 0x6c], cl
mov byte [ebp - 0x64], al
mov ecx, 1
mov edx, 7
lea eax, [ebp - 0x4f]
call mrc_setmem
movsx si, byte [ebp - 0x6c]
cmp dword [edi + 0x1749], 2
mov word [ebp - 0x78], si
setne bl
mov word [ebp - 0x68], si
movzx esi, byte [ebp - 0x61]
mov dword [ebp - 0x74], esi
sar esi, 1
lea ebx, [ebx*4 + 2]
mov dword [ebp - 0x90], esi
jmp near loc_fffc1608  ; jmp 0xfffc1608

loc_fffc1431:  ; not directly referenced
push 0
movzx eax, byte [ebp - 0x63]
mov edx, 1
push esi
movzx ecx, byte [ebp - 0x70]
push eax
mov al, byte [ebp - 0x62]
and al, byte [edi + 0x4e12]
movzx eax, al
push eax
mov eax, edi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc1459:  ; not directly referenced
sub esp, 0xc
push edi
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0x10
cmp dword [ebp + 0x20], 0
je short loc_fffc148d  ; je 0xfffc148d
push eax
lea eax, [ebp - 0x4f]
mov edx, dword [ebp - 0x74]
push 0
movzx ecx, byte [edi + 0x1768]
push 1
push eax
mov eax, edi
call fcn_fffb21f3  ; call 0xfffb21f3
mov byte [ebp - 0x5c], al
add esp, 0x10
jmp short loc_fffc14e8  ; jmp 0xfffc14e8

loc_fffc148d:  ; not directly referenced
mov dword [ebp - 0x60], 0
mov byte [ebp - 0x5c], 0

loc_fffc1498:  ; not directly referenced
push eax
mov ecx, dword [ebp + 0x18]
mov edx, dword [ebp - 0x60]
push eax
push 0
movsx eax, byte [ecx + edx]
xor ecx, ecx
push eax
mov edx, 2
mov eax, edi
call fcn_fffafeda  ; call 0xfffafeda
add esp, 0xc
lea eax, [ebp - 0x4f]
push 0
movzx ecx, byte [edi + 0x1768]
mov edx, dword [ebp - 0x74]
push 1
push eax
mov eax, edi
call fcn_fffb21f3  ; call 0xfffb21f3
add esp, 0x10
or byte [ebp - 0x5c], al
mov dl, byte [ebp - 0x61]
cmp byte [ebp - 0x5c], dl
je short loc_fffc14e8  ; je 0xfffc14e8
inc dword [ebp - 0x60]
cmp dword [ebp - 0x60], 2
jne short loc_fffc1498  ; jne 0xfffc1498

loc_fffc14e8:  ; not directly referenced
movzx eax, bl
mov edx, esi
sub edx, eax
mov dword [ebp - 0x60], eax
mov al, byte [ebp - 0x64]
xor ecx, ecx
sub eax, ebx
mov dword [ebp - 0x84], edx
movzx eax, al
mov dword [ebp - 0x8c], eax
movsx eax, byte [ebp - 0x6c]

loc_fffc150c:  ; not directly referenced
mov edx, 1
shl edx, cl
test byte [ebp - 0x61], dl
je loc_fffc15f7  ; je 0xfffc15f7
test byte [ebp - 0x5c], dl
sete dl
movzx edx, dl
mov dword [ebp - 0x7c], edx
mov edx, dword [ebp - 0x78]
cmp word [ebp - 0x68], dx
jne short loc_fffc1576  ; jne 0xfffc1576
cmp dword [ebp - 0x7c], 0
je short loc_fffc1554  ; je 0xfffc1554
mov dword [ebp + ecx*4 - 0x20], eax
mov dword [ebp + ecx*4 - 0x28], eax
mov dword [ebp + ecx*4 - 0x30], eax
mov dword [ebp + ecx*4 - 0x38], eax
mov dword [ebp + ecx*4 - 0x40], eax
mov dword [ebp + ecx*4 - 0x48], eax
jmp near loc_fffc15f7  ; jmp 0xfffc15f7

loc_fffc1554:  ; not directly referenced
mov edx, eax
sub edx, dword [ebp - 0x60]
mov dword [ebp + ecx*4 - 0x20], edx
mov dword [ebp + ecx*4 - 0x28], edx
mov dword [ebp + ecx*4 - 0x30], edx
mov dword [ebp + ecx*4 - 0x38], edx
mov dword [ebp + ecx*4 - 0x40], edx
mov dword [ebp + ecx*4 - 0x48], edx
jmp near loc_fffc15f7  ; jmp 0xfffc15f7

loc_fffc1576:  ; not directly referenced
cmp dword [ebp - 0x7c], 0
je short loc_fffc15f7  ; je 0xfffc15f7
mov edx, dword [ebp - 0x84]
cmp dword [ebp + ecx*4 - 0x40], edx
jne short loc_fffc158c  ; jne 0xfffc158c
mov dword [ebp + ecx*4 - 0x40], esi

loc_fffc158c:  ; not directly referenced
mov edx, dword [ebp - 0x84]
cmp dword [ebp + ecx*4 - 0x30], edx
mov dword [ebp + ecx*4 - 0x30], esi
jne short loc_fffc159e  ; jne 0xfffc159e
jmp short loc_fffc15a2  ; jmp 0xfffc15a2

loc_fffc159e:  ; not directly referenced
mov dword [ebp + ecx*4 - 0x38], esi

loc_fffc15a2:  ; not directly referenced
cmp esi, dword [ebp - 0x8c]
jl short loc_fffc15bf  ; jl 0xfffc15bf
cmp dword [ebp + ecx*4 - 0x48], eax
jne short loc_fffc15bf  ; jne 0xfffc15bf
mov edx, dword [ebp + ecx*4 - 0x40]
sub edx, eax
add edx, dword [ebp - 0x60]
add edx, esi
mov dword [ebp + ecx*4 - 0x30], edx

loc_fffc15bf:  ; not directly referenced
mov edx, dword [ebp + ecx*4 - 0x30]
mov dword [ebp - 0x7c], edx
mov edx, dword [ebp + ecx*4 - 0x38]
mov dword [ebp - 0x80], edx
mov edx, dword [ebp - 0x7c]
sub edx, dword [ebp - 0x80]
mov dword [ebp - 0x88], edx
mov edx, dword [ebp + ecx*4 - 0x20]
sub edx, dword [ebp + ecx*4 - 0x28]
cmp dword [ebp - 0x88], edx
jle short loc_fffc15f7  ; jle 0xfffc15f7
mov edx, dword [ebp - 0x80]
mov dword [ebp + ecx*4 - 0x28], edx
mov edx, dword [ebp - 0x7c]
mov dword [ebp + ecx*4 - 0x20], edx

loc_fffc15f7:  ; not directly referenced
inc ecx
cmp ecx, 2
jne loc_fffc150c  ; jne 0xfffc150c
movzx eax, bl
add word [ebp - 0x68], ax

loc_fffc1608:  ; not directly referenced
movzx ecx, byte [ebp - 0x64]
movsx esi, word [ebp - 0x68]
mov dword [ebp - 0x60], ecx
cmp esi, ecx
jg short loc_fffc1654  ; jg 0xfffc1654
test byte [ebp - 0x61], 1
je short loc_fffc1642  ; je 0xfffc1642
push 0
movzx eax, byte [ebp - 0x63]
xor edx, edx
push esi
movzx ecx, byte [ebp - 0x70]
push eax
mov al, byte [ebp - 0x62]
and al, byte [edi + 0x3acb]
movzx eax, al
push eax
mov eax, edi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc1642:  ; not directly referenced
test byte [ebp - 0x90], 1
je loc_fffc1459  ; je 0xfffc1459
jmp near loc_fffc1431  ; jmp 0xfffc1431

loc_fffc1654:  ; not directly referenced
movzx eax, bl
mov ecx, 2
movsx esi, byte [ebp - 0x6c]
lea eax, [eax + eax*2]
mov dword [ebp - 0x74], eax
mov eax, dword [ebp - 0x60]
add eax, esi
mov dword [ebp - 0x68], esi
cdq
xor ebx, ebx
idiv ecx
movzx esi, byte [ebp - 0x61]
mov dword [ebp - 0x78], esi
movzx esi, byte [ebp - 0x70]
mov dword [ebp - 0x70], esi
mov dword [ebp - 0x6c], eax

loc_fffc1684:  ; not directly referenced
mov esi, dword [ebp - 0x78]
bt esi, ebx
jb short loc_fffc1698  ; jb 0xfffc1698

loc_fffc168c:  ; not directly referenced
inc ebx
cmp ebx, 2
je loc_fffc174d  ; je 0xfffc174d
jmp short loc_fffc1684  ; jmp 0xfffc1684

loc_fffc1698:  ; not directly referenced
mov esi, dword [ebp + ebx*4 - 0x20]
mov eax, dword [ebp + ebx*4 - 0x28]
mov edx, esi
mov dword [ebp - 0x5c], eax
sub edx, eax
cmp edx, dword [ebp - 0x74]
mov eax, dword [ebp - 0x6c]
jl short loc_fffc16c6  ; jl 0xfffc16c6
mov ecx, dword [ebp - 0x60]
sub ecx, dword [ebp - 0x68]
cmp edx, ecx
jge short loc_fffc16c6  ; jge 0xfffc16c6
mov eax, dword [ebp - 0x5c]
mov ecx, 2
add eax, esi
cdq
idiv ecx

loc_fffc16c6:  ; not directly referenced
imul edx, ebx, 0x1347
mov cl, byte [ebp - 0x62]
and cl, byte [edi + edx + 0x3acb]
cmp dword [ebp + 0x1c], 0
mov byte [ebp - 0x61], cl
jne short loc_fffc16fa  ; jne 0xfffc16fa
push 1
mov edx, ebx
push eax
movzx eax, byte [ebp - 0x63]
push eax
movzx eax, cl
mov ecx, dword [ebp - 0x70]
push eax
mov eax, edi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc16fa:  ; not directly referenced
mov eax, dword [ebp - 0x5c]
mov edx, dword [ebp - 0x5c]
sar eax, 0x1f
movzx ecx, byte [ebp - 0x61]
xor edx, eax
sub edx, eax
mov eax, esi
sar eax, 0x1f
xor esi, eax
sub esi, eax
imul eax, ebx, 0x48
imul edx, edx, 0xa
imul esi, esi, 0xa
mov dword [ebp - 0x5c], edx
mov dword [ebp - 0x7c], esi
lea edx, [edi + eax + 0x24f4]
xor eax, eax

loc_fffc172c:  ; not directly referenced
bt ecx, eax
jae short loc_fffc173c  ; jae 0xfffc173c
mov esi, dword [ebp - 0x5c]
mov dword [edx], esi
mov esi, dword [ebp - 0x7c]
mov dword [edx + 4], esi

loc_fffc173c:  ; not directly referenced
inc eax
add edx, 0x90
cmp eax, 4
jne short loc_fffc172c  ; jne 0xfffc172c
jmp near loc_fffc168c  ; jmp 0xfffc168c

loc_fffc174d:  ; not directly referenced
cmp dword [ebp + 0x20], 0
jne short loc_fffc176a  ; jne 0xfffc176a
push eax
xor ecx, ecx
mov edx, 2
push eax
mov eax, edi
push 0
push 0
call fcn_fffafeda  ; call 0xfffafeda
add esp, 0x10

loc_fffc176a:  ; not directly referenced
sub esp, 0xc
push edi
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0x10
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc177e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
mov esi, ecx
push ebx
xor ebx, ebx
lea esp, [esp - 0x2c]
mov al, byte [ebp + 8]
mov ecx, dword [ebp + 0xc]
mov byte [ebp - 0x37], al
mov eax, dword [ebp + 0x10]
mov byte [ebp - 0x2c], dl
mov word [ebp - 0x2e], cx
mov word [ebp - 0x30], ax
mov ecx, 1
mov edx, 7
lea eax, [ebp - 0x27]
mov dword [ebp - 0x1c], 0
mov dword [ebp - 0x20], 0
call mrc_setmem
mov ecx, esi
mov eax, esi
and ecx, 1
and eax, 2
mov byte [ebp - 0x36], cl
mov ecx, esi
movzx esi, cl
mov byte [ebp - 0x35], al
movzx eax, byte [ebp - 0x2c]
mov dword [ebp - 0x34], esi
mov dword [ebp - 0x2c], eax
jmp near loc_fffc18b6  ; jmp 0xfffc18b6

loc_fffc17e9:  ; not directly referenced
mov ecx, dword [ebp - 0x34]
bt ecx, esi
jae short loc_fffc1814  ; jae 0xfffc1814
cmp dword [ebp + esi*4 - 0x20], 0
jne short loc_fffc1814  ; jne 0xfffc1814
push 0
movsx eax, bx
mov ecx, dword [ebp - 0x2c]
push eax
movzx eax, byte [ebp - 0x37]
mov edx, esi
push 3
push eax
mov eax, edi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc1814:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffc17e9  ; jne 0xfffc17e9
sub esp, 0xc
push edi
call fcn_fffbd7da  ; call 0xfffbd7da
add esp, 0xc
lea eax, [ebp - 0x27]
push 0
movzx ecx, byte [edi + 0x1768]
mov edx, dword [ebp - 0x34]
push 1
push eax
mov eax, edi
call fcn_fffb21f3  ; call 0xfffb21f3
mov dl, bl
add esp, 0x10
neg edx
test bx, bx
cmovns edx, ebx
cmp byte [ebp - 0x36], 0
je short loc_fffc186a  ; je 0xfffc186a
cmp dword [ebp - 0x20], 0
jne short loc_fffc186a  ; jne 0xfffc186a
test al, 1
je short loc_fffc1865  ; je 0xfffc1865
mov dword [ebp - 0x20], 1
jmp short loc_fffc186a  ; jmp 0xfffc186a

loc_fffc1865:  ; not directly referenced
mov ecx, dword [ebp + 0x14]
mov byte [ecx], dl

loc_fffc186a:  ; not directly referenced
cmp byte [ebp - 0x35], 0
je short loc_fffc1889  ; je 0xfffc1889
cmp dword [ebp - 0x1c], 0
jne short loc_fffc1889  ; jne 0xfffc1889
test al, 2
jne short loc_fffc1882  ; jne 0xfffc1882
mov eax, dword [ebp + 0x14]
mov byte [eax + 1], dl
jmp short loc_fffc1889  ; jmp 0xfffc1889

loc_fffc1882:  ; not directly referenced
mov dword [ebp - 0x1c], 1

loc_fffc1889:  ; not directly referenced
add ebx, dword [ebp - 0x30]
cmp word [ebp - 0x30], 0
jle short loc_fffc189c  ; jle 0xfffc189c
cmp bx, word [ebp - 0x2e]
setg al
jmp short loc_fffc18a3  ; jmp 0xfffc18a3

loc_fffc189c:  ; not directly referenced
cmp bx, word [ebp - 0x2e]
setl al

loc_fffc18a3:  ; not directly referenced
movzx eax, al
cmp dword [ebp - 0x20], 0
je short loc_fffc18b2  ; je 0xfffc18b2
cmp dword [ebp - 0x1c], 0
jne short loc_fffc18bd  ; jne 0xfffc18bd

loc_fffc18b2:  ; not directly referenced
test eax, eax
jne short loc_fffc18bd  ; jne 0xfffc18bd

loc_fffc18b6:  ; not directly referenced
xor esi, esi
jmp near loc_fffc17e9  ; jmp 0xfffc17e9

loc_fffc18bd:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffc18c5:
db 0x00
db 0x00
db 0x00

loc_fffc23aa:
db 0x00
db 0x00

fcn_fffc23ac:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x57c]
mov bl, byte [ebp + 0x10]
cmp byte [eax + 0x1768], 1
mov dword [ebp - 0x514], eax
mov byte [ebp - 0x561], dl
mov byte [ebp - 0x50c], cl
mov byte [ebp - 0x50a], bl
jne short loc_fffc2403  ; jne 0xfffc2403
mov al, byte [eax + 0x1769]
mov byte [ebp - 0x508], al
mov byte [ebp - 0x507], al
lea edx, [eax + 4]
add eax, 2
mov byte [ebp - 0x506], dl
mov byte [ebp - 0x505], al
jmp short loc_fffc241f  ; jmp 0xfffc241f

loc_fffc2403:  ; not directly referenced
mov byte [ebp - 0x508], 1
mov byte [ebp - 0x507], 1
mov byte [ebp - 0x506], 1
mov byte [ebp - 0x505], 1

loc_fffc241f:  ; not directly referenced
mov al, byte [ebp - 0x50a]
shr al, 4
cmp byte [ebp - 0x50a], 9
lea ecx, [eax + 1]
mov byte [ebp - 0x509], cl
je short loc_fffc2462  ; je 0xfffc2462
cmp byte [ebp - 0x50a], 8
je short loc_fffc2472  ; je 0xfffc2472
cmp byte [ebp - 0x50a], 0xa
sete byte [ebp - 0x50b]
mov bl, byte [ebp - 0x50b]
shl ebx, 2
mov byte [ebp - 0x54d], bl
jmp short loc_fffc2480  ; jmp 0xfffc2480

loc_fffc2462:  ; not directly referenced
mov byte [ebp - 0x50b], 1
mov byte [ebp - 0x54d], 1
jmp short loc_fffc2480  ; jmp 0xfffc2480

loc_fffc2472:  ; not directly referenced
mov byte [ebp - 0x50b], 1
mov byte [ebp - 0x54d], 2

loc_fffc2480:  ; not directly referenced
cmp byte [ebp - 0x50a], 0x21
sete dl
cmp byte [ebp - 0x50a], 0x11
sete al
or dl, al
jne short loc_fffc24ab  ; jne 0xfffc24ab
cmp byte [ebp - 0x50a], 5
mov dword [ebp - 0x54c], 0
jne short loc_fffc24bd  ; jne 0xfffc24bd

loc_fffc24ab:  ; not directly referenced
mov al, byte [ebp - 0x50b]
xor eax, 1
movzx eax, al
mov dword [ebp - 0x54c], eax

loc_fffc24bd:  ; not directly referenced
lea esi, [ebp - 0x4e0]
mov ebx, dword [ebp + 0xc]
mov dword [ebp - 0x524], esi
mov dword [ebp - 0x51c], ebx
movzx esi, byte [ebp - 0x561]
xor edi, edi
mov dword [ebp - 0x528], esi

loc_fffc24e1:  ; not directly referenced
mov ebx, dword [ebp - 0x528]
bt ebx, edi
jb short loc_fffc2502  ; jb 0xfffc2502

loc_fffc24ec:  ; not directly referenced
inc edi
add dword [ebp - 0x51c], 0x48
add dword [ebp - 0x524], 0x24
cmp edi, 2
je short loc_fffc254b  ; je 0xfffc254b
jmp short loc_fffc24e1  ; jmp 0xfffc24e1

loc_fffc2502:  ; not directly referenced
mov ecx, dword [ebp - 0x514]
mov esi, dword [ebp - 0x51c]
mov cl, byte [ecx + 0x1755]
mov byte [ebp - 0x510], cl
xor ecx, ecx
jmp short loc_fffc2541  ; jmp 0xfffc2541

loc_fffc251e:  ; not directly referenced
mov edx, dword [esi]
mov eax, dword [esi + 4]
add eax, edx
mov ebx, 0x14
xor edx, edx
mov dword [ebp - 0x518], eax
div ebx
mov ebx, dword [ebp - 0x524]
add esi, 8
mov dword [ebx + ecx*4], eax
inc ecx

loc_fffc2541:  ; not directly referenced
cmp byte [ebp - 0x510], cl
ja short loc_fffc251e  ; ja 0xfffc251e
jmp short loc_fffc24ec  ; jmp 0xfffc24ec

loc_fffc254b:  ; not directly referenced
mov esi, dword [ebp - 0x528]
mov dword [ebp - 0x51c], 0
movzx ebx, byte [ebp - 0x509]
sar esi, 1
mov dword [ebp - 0x568], ebx
movzx eax, byte [ebp - 0x50b]
and esi, 1
shl eax, 2
dec ebx
mov dword [ebp - 0x55c], esi
mov dword [ebp - 0x560], eax
mov dword [ebp - 0x578], ebx

loc_fffc258a:  ; not directly referenced
mov ebx, dword [ebp - 0x51c]
mov esi, dword [ebp + 8]
mov dword [ebp - 0x538], esi
mov dword [ebp - 0x510], esi
xor esi, esi
lea ebx, [ebx + ebx - 1]
mov dword [ebp - 0x558], ebx
movzx ebx, byte [ebp - 0x54d]
mov dword [ebp - 0x530], ebx
movzx ebx, byte [ebp - 0x50c]
mov dword [ebp - 0x534], ebx

loc_fffc25c5:  ; not directly referenced
mov ebx, dword [ebp - 0x528]
bt ebx, esi
jae short loc_fffc25fd  ; jae 0xfffc25fd
lea ebx, [esi + esi*8]
lea eax, [ebp - 0x18]
add eax, ebx
mov dword [ebp - 0x518], ebx
mov byte [ebp - 0x520], 0x7f
mov byte [ebp - 0x509], 0
mov dword [ebp - 0x524], ebx
mov dword [ebp - 0x548], eax
jmp near loc_fffc27a5  ; jmp 0xfffc27a5

loc_fffc25fd:  ; not directly referenced
inc esi
add dword [ebp - 0x510], 0x240
cmp esi, 2
jne short loc_fffc25c5  ; jne 0xfffc25c5
jmp near loc_fffc27c2  ; jmp 0xfffc27c2

loc_fffc2612:  ; not directly referenced
movzx ebx, byte [ebp - 0x509]
mov edx, dword [ebp - 0x524]
add edx, ebx
mov eax, dword [ebp - 0x548]
add eax, ebx
mov ecx, dword [ebp + edx*4 - 0x4e0]
shl edx, 5
mov byte [eax - 0x4da], 0
mov byte [eax - 0x4ec], 0
lea eax, [ecx - 2]
mov dword [ebp + edx - 0x498], eax
mov dl, byte [ebp - 0x50a]
sub edx, 8
cmp dl, 1
ja short loc_fffc2664  ; ja 0xfffc2664
mov ecx, dword [ebp - 0x558]
imul ecx, eax
jmp short loc_fffc2677  ; jmp 0xfffc2677

loc_fffc2664:  ; not directly referenced
cmp byte [ebp - 0x50a], 0xa
jne short loc_fffc269d  ; jne 0xfffc269d
add ecx, 2
imul ecx, dword [ebp - 0x558]

loc_fffc2677:  ; not directly referenced
push 1
mov edx, dword [ebp - 0x530]
mov eax, dword [ebp - 0x514]
push 0
push 0
push ebx
push dword [ebp - 0x534]
push esi
push 0
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffc269d:  ; not directly referenced
cmp byte [ebp - 0x50b], 0
jne short loc_fffc26b4  ; jne 0xfffc26b4

loc_fffc26a6:  ; not directly referenced
cmp dword [ebp - 0x54c], 0
jne short loc_fffc2708  ; jne 0xfffc2708
jmp near loc_fffc273a  ; jmp 0xfffc273a

loc_fffc26b4:  ; not directly referenced
movzx eax, byte [ebp - 0x509]
mov ecx, dword [ebp - 0x510]
mov edx, eax
add eax, dword [ebp - 0x518]
shl edx, 4
add edx, dword [ebp - 0x51c]
shl eax, 5
lea edi, [ecx + edx*4]
lea eax, [ebp + eax - 0x498]
mov dword [ebp - 0x52c], eax
xor eax, eax

loc_fffc26e7:  ; not directly referenced
mov edx, dword [edi + eax*2]
mov ecx, 0xf
cmp edx, 0xf
cmova edx, ecx
mov ecx, dword [ebp - 0x52c]
mov dword [ecx + eax], edx
add eax, 4
cmp eax, 0x20
jne short loc_fffc26e7  ; jne 0xfffc26e7
jmp short loc_fffc26a6  ; jmp 0xfffc26a6

loc_fffc2708:  ; not directly referenced
movzx edx, byte [ebp - 0x520]
add ebx, dword [ebp - 0x524]
shl ebx, 5
mov eax, dword [ebp + ebx - 0x498]
cmp eax, edx
mov dl, byte [ebp - 0x520]
cmovb edx, eax
movzx eax, dl
mov byte [ebp - 0x520], dl
mov dword [ebp + ebx - 0x498], eax

loc_fffc273a:  ; not directly referenced
movzx eax, byte [ebp - 0x509]
mov edx, dword [ebp - 0x518]
add edx, eax
mov ebx, dword [ebp - 0x510]
shl edx, 5
shl eax, 4
add eax, dword [ebp - 0x51c]
lea edi, [ebp + edx - 0x498]
lea edx, [ebp + edx - 0x258]
lea eax, [ebx + eax*4]
mov dword [ebp - 0x52c], edx
mov dword [ebp - 0x554], eax
xor edx, edx
xor eax, eax

loc_fffc277c:  ; not directly referenced
mov ecx, dword [ebp - 0x52c]
mov ebx, dword [edi + edx]
add edx, dword [ebp - 0x560]
mov dword [ecx + eax], ebx
mov ecx, dword [ebp - 0x554]
mov dword [ecx + eax*2], ebx
add eax, 4
cmp eax, 0x20
jne short loc_fffc277c  ; jne 0xfffc277c
inc byte [ebp - 0x509]

loc_fffc27a5:  ; not directly referenced
mov eax, dword [ebp - 0x514]
mov bl, byte [ebp - 0x509]
cmp bl, byte [eax + 0x1755]
jb loc_fffc2612  ; jb 0xfffc2612
jmp near loc_fffc25fd  ; jmp 0xfffc25fd

loc_fffc27c2:  ; not directly referenced
lea esi, [ebp - 0x504]
lea ecx, [ebp - 0x4f2]
xor edx, edx
mov edi, 0xffffffff
jmp near loc_fffc2ee2  ; jmp 0xfffc2ee2

loc_fffc27da:  ; not directly referenced
mov edx, dword [ebp - 0x514]
mov dword [ebp - 0x510], 0
mov eax, dword [edx + 0x103f]
mov byte [eax + 0x4800], 4
jmp near loc_fffc2a9a  ; jmp 0xfffc2a9a

loc_fffc27fc:  ; not directly referenced
mov cl, byte [ebp - 0x51c]
xor ebx, ebx
and ecx, 1
neg ecx
mov byte [ebp - 0x520], cl

loc_fffc280f:  ; not directly referenced
mov esi, dword [ebp - 0x528]
bt esi, ebx
jb short loc_fffc2825  ; jb 0xfffc2825

loc_fffc281a:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc280f  ; jne 0xfffc280f
jmp near loc_fffc296a  ; jmp 0xfffc296a

loc_fffc2825:  ; not directly referenced
lea ecx, [ebx + 1]
mov esi, dword [ebp - 0x528]
mov byte [ebp - 0x509], 0
sar esi, cl
mov dword [ebp - 0x518], esi
lea esi, [ebx + ebx*8]
mov dword [ebp - 0x52c], esi
jmp near loc_fffc294d  ; jmp 0xfffc294d

loc_fffc284b:  ; not directly referenced
movzx eax, byte [ebp - 0x509]
cmp byte [ebp - 0x50b], 0
je loc_fffc28f7  ; je 0xfffc28f7
add eax, dword [ebp - 0x52c]
mov dl, byte [ebp - 0x520]
shl eax, 5
mov esi, dword [ebp - 0x51c]
and edx, 1
xor esi, 1
xor ecx, ecx
mov byte [ebp - 0x530], dl
mov dword [ebp - 0x534], esi
lea eax, [ebp + eax - 0x498]
mov dword [ebp - 0x554], eax
xor eax, eax

loc_fffc2897:  ; not directly referenced
cmp byte [ebp - 0x50a], 9
sete dl
test byte [ebp - 0x530], dl
jne short loc_fffc28c5  ; jne 0xfffc28c5
cmp byte [ebp - 0x50a], 9
mov dl, byte [ebp - 0x534]
setne byte [ebp - 0x524]
test byte [ebp - 0x524], dl
je short loc_fffc28d5  ; je 0xfffc28d5

loc_fffc28c5:  ; not directly referenced
mov esi, dword [ebp - 0x554]
mov edi, 0xf
sub edi, dword [esi + ecx]
jmp short loc_fffc28de  ; jmp 0xfffc28de

loc_fffc28d5:  ; not directly referenced
mov edx, dword [ebp - 0x554]
mov edi, dword [edx + ecx]

loc_fffc28de:  ; not directly referenced
cmp edi, 0xf
mov esi, 0xf
cmovbe esi, edi
shl esi, cl
add ecx, 4
or eax, esi
cmp ecx, 0x20
jne short loc_fffc2897  ; jne 0xfffc2897
jmp short loc_fffc290d  ; jmp 0xfffc290d

loc_fffc28f7:  ; not directly referenced
lea edx, [ebx + ebx*8]
add eax, edx
shl eax, 5
mov eax, dword [ebp + eax - 0x498]
imul eax, dword [ebp - 0x558]

loc_fffc290d:  ; not directly referenced
push 1
push dword [ebp - 0x518]
movzx ecx, byte [ebp - 0x509]
push 0
movzx edx, byte [ebp - 0x50a]
push ecx
movzx ecx, byte [ebp - 0x50c]
push ecx
mov ecx, eax
mov eax, dword [ebp - 0x514]
push ebx
push 0
push dword [ebp - 0x510]
call fcn_fffc83fc  ; call 0xfffc83fc
inc byte [ebp - 0x509]
add esp, 0x20

loc_fffc294d:  ; not directly referenced
mov eax, dword [ebp - 0x514]
mov cl, byte [ebp - 0x509]
cmp cl, byte [eax + 0x1755]
jb loc_fffc284b  ; jb 0xfffc284b
jmp near loc_fffc281a  ; jmp 0xfffc281a

loc_fffc296a:  ; not directly referenced
mov eax, dword [ebp - 0x514]
push edx
mov edx, dword [ebp - 0x528]
movzx ecx, byte [eax + 0x1768]
xor eax, eax
push 0
cmp dword [ebp - 0x510], 0
sete al
push eax
lea eax, [ebp - 0x508]
push eax
mov eax, dword [ebp - 0x514]
call fcn_fffb21f3  ; call 0xfffb21f3
add esp, 0x10
mov ebx, dword [ebp - 0x578]
cmp dword [ebp - 0x510], ebx
jae loc_fffc2a94  ; jae 0xfffc2a94
mov eax, dword [ebp - 0x514]
test byte [ebp - 0x561], 1
mov bl, byte [eax + 0x1740]
mov al, 1
je short loc_fffc2a0a  ; je 0xfffc2a0a
mov eax, dword [ebp - 0x514]
mov edx, dword [eax + 0x103f]
mov ecx, dword [edx + 0x40e0]
mov eax, dword [edx + 0x40e4]
inc eax
sete al
inc ecx
sete cl
and eax, ecx
test bl, bl
jne short loc_fffc29fa  ; jne 0xfffc29fa
mov edx, 1

loc_fffc29f6:  ; not directly referenced
and eax, edx
jmp short loc_fffc2a0a  ; jmp 0xfffc2a0a

loc_fffc29fa:  ; not directly referenced
mov edx, dword [edx + 0x40e8]
inc dl
sete dl
movzx edx, dl
jmp short loc_fffc29f6  ; jmp 0xfffc29f6

loc_fffc2a0a:  ; not directly referenced
cmp dword [ebp - 0x55c], 0
je short loc_fffc2a58  ; je 0xfffc2a58
mov ecx, dword [ebp - 0x514]
mov edx, dword [ecx + 0x103f]
mov esi, dword [edx + 0x44e0]
mov ecx, dword [edx + 0x44e4]
inc ecx
sete cl
inc esi
mov edi, ecx
sete cl
mov esi, ecx
and edi, esi
test bl, bl
jne short loc_fffc2a48  ; jne 0xfffc2a48
mov edx, 1

loc_fffc2a42:  ; not directly referenced
and eax, edi
and eax, edx
jmp short loc_fffc2a58  ; jmp 0xfffc2a58

loc_fffc2a48:  ; not directly referenced
mov edx, dword [edx + 0x44e8]
inc dl
sete dl
movzx edx, dl
jmp short loc_fffc2a42  ; jmp 0xfffc2a42

loc_fffc2a58:  ; not directly referenced
test al, al
je short loc_fffc2a94  ; je 0xfffc2a94

loc_fffc2a5c:  ; not directly referenced
lea ebx, [ebp - 0x498]
mov esi, dword [ebp + 8]
mov dword [ebp - 0x520], ebx
mov dword [ebp - 0x534], esi
movzx ebx, byte [ebp - 0x50c]
mov dword [ebp - 0x530], 0
mov dword [ebp - 0x510], 0
mov dword [ebp - 0x574], ebx
jmp short loc_fffc2aae  ; jmp 0xfffc2aae

loc_fffc2a94:  ; not directly referenced
inc dword [ebp - 0x510]

loc_fffc2a9a:  ; not directly referenced
mov esi, dword [ebp - 0x568]
cmp dword [ebp - 0x510], esi
jb loc_fffc27fc  ; jb 0xfffc27fc
jmp short loc_fffc2a5c  ; jmp 0xfffc2a5c

loc_fffc2aae:  ; not directly referenced
mov ebx, dword [ebp - 0x528]
mov esi, dword [ebp - 0x510]
bt ebx, esi
jb short loc_fffc2aef  ; jb 0xfffc2aef

loc_fffc2abf:  ; not directly referenced
inc dword [ebp - 0x510]
add dword [ebp - 0x520], 0x120
add dword [ebp - 0x534], 0x240
add dword [ebp - 0x530], 9
cmp dword [ebp - 0x510], 2
je loc_fffc27c2  ; je 0xfffc27c2
jmp short loc_fffc2aae  ; jmp 0xfffc2aae

loc_fffc2aef:  ; not directly referenced
mov ebx, dword [ebp - 0x514]
mov edx, dword [ebp - 0x510]
shl edx, 0xa
mov byte [ebp - 0x524], 0xff
imul esi, dword [ebp - 0x510], 9
mov eax, dword [ebx + 0x103f]
lea ecx, [edx + 0x40e0]
mov dword [ebp - 0x52c], esi
mov byte [ebp - 0x54e], 0xff
lea esi, [ebp - 0x18]
mov byte [ebp - 0x509], 0
add esi, dword [ebp - 0x52c]
lea ebx, [ecx + eax]
lea ecx, [eax + ecx + 4]
lea eax, [eax + edx + 0x40e8]
mov ebx, dword [ebx]
mov ecx, dword [ecx]
mov eax, dword [eax]
mov dword [ebp - 0x56c], ebx
mov dword [ebp - 0x570], ecx
mov byte [ebp - 0x562], al
jmp near loc_fffc2e57  ; jmp 0xfffc2e57

loc_fffc2b60:  ; not directly referenced
cmp byte [ebp - 0x509], 3
ja short loc_fffc2b7b  ; ja 0xfffc2b7b
movzx ecx, byte [ebp - 0x509]
mov ebx, dword [ebp - 0x56c]
shl ecx, 3
jmp short loc_fffc2ba4  ; jmp 0xfffc2ba4

loc_fffc2b7b:  ; not directly referenced
mov bl, byte [ebp - 0x562]
cmp byte [ebp - 0x509], 7
mov byte [ebp - 0x548], bl
ja short loc_fffc2bac  ; ja 0xfffc2bac
movzx eax, byte [ebp - 0x509]
mov ebx, dword [ebp - 0x570]
lea ecx, [eax*8 - 0x20]

loc_fffc2ba4:  ; not directly referenced
shr ebx, cl
mov byte [ebp - 0x548], bl

loc_fffc2bac:  ; not directly referenced
movzx ebx, byte [ebp - 0x509]
mov eax, dword [ebp - 0x52c]
add eax, ebx
lea edx, [ebp - 0x498]
shl eax, 5
mov ecx, dword [ebp - 0x534]
add edx, eax
mov eax, ebx
shl eax, 4
add eax, dword [ebp - 0x51c]
mov dword [ebp - 0x518], edx
lea edi, [ecx + eax*4]
xor ecx, ecx
lea eax, [esi + ebx]

loc_fffc2be5:  ; not directly referenced
mov edx, 1
shl edx, cl
mov byte [ebp - 0x57d], dl
mov dword [ebp - 0x554], edx
mov dl, byte [eax - 0x4ec]
mov byte [ebp - 0x54f], dl
mov dl, byte [eax - 0x4da]
mov byte [ebp - 0x550], dl
and dl, byte [ebp - 0x54f]
mov byte [ebp - 0x563], dl
mov dl, byte [ebp - 0x57d]
test byte [ebp - 0x563], dl
jne short loc_fffc2c8d  ; jne 0xfffc2c8d
test byte [ebp - 0x548], dl
je short loc_fffc2c65  ; je 0xfffc2c65
or edx, dword [ebp - 0x550]
mov byte [eax - 0x4da], dl
mov edx, dword [ebp - 0x518]
mov edx, dword [edx]
cmp dword [edi + ecx*8], edx
mov dword [ebp - 0x584], edx
jb short loc_fffc2c8d  ; jb 0xfffc2c8d
dec edx
mov dword [edi + ecx*8], edx
mov dl, byte [ebp - 0x554]
not edx
and byte [eax - 0x4ec], dl
jmp short loc_fffc2c8d  ; jmp 0xfffc2c8d

loc_fffc2c65:  ; not directly referenced
mov dl, byte [ebp - 0x57d]
or dl, byte [ebp - 0x54f]
mov byte [eax - 0x4ec], dl
mov edx, dword [ebp - 0x518]
mov edx, dword [edx]
cmp dword [edi + ecx*8], edx
mov dword [ebp - 0x554], edx
jae short loc_fffc2c8d  ; jae 0xfffc2c8d
mov dword [edi + ecx*8], edx

loc_fffc2c8d:  ; not directly referenced
inc ecx
mov edx, dword [ebp - 0x560]
add dword [ebp - 0x518], edx
cmp ecx, 8
jne loc_fffc2be5  ; jne 0xfffc2be5
cmp byte [ebp - 0x50a], 1
mov al, 0xf
jne short loc_fffc2cd2  ; jne 0xfffc2cd2
push eax
mov ecx, dword [ebp - 0x574]
mov edx, dword [ebp - 0x510]
push 0xf
push dword [ebp - 0x51c]
mov eax, dword [ebp - 0x514]
push ebx
call fcn_fffb2c66  ; call 0xfffb2c66
add esp, 0x10

loc_fffc2cd2:  ; not directly referenced
cmp byte [ebp - 0x50b], 0
je short loc_fffc2d3e  ; je 0xfffc2d3e
movzx edi, byte [ebp - 0x509]
add edi, dword [ebp - 0x530]
shl edi, 5
lea edx, [ebp - 0x498]
add edx, edi
xor ecx, ecx
mov dword [ebp - 0x518], edx

loc_fffc2cfb:  ; not directly referenced
mov edx, 1
shl edx, cl
mov byte [ebp - 0x554], dl
mov edx, dword [ebp - 0x518]
mov edi, dword [edx + ecx*4]
movzx edx, al
cmp edi, edx
jb short loc_fffc2d25  ; jb 0xfffc2d25
mov dl, byte [ebp - 0x554]
or byte [ebx + esi - 0x4da], dl

loc_fffc2d25:  ; not directly referenced
test edi, edi
jne short loc_fffc2d36  ; jne 0xfffc2d36
mov dl, byte [ebp - 0x554]
or byte [ebx + esi - 0x4ec], dl

loc_fffc2d36:  ; not directly referenced
inc ecx
cmp ecx, 8
jne short loc_fffc2cfb  ; jne 0xfffc2cfb
jmp short loc_fffc2d6b  ; jmp 0xfffc2d6b

loc_fffc2d3e:  ; not directly referenced
movzx eax, al
mov edx, dword [ebp - 0x52c]
add edx, ebx
shl edx, 5
mov edx, dword [ebp + edx - 0x498]
cmp edx, eax
jb short loc_fffc2d5f  ; jb 0xfffc2d5f
mov byte [ebx + esi - 0x4da], 0xff

loc_fffc2d5f:  ; not directly referenced
test edx, edx
jne short loc_fffc2d6b  ; jne 0xfffc2d6b
mov byte [ebx + esi - 0x4ec], 0xff

loc_fffc2d6b:  ; not directly referenced
lea edx, [esi + ebx]
mov al, byte [edx - 0x4ec]
mov dl, byte [edx - 0x4da]
and byte [ebp - 0x54e], al
and byte [ebp - 0x524], dl
cmp dword [ebp - 0x54c], 0
mov byte [ebp - 0x518], al
jne loc_fffc2e51  ; jne 0xfffc2e51
cmp byte [ebp - 0x50b], 0
je short loc_fffc2e03  ; je 0xfffc2e03
movzx ecx, byte [ebp - 0x509]
add ecx, dword [ebp - 0x530]
shl ecx, 5
mov bl, byte [ebp - 0x518]
and ebx, edx
lea eax, [ebp - 0x498]
mov byte [ebp - 0x554], bl
add eax, ecx
lea edi, [ebp + ecx - 0x258]
xor ecx, ecx

loc_fffc2dd1:  ; not directly referenced
mov ebx, 1
shl ebx, cl
test byte [ebp - 0x554], bl
jne short loc_fffc2dfb  ; jne 0xfffc2dfb
test bl, dl
jne short loc_fffc2de9  ; jne 0xfffc2de9
inc dword [eax + ecx*4]
jmp short loc_fffc2dfb  ; jmp 0xfffc2dfb

loc_fffc2de9:  ; not directly referenced
test byte [ebp - 0x518], bl
jne short loc_fffc2dfb  ; jne 0xfffc2dfb
mov ebx, dword [edi + ecx*4]
dec ebx
mov dword [edi + ecx*4], ebx
mov dword [eax + ecx*4], ebx

loc_fffc2dfb:  ; not directly referenced
inc ecx
cmp ecx, 8
jne short loc_fffc2dd1  ; jne 0xfffc2dd1
jmp short loc_fffc2e51  ; jmp 0xfffc2e51

loc_fffc2e03:  ; not directly referenced
mov cl, byte [ebp - 0x518]
and ecx, edx
inc cl
je short loc_fffc2e51  ; je 0xfffc2e51
inc dl
je short loc_fffc2e27  ; je 0xfffc2e27
mov eax, dword [ebp - 0x52c]
add eax, ebx
shl eax, 5
inc dword [ebp + eax - 0x498]
jmp short loc_fffc2e51  ; jmp 0xfffc2e51

loc_fffc2e27:  ; not directly referenced
cmp byte [ebp - 0x518], 0xff
je short loc_fffc2e51  ; je 0xfffc2e51
mov eax, dword [ebp - 0x52c]
add eax, ebx
shl eax, 5
mov edx, dword [ebp + eax - 0x258]
dec edx
mov dword [ebp + eax - 0x258], edx
mov dword [ebp + eax - 0x498], edx

loc_fffc2e51:  ; not directly referenced
inc byte [ebp - 0x509]

loc_fffc2e57:  ; not directly referenced
mov eax, dword [ebp - 0x514]
mov dl, byte [eax + 0x1755]
cmp byte [ebp - 0x509], dl
jb loc_fffc2b60  ; jb 0xfffc2b60
cmp dword [ebp - 0x54c], 1
jne loc_fffc2abf  ; jne 0xfffc2abf
mov al, byte [ebp - 0x54e]
and eax, dword [ebp - 0x524]
inc al
je loc_fffc2abf  ; je 0xfffc2abf
cmp byte [ebp - 0x524], 0xff
je short loc_fffc2ea5  ; je 0xfffc2ea5
mov ebx, dword [ebp - 0x520]
inc dword [ebx]

loc_fffc2ea1:  ; not directly referenced
xor eax, eax
jmp short loc_fffc2ed9  ; jmp 0xfffc2ed9

loc_fffc2ea5:  ; not directly referenced
imul ecx, dword [ebp - 0x510], 0x120
mov esi, dword [ebp - 0x520]
mov eax, dword [ebp + ecx - 0x258]
dec eax
mov dword [ebp + ecx - 0x258], eax
mov dword [esi], eax
jmp short loc_fffc2ea1  ; jmp 0xfffc2ea1

loc_fffc2ec8:  ; not directly referenced
mov esi, dword [ebp - 0x520]
mov ecx, eax
shl ecx, 5
inc eax
mov ebx, dword [esi]
mov dword [esi + ecx], ebx

loc_fffc2ed9:  ; not directly referenced
cmp dl, al
ja short loc_fffc2ec8  ; ja 0xfffc2ec8
jmp near loc_fffc2abf  ; jmp 0xfffc2abf

loc_fffc2ee2:  ; not directly referenced
mov ebx, dword [ebp - 0x528]
bt ebx, edx
jae short loc_fffc2f14  ; jae 0xfffc2f14
mov eax, dword [ebp - 0x514]
mov al, byte [eax + 0x1755]
mov byte [ebp - 0x509], al
xor eax, eax
jmp short loc_fffc2f0c  ; jmp 0xfffc2f0c

loc_fffc2f03:  ; not directly referenced
mov bl, byte [esi + eax]
and bl, byte [ecx + eax]
and edi, ebx
inc eax

loc_fffc2f0c:  ; not directly referenced
cmp byte [ebp - 0x509], al
ja short loc_fffc2f03  ; ja 0xfffc2f03

loc_fffc2f14:  ; not directly referenced
inc edx
add esi, 9
add ecx, 9
cmp edx, 2
jne short loc_fffc2ee2  ; jne 0xfffc2ee2
mov edx, edi
inc dl
jne loc_fffc27da  ; jne 0xfffc27da
cmp byte [ebp - 0x50b], 0
jne loc_fffc2fe3  ; jne 0xfffc2fe3
mov edi, dword [ebp + 0xc]
xor esi, esi

loc_fffc2f3c:  ; not directly referenced
mov ebx, dword [ebp - 0x528]
bt ebx, esi
jb short loc_fffc2f60  ; jb 0xfffc2f60

loc_fffc2f47:  ; not directly referenced
inc esi
add edi, 0x48
add dword [ebp - 0x538], 0x240
cmp esi, 2
je loc_fffc30bf  ; je 0xfffc30bf
jmp short loc_fffc2f3c  ; jmp 0xfffc2f3c

loc_fffc2f60:  ; not directly referenced
xor ecx, ecx
jmp short loc_fffc2fac  ; jmp 0xfffc2fac

loc_fffc2f64:  ; not directly referenced
mov ebx, dword [ebp - 0x510]
mov ebx, dword [ebx + edx]
mov dword [ebp - 0x57c], ebx
movzx ebx, al
mov dword [ebp - 0x520], ebx
mov ebx, dword [ebp - 0x57c]
cmp dword [ebp - 0x520], ebx
cmova eax, ebx
add edx, 8
cmp edx, 0x40
jne short loc_fffc2f64  ; jne 0xfffc2f64
movzx eax, al
mov edx, dword [ebp - 0x518]
mov ebx, dword [ebp - 0x51c]
inc ecx
imul eax, eax, 0xa
lea edx, [ebx + edx*2]
mov dword [edi + edx*4], eax

loc_fffc2fac:  ; not directly referenced
mov eax, dword [ebp - 0x514]
cmp cl, byte [eax + 0x1755]
jae short loc_fffc2f47  ; jae 0xfffc2f47
movzx ebx, cl
mov edx, dword [ebp - 0x538]
mov eax, ebx
mov dword [ebp - 0x518], ebx
shl eax, 4
add eax, dword [ebp - 0x51c]
lea eax, [edx + eax*4]
xor edx, edx
mov dword [ebp - 0x510], eax
mov al, 0x7f
jmp short loc_fffc2f64  ; jmp 0xfffc2f64

loc_fffc2fe3:  ; not directly referenced
mov bl, byte [ebp - 0x51c]
xor ecx, ecx
and ebx, 1
neg ebx
mov byte [ebp - 0x509], bl

loc_fffc2ff6:  ; not directly referenced
mov esi, dword [ebp - 0x528]
xor edx, edx
bt esi, ecx
jb short loc_fffc3053  ; jb 0xfffc3053

loc_fffc3003:  ; not directly referenced
inc ecx
add dword [ebp - 0x538], 0x240
cmp ecx, 2
je short loc_fffc3092  ; je 0xfffc3092
jmp short loc_fffc2ff6  ; jmp 0xfffc2ff6

loc_fffc3015:  ; not directly referenced
cmp byte [ebp - 0x50a], 9
sete bl
test byte [ebp - 0x510], bl
jne short loc_fffc303f  ; jne 0xfffc303f
cmp byte [ebp - 0x50a], 9
mov ebx, edi
setne byte [ebp - 0x518]
test byte [ebp - 0x518], bl
je short loc_fffc304a  ; je 0xfffc304a

loc_fffc303f:  ; not directly referenced
mov ebx, 0xf
sub ebx, dword [esi + eax]
mov dword [esi + eax], ebx

loc_fffc304a:  ; not directly referenced
add eax, 8
cmp eax, 0x40
jne short loc_fffc3015  ; jne 0xfffc3015
inc edx

loc_fffc3053:  ; not directly referenced
mov eax, dword [ebp - 0x514]
cmp dl, byte [eax + 0x1755]
jae short loc_fffc3003  ; jae 0xfffc3003
movzx eax, dl
mov ebx, dword [ebp - 0x538]
shl eax, 4
add eax, dword [ebp - 0x51c]
mov edi, dword [ebp - 0x51c]
xor edi, 1
lea esi, [ebx + eax*4]
mov bl, byte [ebp - 0x509]
and ebx, 1
xor eax, eax
mov byte [ebp - 0x510], bl
jmp short loc_fffc3015  ; jmp 0xfffc3015

loc_fffc3092:  ; not directly referenced
push 2
movzx eax, byte [ebp - 0x50c]
xor ecx, ecx
push 0
movzx edx, byte [ebp - 0x54d]
push 0
push 0
push eax
mov eax, dword [ebp - 0x514]
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffc30bf:  ; not directly referenced
inc dword [ebp - 0x51c]
cmp dword [ebp - 0x51c], 2
jne loc_fffc258a  ; jne 0xfffc258a
push 2
cmp byte [ebp - 0x50b], 1
mov eax, 0
push 0
movzx edx, byte [ebp - 0x50a]
mov ecx, 0x88888888
push 0
cmovne ecx, eax
push 0
movzx eax, byte [ebp - 0x50c]
push eax
mov eax, dword [ebp - 0x514]
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc3116:  ; not directly referenced
push ebp
mov ebp, esp
push edi
movzx edi, cl
push esi
mov esi, edx
push ebx
mov ebx, eax
lea esp, [esp - 0x54]
mov al, byte [ebp + 8]
movzx edx, al
mov byte [ebp - 0x2e], al
mov dword [ebp - 0x54], edx
lea eax, [ebx + 0x1774]
mov dword [ebp - 0x2c], eax
mov eax, 1
shl eax, cl
mov ecx, edx
and eax, 0xff
mov edx, dword [ebp - 0x2c]
push eax
mov eax, ebx
push edi
call fcn_fffb0bed  ; call 0xfffb0bed
add esp, 0x10
test eax, eax
jne loc_fffc32d1  ; jne 0xfffc32d1
push ecx
mov edx, esi
mov eax, ebx
push ecx
push dword [ebp + 0x18]
movzx esi, dl
mov edx, dword [ebp - 0x2c]
push 0x36
push dword [ebp + 0xc]
push dword [ebp - 0x54]
mov ecx, esi
mov dword [ebp - 0x38], esi
push edi
push edi
call fcn_fffc69bc  ; call 0xfffc69bc
add esp, 0x20
test eax, eax
jne loc_fffc32d1  ; jne 0xfffc32d1
sub esp, 0xc
mov ecx, dword [ebp - 0x54]
push edi
mov edx, dword [ebp - 0x2c]
mov eax, ebx
call fcn_fffb0b1b  ; call 0xfffb0b1b
add esp, 0x10
test eax, eax
jne loc_fffc32d1  ; jne 0xfffc32d1
xor edx, edx
cmp byte [ebp - 0x2e], 0x21
ja short loc_fffc31bd  ; ja 0xfffc31bd
mov esi, dword [ebp - 0x54]
movzx edx, byte [esi + ref_fffcc308]  ; movzx edx, byte [esi - 0x33cf8]

loc_fffc31bd:  ; not directly referenced
imul edx, edx, 0x48
xor eax, eax
mov byte [ebp - 0x28], 0
mov dword [ebp - 0x44], edx
jmp near loc_fffc32bd  ; jmp 0xfffc32bd

loc_fffc31ce:  ; not directly referenced
movzx esi, byte [ebp - 0x28]
mov al, byte [ebp - 0x28]
mov dword [ebp - 0x3c], esi
mov esi, dword [ebp - 0x38]
bt esi, eax
jb short loc_fffc31e7  ; jb 0xfffc31e7

loc_fffc31e0:  ; not directly referenced
xor eax, eax
jmp near loc_fffc32ba  ; jmp 0xfffc32ba

loc_fffc31e7:  ; not directly referenced
imul eax, dword [ebp - 0x3c], 0x24
mov esi, dword [ebp + 0x14]
add esi, eax
add eax, dword [ebp + 0x10]
mov dword [ebp - 0x40], esi
mov dword [ebp - 0x48], eax
mov dword [ebp - 0x34], 0x18
mov byte [ebp - 0x2d], 0
jmp near loc_fffc32a6  ; jmp 0xfffc32a6

loc_fffc3209:  ; not directly referenced
imul eax, dword [ebp - 0x3c], 9
imul edx, edi, 0x12
movzx ecx, byte [ebp - 0x2d]
lea esi, [edx + eax]
mov edx, dword [ebp - 0x44]
lea eax, [esi + ecx]
lea edx, [eax + edx + 0x16]
mov dword [ebp - 0x4c], edx
mov edx, dword [ebp - 0x44]
add edx, esi
mov esi, dword [ebp - 0x4c]
lea eax, [ecx + edx + 0x16]
mov esi, dword [ebx + esi*8 + 0x16c8]
mov edx, dword [ebx + eax*8 + 0x16c4]
add esi, edx
xor edx, edx
mov dword [ebp - 0x4c], esi
mov eax, esi
mov esi, 0xa
div esi
mov esi, dword [ebp - 0x48]
mov edx, 0x18
mov dword [esi + ecx*4], eax
mov dword [ebp - 0x50], eax
shr eax, 1
mov esi, dword [ebp - 0x40]
cmp eax, 0x18
cmovbe edx, eax
cmp dword [ebp - 0x34], edx
mov dword [esi + ecx*4], edx
cmovbe edx, dword [ebp - 0x34]
sub esp, 0xc
mov dword [ebp - 0x34], edx
push edi
mov ecx, dword [ebp - 0x54]
mov edx, dword [ebp - 0x2c]
mov eax, ebx
call fcn_fffb0b1b  ; call 0xfffb0b1b
add esp, 0x10
test eax, eax
jne short loc_fffc32ba  ; jne 0xfffc32ba
cmp byte [ebp - 0x2e], 5
jne short loc_fffc32a3  ; jne 0xfffc32a3
movzx ecx, byte [ebx + 0x1755]
mov edx, dword [ebp - 0x34]
mov eax, esi
call mrc_fillword

loc_fffc32a3:  ; not directly referenced
inc byte [ebp - 0x2d]

loc_fffc32a6:  ; not directly referenced
mov al, byte [ebp - 0x2d]
cmp al, byte [ebx + 0x1755]
jb loc_fffc3209  ; jb 0xfffc3209
jmp near loc_fffc31e0  ; jmp 0xfffc31e0

loc_fffc32ba:  ; not directly referenced
inc byte [ebp - 0x28]

loc_fffc32bd:  ; not directly referenced
test eax, eax
sete cl
cmp byte [ebp - 0x28], 1
setbe dl
test cl, dl
jne loc_fffc31ce  ; jne 0xfffc31ce

loc_fffc32d1:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc32d9:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, ecx
xor ecx, ecx
push esi
mov esi, eax
push ebx
lea esp, [esp - 0x96c]
mov bl, byte [ebp + 8]
mov byte [ebp - 0x95a], bl
mov bl, byte [ebp + 0xc]
mov byte [ebp - 0x93c], bl
mov bl, byte [ebp + 0x10]
mov dword [ebp - 0x954], edx
mov byte [ebp - 0x959], bl
mov edx, 0x10
lea ebx, [eax + 0x16be]
lea eax, [ebp - 0x928]
mov byte [ebp - 0x937], 0
mov byte [ebp - 0x936], 0xf8
mov byte [ebp - 0x935], 8
mov byte [ebp - 0x934], 1
mov byte [ebp - 0x933], 1
mov byte [ebp - 0x932], 1
mov dword [ebp - 0x944], ebx
call mrc_setmem
xor eax, eax

loc_fffc3355:  ; not directly referenced
mov byte [ebp + eax - 0x931], al
inc eax
cmp eax, 9
jne short loc_fffc3355  ; jne 0xfffc3355
sub esp, 0xc
mov eax, edi
push 2
movzx edx, al
mov ecx, 0xf
mov eax, esi
call fcn_fffc5844  ; call 0xfffc5844
add esp, 0x10
xor eax, eax
mov byte [ebp - 0x940], 0
mov dl, 3

loc_fffc3386:  ; not directly referenced
movzx ecx, al
mov bl, byte [ebp + ecx - 0x934]
add byte [ebp - 0x940], bl
cmp byte [ebp - 0x959], 0
cmove eax, edx
inc eax
cmp al, 2
jbe short loc_fffc3386  ; jbe 0xfffc3386
cmp byte [ebp - 0x940], 0
mov bl, byte [ebp - 0x940]
mov al, 1
cmove ebx, eax
cmp byte [ebp - 0x93c], 1
mov byte [ebp - 0x940], bl
jne short loc_fffc33ea  ; jne 0xfffc33ea
push 1
mov ecx, 0x88888888
mov edx, 0xa
push 0
mov eax, esi
push 1
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20

loc_fffc33ea:  ; not directly referenced
lea edi, [esi + 0x16be]
xor ebx, ebx
mov byte [ebp - 0x948], 0
mov dword [ebp - 0x94c], edi

loc_fffc33ff:  ; not directly referenced
imul edi, ebx, 0x1347
mov eax, dword [ebp - 0x94c]
mov edx, ebx
lea eax, [eax + edi + 0x12b0]
mov dword [ebp - 0x93c], eax
movzx ecx, byte [eax + 0x115d]
mov eax, esi
call fcn_fffc41bb  ; call 0xfffc41bb
mov edx, dword [ebp - 0x944]
or byte [ebp - 0x948], al
cmp dword [edx + edi + 0x12be], 2
jne short loc_fffc3457  ; jne 0xfffc3457
mov eax, dword [ebp - 0x93c]
xor edx, edx
movzx ecx, byte [esi + 0x1755]
add eax, 0x107
call mrc_fillword

loc_fffc3457:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc33ff  ; jne 0xfffc33ff
push eax
lea ebx, [esi + 0x1774]
mov ecx, 1
push eax
mov edx, ebx
mov eax, esi
push 0xf
mov dword [ebp - 0x944], ebx
push 0
call fcn_fffb0bed  ; call 0xfffb0bed
mov edi, dword [ebp - 0x954]
lea ecx, [ebp - 0x918]
add edi, 0x240
add esp, 0x10
movzx ebx, byte [ebp - 0x948]
mov dword [ebp - 0x960], edi
mov dword [ebp - 0x93c], 0
mov dword [ebp - 0x948], ebx

loc_fffc34af:  ; not directly referenced
mov edi, dword [ebp - 0x948]
mov ebx, dword [ebp - 0x93c]
bt edi, ebx
jae short loc_fffc34d0  ; jae 0xfffc34d0
mov bl, byte [esi + 0x1755]
xor edi, edi
mov byte [ebp - 0x94c], bl
jmp short loc_fffc353a  ; jmp 0xfffc353a

loc_fffc34d0:  ; not directly referenced
inc dword [ebp - 0x93c]
add ecx, 0x24
add dword [ebp - 0x960], 0x48
cmp dword [ebp - 0x93c], 2
je short loc_fffc3546  ; je 0xfffc3546
jmp short loc_fffc34af  ; jmp 0xfffc34af

loc_fffc34eb:  ; not directly referenced
cmp byte [ebp - 0x959], 0
je short loc_fffc351f  ; je 0xfffc351f
mov ebx, dword [ebp - 0x960]
mov eax, dword [ebp - 0x960]
xor edx, edx
mov eax, dword [eax + edi*8]
mov ebx, dword [ebx + edi*8 + 4]
add ebx, eax
mov eax, ebx
mov dword [ebp - 0x950], ebx
mov ebx, 0x14
div ebx
mov dword [ecx + edi*4], eax
jmp short loc_fffc3526  ; jmp 0xfffc3526

loc_fffc351f:  ; not directly referenced
mov dword [ecx + edi*4], 1

loc_fffc3526:  ; not directly referenced
mov eax, dword [ecx + edi*4]
test eax, eax
je short loc_fffc3532  ; je 0xfffc3532
cmp eax, 0xc
jbe short loc_fffc3539  ; jbe 0xfffc3539

loc_fffc3532:  ; not directly referenced
mov dword [ecx + edi*4], 0xc

loc_fffc3539:  ; not directly referenced
inc edi

loc_fffc353a:  ; not directly referenced
mov eax, edi
cmp byte [ebp - 0x94c], al
ja short loc_fffc34eb  ; ja 0xfffc34eb
jmp short loc_fffc34d0  ; jmp 0xfffc34d0

loc_fffc3546:  ; not directly referenced
push eax
mov ecx, 4
mov edx, dword [ebp - 0x944]
push eax
mov eax, esi
xor ebx, ebx
push 0xf
push 0
call fcn_fffb0bed  ; call 0xfffb0bed
add esp, 0x10
jmp near loc_fffc373e  ; jmp 0xfffc373e

loc_fffc3568:  ; not directly referenced
mov edx, dword [ebp - 0x948]
bt edx, edi
jb short loc_fffc35dd  ; jb 0xfffc35dd

loc_fffc3573:  ; not directly referenced
inc edi
cmp edi, 2
jne short loc_fffc3568  ; jne 0xfffc3568
jmp near loc_fffc3600  ; jmp 0xfffc3600

loc_fffc357e:  ; not directly referenced
movzx ecx, byte [ebp - 0x93c]
mov edx, dword [ebp - 0x950]
mov dword [ebp - 0x94c], ecx
add edx, ecx
mov ecx, dword [ebp - 0x958]
push 2
push 0
movsx eax, byte [ebp + ecx - 0x937]
mov ecx, 0xc
imul eax, dword [ebp + edx*4 - 0x918]
cdq
idiv ecx
push 1
push dword [ebp - 0x94c]
mov edx, 1
push 0
push edi
push 0
push 0
mov ecx, eax
mov eax, esi
call fcn_fffc83fc  ; call 0xfffc83fc
inc byte [ebp - 0x93c]
add esp, 0x20
jmp short loc_fffc35ed  ; jmp 0xfffc35ed

loc_fffc35dd:  ; not directly referenced
lea eax, [edi + edi*8]
mov byte [ebp - 0x93c], 0
mov dword [ebp - 0x950], eax

loc_fffc35ed:  ; not directly referenced
mov dl, byte [ebp - 0x93c]
cmp dl, byte [esi + 0x1755]
jb short loc_fffc357e  ; jb 0xfffc357e
jmp near loc_fffc3573  ; jmp 0xfffc3573

loc_fffc3600:  ; not directly referenced
push eax
lea ecx, [ebp - 0x928]
lea edi, [ebp - 0x931]
push eax
mov edx, dword [ebp - 0x944]
mov eax, esi
push ecx
mov ecx, dword [ebp - 0x948]
push 0x36
push edi
movzx edi, bl
push 4
push 0xff
push 0
call fcn_fffc69bc  ; call 0xfffc69bc
imul eax, edi, 0x90
mov edx, dword [ebp - 0x954]
lea ecx, [ebp - 0x8d0]
mov dword [ebp - 0x93c], edx
add esp, 0x20
mov dword [ebp - 0x970], 0
mov dword [ebp - 0x960], edi
mov dword [ebp - 0x96c], eax

loc_fffc3662:  ; not directly referenced
mov edi, dword [ebp - 0x948]
mov eax, dword [ebp - 0x970]
bt edi, eax
jb short loc_fffc3692  ; jb 0xfffc3692

loc_fffc3673:  ; not directly referenced
inc dword [ebp - 0x970]
add ecx, 0x24
add dword [ebp - 0x93c], 0x48
cmp dword [ebp - 0x970], 2
je loc_fffc372c  ; je 0xfffc372c
jmp short loc_fffc3662  ; jmp 0xfffc3662

loc_fffc3692:  ; not directly referenced
imul eax, dword [ebp - 0x970], 0x48
add eax, dword [ebp - 0x96c]
mov dl, byte [esi + 0x1755]
mov byte [ebp - 0x968], dl
lea edx, [ebp + eax - 0x888]
xor eax, eax
jmp short loc_fffc371f  ; jmp 0xfffc371f

loc_fffc36b6:  ; not directly referenced
mov edi, dword [ebp - 0x93c]
mov edi, dword [edi + eax*8 + 4]
mov dword [ebp - 0x950], edi
mov edi, dword [ebp - 0x93c]
mov edi, dword [edi + eax*8]
mov dword [ebp - 0x958], edi
mov edi, dword [ebp - 0x950]
sub edi, dword [ebp - 0x958]
test bl, bl
mov dword [ebp - 0x964], edi
jne short loc_fffc36f2  ; jne 0xfffc36f2
mov dword [ecx + eax*4], 0

loc_fffc36f2:  ; not directly referenced
mov edi, dword [ebp - 0x960]
movzx edi, byte [ebp + edi - 0x934]
imul edi, dword [ebp - 0x964]
add dword [ecx + eax*4], edi
mov edi, dword [ebp - 0x958]
inc eax
mov dword [edx], edi
mov edi, dword [ebp - 0x950]
mov dword [edx + 4], edi
add edx, 8

loc_fffc371f:  ; not directly referenced
cmp byte [ebp - 0x968], al
ja short loc_fffc36b6  ; ja 0xfffc36b6
jmp near loc_fffc3673  ; jmp 0xfffc3673

loc_fffc372c:  ; not directly referenced
cmp byte [ebp - 0x959], 0
mov al, 3
cmove ebx, eax
inc ebx
cmp bl, 2
ja short loc_fffc374e  ; ja 0xfffc374e

loc_fffc373e:  ; not directly referenced
movzx eax, bl
xor edi, edi
mov dword [ebp - 0x958], eax
jmp near loc_fffc3568  ; jmp 0xfffc3568

loc_fffc374e:  ; not directly referenced
movsx ebx, byte [ebp - 0x940]
mov dword [ebp - 0x940], 0
imul edi, ebx, 0x14
mov dword [ebp - 0x94c], ebx
mov dword [ebp - 0x960], edi
lea ebx, [esi + 0x16be]
mov dword [ebp - 0x968], ebx

loc_fffc377a:  ; not directly referenced
mov edi, dword [ebp - 0x948]
mov ebx, dword [ebp - 0x940]
bt edi, ebx
jae loc_fffc391d  ; jae 0xfffc391d
imul edi, ebx, 0x1347
mov ebx, dword [ebp - 0x968]
mov dword [ebp - 0x964], edi
mov byte [ebp - 0x944], 0
lea ebx, [ebx + edi + 0x12be]
mov dword [ebp - 0x950], ebx
imul edi, dword [ebp - 0x940], 9
mov dword [ebp - 0x958], edi
jmp near loc_fffc38d6  ; jmp 0xfffc38d6

loc_fffc37c7:  ; not directly referenced
movzx ebx, byte [ebp - 0x944]
mov ecx, dword [ebp - 0x958]
add ecx, ebx
mov eax, dword [ebp + ecx*4 - 0x8d0]
cdq
or edx, 1
movsx edi, dl
imul edi, dword [ebp - 0x94c]
imul eax, edi, 0xa
add eax, dword [ebp + ecx*4 - 0x8d0]
cdq
mov edi, dword [ebp - 0x950]
idiv dword [ebp - 0x960]
mov dword [ebp + ecx*4 - 0x8d0], eax
cdq
mov ecx, 2
mov dword [ebp - 0x93c], eax
idiv ecx
add byte [edi + ebx + 0x10d9], al
xor edi, edi

loc_fffc3820:  ; not directly referenced
mov edx, dword [ebp - 0x964]
mov ecx, edi
mov eax, 1
shl eax, cl
test byte [esi + edx + 0x3acb], al
je short loc_fffc3853  ; je 0xfffc3853
push eax
mov ecx, edi
mov edx, dword [ebp - 0x940]
push 0
mov eax, esi
push 0xff
push ebx
call fcn_fffb0168  ; call 0xfffb0168
add esp, 0x10

loc_fffc3853:  ; not directly referenced
inc edi
cmp edi, 4
jne short loc_fffc3820  ; jne 0xfffc3820
imul ecx, dword [ebp - 0x93c], 0xa
imul edi, dword [ebp - 0x93c], 0xfffffffffffffff6
mov dword [ebp - 0x96c], ecx
mov dword [ebp - 0x93c], edi
xor ecx, ecx
mov dl, 3

loc_fffc3877:  ; not directly referenced
movzx eax, cl
mov edi, dword [ebp - 0x96c]
imul eax, eax, 0x12
add eax, dword [ebp - 0x958]
add eax, ebx
add dword [ebp + eax*8 - 0x888], edi
mov edi, dword [ebp - 0x93c]
add dword [ebp + eax*8 - 0x884], edi
cmp byte [ebp - 0x959], 0
cmove ecx, edx
inc ecx
cmp cl, 2
jbe short loc_fffc3877  ; jbe 0xfffc3877
add ebx, dword [ebp - 0x958]
mov edx, dword [ebp - 0x954]
inc byte [ebp - 0x944]
mov eax, dword [ebp + ebx*8 - 0x888]
mov dword [edx + ebx*8], eax
mov eax, dword [ebp + ebx*8 - 0x884]
mov dword [edx + ebx*8 + 4], eax

loc_fffc38d6:  ; not directly referenced
movzx ecx, byte [esi + 0x1755]
cmp byte [ebp - 0x944], cl
jb loc_fffc37c7  ; jb 0xfffc37c7
mov eax, dword [ebp - 0x950]
xor edx, edx
add eax, 0xf9
call mrc_fillword
sub esp, 0xc
mov ecx, 1
push 0
mov edx, dword [ebp - 0x940]
mov eax, esi
push 1
push 0
push 2
push 0
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20

loc_fffc391d:  ; not directly referenced
inc dword [ebp - 0x940]
cmp dword [ebp - 0x940], 2
jne loc_fffc377a  ; jne 0xfffc377a
cmp byte [ebp - 0x95a], 0
jne short loc_fffc3963  ; jne 0xfffc3963

loc_fffc3939:  ; not directly referenced
push 2
mov byte [esi + 0x1741], 0
xor ecx, ecx
push 0
mov edx, 1
mov eax, esi
push 1
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
jmp near loc_fffc3d1b  ; jmp 0xfffc3d1b

loc_fffc3963:  ; not directly referenced
test byte [ebp - 0x948], 1
je short loc_fffc397c  ; je 0xfffc397c
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x4098], 0xffff3001

loc_fffc397c:  ; not directly referenced
test byte [ebp - 0x948], 2
je short loc_fffc3995  ; je 0xfffc3995
mov eax, dword [esi + 0x103f]
mov dword [eax + 0x4498], 0xffff3001

loc_fffc3995:  ; not directly referenced
mov byte [ebp - 0x940], 0
jmp near loc_fffc3b89  ; jmp 0xfffc3b89

loc_fffc39a1:  ; not directly referenced
mov edi, dword [ebp - 0x948]
bt edi, ebx
jb short loc_fffc39b7  ; jb 0xfffc39b7

loc_fffc39ac:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc39a1  ; jne 0xfffc39a1
jmp near loc_fffc3a62  ; jmp 0xfffc3a62

loc_fffc39b7:  ; not directly referenced
lea edi, [ebx + ebx*8]
mov byte [ebp - 0x93c], 0
mov dword [ebp - 0x944], edi
mov dword [ebp - 0x954], edi
jmp short loc_fffc3a4b  ; jmp 0xfffc3a4b

loc_fffc39cf:  ; not directly referenced
movzx edi, byte [ebp - 0x93c]
mov edx, dword [ebp - 0x954]
add edx, edi
mov ecx, dword [ebp - 0x950]
push 1
push 0
movsx eax, byte [ebp + ecx - 0x937]
mov ecx, 0xc
imul eax, dword [ebp + edx*4 - 0x918]
cdq
idiv ecx
push 1
mov edx, 1
push edi
push 0
push ebx
push 0
push 0
mov ecx, eax
mov eax, esi
call fcn_fffc83fc  ; call 0xfffc83fc
add edi, dword [ebp - 0x944]
lea eax, [ebp - 0x498]
shl edi, 6
add esp, 0x20
add edi, eax
xor eax, eax

loc_fffc3a2e:  ; not directly referenced
mov dword [edi + eax + 4], 8
mov dword [edi + eax], 8
add eax, 8
cmp eax, 0x40
jne short loc_fffc3a2e  ; jne 0xfffc3a2e
inc byte [ebp - 0x93c]

loc_fffc3a4b:  ; not directly referenced
mov dl, byte [ebp - 0x93c]
cmp dl, byte [esi + 0x1755]
jb loc_fffc39cf  ; jb 0xfffc39cf
jmp near loc_fffc39ac  ; jmp 0xfffc39ac

loc_fffc3a62:  ; not directly referenced
movzx ebx, byte [ebp - 0x940]
mov byte [esi + 0x1769], 1
imul eax, ebx, 0x90
xor ecx, ecx
push edi
lea edi, [ebp - 0x888]
add eax, edi
push 0xa
mov edx, dword [ebp - 0x948]
mov dword [ebp - 0x944], ebx
push eax
lea eax, [ebp - 0x498]
xor edi, edi
push eax
mov eax, esi
call fcn_fffc23ac  ; call 0xfffc23ac
add esp, 0x10
mov dword [ebp - 0x93c], 0

loc_fffc3aad:  ; not directly referenced
mov ebx, dword [ebp - 0x948]
bt ebx, edi
jb short loc_fffc3aca  ; jb 0xfffc3aca

loc_fffc3ab8:  ; not directly referenced
inc edi
add dword [ebp - 0x93c], 9
cmp edi, 2
jne short loc_fffc3aad  ; jne 0xfffc3aad
jmp near loc_fffc3b6b  ; jmp 0xfffc3b6b

loc_fffc3aca:  ; not directly referenced
mov al, byte [esi + 0x1755]
mov byte [ebp - 0x960], 0
mov byte [ebp - 0x958], al
jmp short loc_fffc3b17  ; jmp 0xfffc3b17

loc_fffc3adf:  ; not directly referenced
mov edx, dword [ebp - 0x954]
mov ebx, dword [edx + eax*2 + 4]
add ebx, dword [edx + eax*2]
sub ebx, 0x10
cmp byte [ebp - 0x940], 0
jne short loc_fffc3aff  ; jne 0xfffc3aff
mov dword [ecx + eax], 0

loc_fffc3aff:  ; not directly referenced
imul ebx, dword [ebp - 0x950]
add dword [ecx + eax], ebx
add eax, 4
cmp eax, 0x20
jne short loc_fffc3adf  ; jne 0xfffc3adf
inc byte [ebp - 0x960]

loc_fffc3b17:  ; not directly referenced
mov cl, byte [ebp - 0x958]
cmp byte [ebp - 0x960], cl
je short loc_fffc3ab8  ; je 0xfffc3ab8
mov ebx, dword [ebp - 0x944]
lea edx, [ebp - 0x498]
movzx ecx, byte [ebp - 0x960]
add ecx, dword [ebp - 0x93c]
mov eax, ecx
shl eax, 6
movzx ebx, byte [ebp + ebx - 0x934]
add edx, eax
shl ecx, 5
mov dword [ebp - 0x950], ebx
mov dword [ebp - 0x954], edx
lea ebx, [ebp - 0x6d8]
xor eax, eax
add ecx, ebx
jmp near loc_fffc3adf  ; jmp 0xfffc3adf

loc_fffc3b6b:  ; not directly referenced
cmp byte [ebp - 0x959], 0
mov bl, byte [ebp - 0x940]
mov al, 3
cmove ebx, eax
inc ebx
cmp bl, 2
mov byte [ebp - 0x940], bl
ja short loc_fffc3b9d  ; ja 0xfffc3b9d

loc_fffc3b89:  ; not directly referenced
movzx edi, byte [ebp - 0x940]
xor ebx, ebx
mov dword [ebp - 0x950], edi
jmp near loc_fffc39a1  ; jmp 0xfffc39a1

loc_fffc3b9d:  ; not directly referenced
mov ebx, dword [ebp - 0x94c]
mov dword [ebp - 0x944], 0
add ebx, ebx
xor edi, edi
mov dword [ebp - 0x958], ebx
lea ebx, [esi + 0x16be]
mov dword [ebp - 0x960], ebx

loc_fffc3bc3:  ; not directly referenced
mov ebx, dword [ebp - 0x948]
bt ebx, edi
jae loc_fffc3d05  ; jae 0xfffc3d05
imul eax, edi, 0x1347
mov ebx, dword [ebp - 0x960]
mov byte [ebp - 0x959], 0
lea eax, [ebx + eax + 0x12be]
mov dword [ebp - 0x950], eax
jmp near loc_fffc3c99  ; jmp 0xfffc3c99

loc_fffc3bf7:  ; not directly referenced
mov edx, dword [ebx + ecx]
mov eax, edx
sar eax, 0x1f
or eax, 1
movsx eax, al
imul eax, dword [ebp - 0x94c]
add eax, edx
cdq
idiv dword [ebp - 0x958]
mov dword [ebp - 0x964], eax
mov eax, dword [ebp - 0x940]
movzx edx, byte [eax]
mov eax, dword [ebp - 0x964]
add eax, edx
cmp eax, 0xf
jle short loc_fffc3c3a  ; jle 0xfffc3c3a
mov dword [ebx + ecx], 0xf
jmp short loc_fffc3c47  ; jmp 0xfffc3c47

loc_fffc3c3a:  ; not directly referenced
test eax, eax
mov edx, 0
cmovs eax, edx
mov dword [ebx + ecx], eax

loc_fffc3c47:  ; not directly referenced
mov edx, dword [ebp - 0x940]
mov eax, dword [ebx + ecx]
mov byte [edx], al
add edx, 3
shl eax, cl
add ecx, 4
or dword [ebp - 0x93c], eax
cmp ecx, 0x20
mov dword [ebp - 0x940], edx
jne short loc_fffc3bf7  ; jne 0xfffc3bf7
push 2
mov ecx, dword [ebp - 0x93c]
mov edx, 0xa
push 0
mov eax, esi
push 0
push dword [ebp - 0x954]
push 0
push edi
push 0
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
inc byte [ebp - 0x959]
add esp, 0x20

loc_fffc3c99:  ; not directly referenced
movzx ecx, byte [esi + 0x1755]
cmp byte [ebp - 0x959], cl
jae short loc_fffc3cf3  ; jae 0xfffc3cf3
movzx ebx, byte [ebp - 0x959]
xor ecx, ecx
imul eax, ebx, 0x18
mov dword [ebp - 0x954], ebx
mov ebx, dword [ebp - 0x950]
mov dword [ebp - 0x93c], 0
lea eax, [ebx + eax + 0x9fe]
mov ebx, dword [ebp - 0x954]
add ebx, dword [ebp - 0x944]
mov dword [ebp - 0x940], eax
shl ebx, 5
lea eax, [ebp - 0x6d8]
add ebx, eax
jmp near loc_fffc3bf7  ; jmp 0xfffc3bf7

loc_fffc3cf3:  ; not directly referenced
mov eax, dword [ebp - 0x950]
xor edx, edx
add eax, 0xf9
call mrc_fillword

loc_fffc3d05:  ; not directly referenced
inc edi
add dword [ebp - 0x944], 9
cmp edi, 2
jne loc_fffc3bc3  ; jne 0xfffc3bc3
jmp near loc_fffc3939  ; jmp 0xfffc3939

loc_fffc3d1b:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffc3d23:
db 0x00

fcn_fffc3d24:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, eax
lea esp, [esp - 0x4c]
mov eax, dword [ebp + 8]
mov dword [ebp - 0x28], eax
mov eax, dword [ebp + 0xc]
mov dword [ebp - 0x20], eax
mov eax, dword [ebp + 0x10]
mov dword [ebp - 0x30], eax
mov eax, dword [ebp + 0x14]
mov dword [ebp - 0x34], eax
cmp dword [ebx + 0x1005], HASWELL_FAMILY_MOBILE
mov eax, dword [ebp + 0x18]
mov esi, dword [ebp + 0x1c]
mov dword [ebp - 0x24], eax
mov edi, dword [ebp + 0x20]
mov byte [ebp - 0x37], dl
jne short loc_fffc3d93  ; jne 0xfffc3d93
mov word [ebp - 0x36], 0x7f
cmp dword [ebx + 0x1001], 1
mov eax, 0xff
cmove ax, word [ebp - 0x36]
mov dword [ebp - 0x1c], 0x3f8
mov word [ebp - 0x36], ax
mov eax, 0x7f8
cmove eax, dword [ebp - 0x1c]
mov dword [ebp - 0x1c], eax
jmp short loc_fffc3da0  ; jmp 0xfffc3da0

loc_fffc3d93:  ; not directly referenced
mov word [ebp - 0x36], 0xff
mov dword [ebp - 0x1c], 0x7f8

loc_fffc3da0:  ; not directly referenced
test ecx, ecx
je short loc_fffc3e19  ; je 0xfffc3e19
push eax
mov dword [ebp - 0x4c], 0
push eax
movzx eax, byte [ebp - 0x37]
movzx edx, word [ecx]
shl edx, 0x18
lea eax, [eax*8 + 0x48d8]
mov dword [ebp - 0x2c], eax
movzx eax, word [ecx + 2]
shl eax, 0x10
add eax, edx
mov edx, dword [ebp - 0x4c]
mov dword [ebp - 0x3c], eax
movzx eax, word [ecx + 4]
movzx ecx, word [ecx + 6]
mov dword [ebp - 0x50], eax
mov eax, dword [ebp - 0x50]
and ecx, dword [ebp - 0x1c]
shld edx, eax, 0x18
shl eax, 0x18
mov dword [ebp - 0x4c], edx
and edx, 0xff
mov dword [ebp - 0x50], eax
mov dword [ebp - 0x44], edx
and eax, 0xff000000
mov edx, dword [ebp - 0x3c]
or edx, dword [ebp - 0x44]
push edx
mov dword [ebp - 0x40], eax
mov eax, dword [ebp - 0x40]
or eax, ecx
mov edx, dword [ebp - 0x2c]
push eax
mov eax, ebx
call MCHBAR_WRITE64
add esp, 0x10

loc_fffc3e19:  ; not directly referenced
cmp dword [ebp - 0x28], 0
je short loc_fffc3e8b  ; je 0xfffc3e8b
push eax
xor edx, edx
push eax
movzx eax, byte [ebp - 0x37]
lea eax, [eax*8 + 0x48e8]
mov dword [ebp - 0x44], eax
mov eax, dword [ebp - 0x28]
movzx ecx, word [eax]
movzx eax, word [eax + 2]
shl ecx, 0x18
shl eax, 0x10
add eax, ecx
mov ecx, dword [ebp - 0x28]
mov dword [ebp - 0x2c], eax
movzx eax, word [ecx + 4]
shld edx, eax, 0x18
shl eax, 0x18
mov ecx, eax
and ecx, 0xff000000
mov dword [ebp - 0x3c], ecx
movzx ecx, dl
mov dword [ebp - 0x40], ecx
mov ecx, dword [ebp - 0x28]
mov edx, dword [ebp - 0x2c]
or edx, dword [ebp - 0x40]
movzx eax, word [ecx + 6]
mov ecx, dword [ebp - 0x1c]
push edx
and ecx, eax
mov eax, dword [ebp - 0x3c]
or eax, ecx
mov edx, dword [ebp - 0x44]
push eax
mov eax, ebx
call MCHBAR_WRITE64
add esp, 0x10

loc_fffc3e8b:  ; not directly referenced
cmp dword [ebp - 0x20], 0
setne dl
cmp dword [ebp - 0x24], 0
setne byte [ebp - 0x1c]
mov al, byte [ebp - 0x1c]
or al, dl
jne short loc_fffc3eb3  ; jne 0xfffc3eb3
test edi, edi
setne cl
test esi, esi
setne al
or cl, al
je loc_fffc4002  ; je 0xfffc4002

loc_fffc3eb3:  ; not directly referenced
movzx ecx, byte [ebp - 0x37]
xor eax, eax
cmp dword [ebp - 0x24], 0
sete byte [ebp - 0x2c]
cmp dword [ebp - 0x20], 0
lea ecx, [ecx*4 + 0x4908]
mov dword [ebp - 0x28], ecx
sete cl
or cl, byte [ebp - 0x2c]
jne short loc_fffc3f28  ; jne 0xfffc3f28
test edi, edi
sete byte [ebp - 0x2c]
test esi, esi
sete cl
or cl, byte [ebp - 0x2c]
jne short loc_fffc3f28  ; jne 0xfffc3f28

loc_fffc3ee7:  ; not directly referenced
mov ecx, dword [ebp - 0x20]
mov edx, dword [ebp - 0x20]
and eax, 0xfffffff0
movzx ecx, byte [ecx + 3]
and ecx, 3
mov dword [ebp - 0x2c], ecx
or eax, dword [ebp - 0x2c]
movzx ecx, byte [edx + 2]
and ecx, 3
shl ecx, 2
or eax, ecx
movzx ecx, byte [edx + 1]
and al, 0xf
and ecx, 3
shl ecx, 4
mov dword [ebp - 0x2c], ecx
or eax, dword [ebp - 0x2c]
movzx ecx, byte [edx]
and ecx, 3
shl ecx, 6
or eax, ecx
jmp short loc_fffc3f37  ; jmp 0xfffc3f37

loc_fffc3f28:  ; not directly referenced
mov eax, dword [ebp - 0x28]
add eax, dword [ebx + 0x103f]
test dl, dl
mov eax, dword [eax]
jne short loc_fffc3ee7  ; jne 0xfffc3ee7

loc_fffc3f37:  ; not directly referenced
cmp byte [ebp - 0x1c], 0
je short loc_fffc3f80  ; je 0xfffc3f80
mov ecx, dword [ebp - 0x24]
and eax, 0xfcffffff
movzx ecx, byte [ecx + 3]
and ecx, 1
shl ecx, 0x18
mov dword [ebp - 0x1c], ecx
mov ecx, dword [ebp - 0x24]
or eax, dword [ebp - 0x1c]
movzx edx, byte [ecx + 2]
and edx, 1
shl edx, 0x19
or eax, edx
movzx edx, byte [ecx + 1]
and eax, 0xf3ffffff
movzx ecx, byte [ecx]
and edx, 1
shl edx, 0x1a
and ecx, 1
shl ecx, 0x1b
or eax, edx
or eax, ecx

loc_fffc3f80:  ; not directly referenced
test esi, esi
je short loc_fffc3fba  ; je 0xfffc3fba
movzx ecx, byte [esi + 3]
and eax, 0xcfffffff
movzx edx, byte [esi + 2]
and ecx, 1
shl ecx, 0x1c
and edx, 1
shl edx, 0x1d
or eax, ecx
movzx ecx, byte [esi]
or eax, edx
movzx edx, byte [esi + 1]
and eax, 0x3fffffff
shl ecx, 0x1f
and edx, 1
shl edx, 0x1e
or eax, edx
or eax, ecx

loc_fffc3fba:  ; not directly referenced
test edi, edi
je short loc_fffc3ff7  ; je 0xfffc3ff7
movzx ecx, byte [edi + 3]
and eax, 0xffcf1fff
movzx edx, byte [edi + 2]
and ecx, 1
shl ecx, 0x14
and edx, 1
shl edx, 0x15
or eax, ecx
movzx ecx, byte [edi]
or eax, edx
movzx edx, byte [edi + 1]
and eax, 0xff3f1fff
and edx, 1
and ecx, 1
shl edx, 0x16
shl ecx, 0x17
or eax, edx
or eax, ecx

loc_fffc3ff7:  ; not directly referenced
mov esi, dword [ebp - 0x28]
add esi, dword [ebx + 0x103f]
mov dword [esi], eax

loc_fffc4002:  ; not directly referenced
cmp dword [ebp - 0x30], 0
setne cl
cmp dword [ebp - 0x34], 0
setne byte [ebp - 0x20]
mov al, byte [ebp - 0x20]
or al, cl
je loc_fffc41b3  ; je 0xfffc41b3
movzx eax, byte [ebp - 0x37]
xor esi, esi
xor edi, edi
cmp dword [ebp - 0x34], 0
sete dl
cmp dword [ebp - 0x30], 0
lea eax, [eax*8 + 0x4910]
mov dword [ebp - 0x24], eax
sete al
or dl, al
jne short loc_fffc404c  ; jne 0xfffc404c

loc_fffc4040:  ; not directly referenced
mov ecx, dword [ebp - 0x30]
mov eax, dword [ecx]
cmp eax, 0x1f
ja short loc_fffc406a  ; ja 0xfffc406a
jmp short loc_fffc4075  ; jmp 0xfffc4075

loc_fffc404c:  ; not directly referenced
mov edx, dword [ebp - 0x24]
mov eax, ebx
mov byte [ebp - 0x48], cl
call MCHBAR64
mov cl, byte [ebp - 0x48]
mov esi, eax
test cl, cl
mov edi, edx
je loc_fffc4149  ; je 0xfffc4149
jmp short loc_fffc4040  ; jmp 0xfffc4040

loc_fffc406a:  ; not directly referenced
dec eax
call mrc_highest_bit
movzx eax, al
jmp short loc_fffc4078  ; jmp 0xfffc4078

loc_fffc4075:  ; not directly referenced
sub eax, 0xffffffffffffff80

loc_fffc4078:  ; not directly referenced
mov ecx, eax
mov edx, edi
and ecx, 0x1f
and edx, 0xe0ffffff
shl ecx, 0x18
shr eax, 7
or edx, ecx
mov ecx, dword [ebp - 0x30]
and edx, 0x7fffffff
shl eax, 0x1f
mov edi, edx
or edi, eax
mov edx, dword [ecx + 4]
cmp edx, 0x1f
lea eax, [edx + 0x80]
jbe short loc_fffc40b6  ; jbe 0xfffc40b6
lea eax, [edx - 1]
call mrc_highest_bit
movzx eax, al

loc_fffc40b6:  ; not directly referenced
mov ecx, eax
mov edx, edi
and ecx, 0x1f
and edx, 0xfffe0fff
shl ecx, 0xc
shl eax, 0xc
or edx, ecx
mov ecx, dword [ebp - 0x30]
and edx, 0xfff7ffff
mov edi, edx
and eax, 0x80000
or edi, eax
mov edx, dword [ecx + 8]
cmp edx, 0xf
lea eax, [edx + 0x20]
jbe short loc_fffc40f3  ; jbe 0xfffc40f3
lea eax, [edx - 1]
call mrc_highest_bit
movzx eax, al

loc_fffc40f3:  ; not directly referenced
mov ecx, eax
mov edx, edi
and ecx, 0xf
and edx, 0xfffffff0
or edx, ecx
mov ecx, dword [ebp - 0x30]
and edx, 0xffffffdf
and eax, 0x20
mov edi, edx
or edi, eax
mov edx, dword [ecx + 0xc]
cmp edx, 0x1f
lea eax, [edx + 0x80]
jbe short loc_fffc4125  ; jbe 0xfffc4125
lea eax, [edx - 1]
call mrc_highest_bit
movzx eax, al

loc_fffc4125:  ; not directly referenced
mov ecx, eax
mov edx, esi
and ecx, 0x1f
and edx, 0xfffe0fff
shl ecx, 0xc
shl eax, 0xc
or edx, ecx
and edx, 0xfff7ffff
and eax, 0x80000
mov esi, edx
or esi, eax

loc_fffc4149:  ; not directly referenced
cmp byte [ebp - 0x20], 0
je short loc_fffc419c  ; je 0xfffc419c
mov ecx, dword [ebp - 0x34]
mov eax, edi
and eax, 0xff8fffff
movzx edx, byte [ecx]
and edx, 7
shl edx, 0x14
or eax, edx
movzx edx, byte [ecx + 2]
and eax, 0xfffffe3f
and edx, 7
mov edi, eax
shl edx, 6
mov eax, esi
or edi, edx
and eax, 0xfffff
movzx edx, word [ecx + 4]
shl edx, 0x14
or eax, edx
mov dl, byte [ebp - 0x36]
and dl, byte [ecx + 6]
and eax, 0xfffff807
movzx edx, dl
mov esi, eax
shl edx, 3
or esi, edx

loc_fffc419c:  ; not directly referenced
mov dword [ebp + 8], esi
mov dword [ebp + 0xc], edi
mov edx, dword [ebp - 0x24]
lea esp, [ebp - 0xc]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
jmp near MCHBAR_WRITE64  ; jmp 0xfffb210b

loc_fffc41b3:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc41bb:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x14]
mov byte [ebp - 0x11], dl
movzx edx, dl
imul ebx, edx, 0x1347
and cl, byte [eax + ebx + 0x3acb]
test cl, 0xf
jne short loc_fffc4208  ; jne 0xfffc4208
mov ecx, dword [eax + 0x103f]
lea ecx, [ecx + edx*4 + 0x4930]
mov dword [ecx], 0
mov eax, dword [eax + 0x103f]
lea edx, [eax + edx*8 + 0x48a8]
mov eax, dword [edx]
and ah, 0xf7
mov dword [edx], eax
xor eax, eax
jmp short loc_fffc427a  ; jmp 0xfffc427a

loc_fffc4208:  ; not directly referenced
movzx ecx, cl
xor ebx, ebx
xor edi, edi
mov byte [ebp - 0x1d], 0
mov dword [ebp - 0x18], ecx

loc_fffc4216:  ; not directly referenced
mov esi, dword [ebp - 0x18]
bt esi, ebx
jae short loc_fffc4234  ; jae 0xfffc4234
movzx esi, byte [ebp - 0x1d]
inc byte [ebp - 0x1d]
shl esi, 2
mov dword [ebp - 0x1c], esi
mov cl, byte [ebp - 0x1c]
mov esi, ebx
shl esi, cl
or edi, esi

loc_fffc4234:  ; not directly referenced
inc ebx
cmp ebx, 4
jne short loc_fffc4216  ; jne 0xfffc4216
mov ecx, dword [eax + 0x103f]
mov bl, byte [ebp - 0x1d]
dec ebx
lea ecx, [ecx + edx*4 + 0x4930]
mov dword [ecx], edi
mov ecx, dword [eax + 0x103f]
lea ecx, [ecx + edx*8 + 0x48ef]
mov byte [ecx], bl
mov eax, dword [eax + 0x103f]
mov cl, byte [ebp - 0x11]
lea edx, [eax + edx*8 + 0x48a8]
mov eax, dword [edx]
or ah, 8
mov dword [edx], eax
mov eax, 1
shl eax, cl

loc_fffc427a:  ; not directly referenced
lea esp, [esp + 0x14]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc4283:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
push ebx
mov ebx, edx
shl ebx, 0xa
lea esp, [esp - 0x3c]
mov al, byte [ebp + 8]
mov byte [ebp - 0x21], cl
mov byte [ebp - 0x22], al
mov eax, dword [esi + 0x103f]
mov byte [ebp - 0x38], 0
lea edx, [ebx + 0x41c0]
mov dword [ebp - 0x28], edx
lea eax, [ebx + eax + 0x41bc]
mov byte [eax], 0

loc_fffc42ba:  ; not directly referenced
mov al, byte [ebp - 0x38]
mov dword [ebp - 0x20], 0
shr al, 1
mov dword [ebp - 0x1c], 0
and eax, 1
xor edi, edi
mov dword [ebp - 0x40], eax
mov al, byte [ebp - 0x38]
and eax, 1
mov dword [ebp - 0x3c], 0
mov dword [ebp - 0x48], eax
mov dword [ebp - 0x44], 0

loc_fffc42ec:  ; not directly referenced
mov edx, edi
lea ecx, [edi + 0x15]
movzx eax, dl
div byte [ebp - 0x21]
cmp dl, 0x12
movzx eax, ah
ja short loc_fffc430a  ; ja 0xfffc430a
mov edx, edi
lea ecx, [edi + 8]
cmp dl, 0x10
cmovb ecx, edi

loc_fffc430a:  ; not directly referenced
cmp al, byte [ebp - 0x22]
jne short loc_fffc4317  ; jne 0xfffc4317
mov eax, dword [ebp - 0x48]
mov edx, dword [ebp - 0x44]
jmp short loc_fffc431d  ; jmp 0xfffc431d

loc_fffc4317:  ; not directly referenced
mov eax, dword [ebp - 0x40]
mov edx, dword [ebp - 0x3c]

loc_fffc431d:  ; not directly referenced
shld edx, eax, cl
shl eax, cl
test cl, 0x20
je short loc_fffc432b  ; je 0xfffc432b
mov edx, eax
xor eax, eax

loc_fffc432b:  ; not directly referenced
or eax, dword [ebp - 0x20]
inc edi
mov dword [ebp - 0x20], eax
mov eax, edi
or edx, dword [ebp - 0x1c]
cmp al, 0x16
mov dword [ebp - 0x1c], edx
jne short loc_fffc42ec  ; jne 0xfffc42ec
push eax
mov edx, dword [ebp - 0x28]
push eax
push dword [ebp - 0x1c]
push dword [ebp - 0x20]
mov eax, esi
call MCHBAR_WRITE64
inc byte [ebp - 0x38]
add esp, 0x10
cmp byte [ebp - 0x38], 8
jne loc_fffc42ba  ; jne 0xfffc42ba
mov eax, dword [esi + 0x103f]
lea eax, [ebx + eax + 0x41a0]
mov dword [eax], 0x222
mov eax, dword [esi + 0x103f]
lea eax, [ebx + eax + 0x41b0]
mov dword [eax], 0x6010102
mov eax, dword [esi + 0x103f]
lea eax, [ebx + eax + 0x41a4]
mov dword [eax], 0xea1
mov eax, dword [esi + 0x103f]
lea eax, [ebx + eax + 0x41a8]
mov dword [eax], 0xbeef
mov eax, dword [esi + 0x103f]
lea eax, [ebx + eax + 0x41ac]
mov dword [eax], 0xdead
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc43c7:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, eax
lea eax, [eax + 0x16be]
lea esp, [esp - 0x3c]
mov dword [ebp - 0x3c], eax
mov byte [ebp - 0x2b], 0
xor eax, eax
lea edx, [ebx + 0x2974]
mov dword [ebp - 0x44], edx
jmp near loc_fffc4508  ; jmp 0xfffc4508

loc_fffc43f0:  ; not directly referenced
movzx edx, byte [ebp - 0x2b]
mov ecx, dword [ebp - 0x3c]
imul eax, edx, 0x1347
mov dword [ebp - 0x34], edx
cmp dword [ecx + eax + 0x12be], 2
jne loc_fffc4503  ; jne 0xfffc4503
mov edx, dword [ebp - 0x44]
xor esi, esi
mov dword [ebp - 0x30], 0
lea edx, [edx + eax + 8]
add eax, ebx
mov dword [ebp - 0x38], edx
mov dword [ebp - 0x40], eax

loc_fffc4426:  ; not directly referenced
mov edx, dword [ebp - 0x40]
mov cl, byte [ebp - 0x30]
mov eax, 1
mov byte [ebp - 0x2c], cl
shl eax, cl
test byte [edx + 0x3acb], al
je loc_fffc44d7  ; je 0xfffc44d7
cmp byte [ebx + 0x1742], 0
je short loc_fffc4465  ; je 0xfffc4465
mov al, cl
mov ecx, dword [ebp - 0x38]
shr al, 1
movzx eax, al
imul eax, eax, 0xfb
mov si, word [ecx + eax + 0x123a]
jmp short loc_fffc44ca  ; jmp 0xfffc44ca

loc_fffc4465:  ; not directly referenced
mov al, byte [ebp - 0x2c]
mov edx, dword [ebp - 0x34]
shr al, 1
movzx edi, al
mov eax, ebx
mov ecx, edi
call fcn_fffb90cf  ; call 0xfffb90cf
test eax, eax
je loc_fffc451e  ; je 0xfffc451e
cmp dword [ebx + 0x1005], HASWELL_FAMILY_ULT
jne short loc_fffc4496  ; jne 0xfffc4496
cmp dword [ebx + 0x1749], 1
je short loc_fffc449c  ; je 0xfffc449c

loc_fffc4496:  ; not directly referenced
movzx ecx, byte [eax + 1]
jmp short loc_fffc449e  ; jmp 0xfffc449e

loc_fffc449c:  ; not directly referenced
xor ecx, ecx

loc_fffc449e:  ; not directly referenced
sub esp, 0xc
mov edx, ebx
push esi
imul edi, edi, 0xfb
lea eax, [ebp - 0x2a]
call fcn_fffb92d0  ; call 0xfffb92d0
add edi, dword [ebp - 0x38]
mov si, word [ebp - 0x2a]
add esp, 0x10
mov word [edi + 0x123a], si
mov word [edi + 0x1244], si

loc_fffc44ca:  ; not directly referenced
mov al, byte [ebp - 0x2c]
shr al, 1
movzx eax, al
mov word [ebp + eax*2 - 0x1c], si

loc_fffc44d7:  ; not directly referenced
add dword [ebp - 0x30], 2
cmp dword [ebp - 0x30], 4
jne loc_fffc4426  ; jne 0xfffc4426
push 0
lea eax, [ebp - 0x1c]
mov ecx, 0xf
push eax
mov edx, dword [ebp - 0x34]
mov eax, ebx
push 1
push 0
call fcn_fffb933f  ; call 0xfffb933f
add esp, 0x10
jmp short loc_fffc4505  ; jmp 0xfffc4505

loc_fffc4503:  ; not directly referenced
xor eax, eax

loc_fffc4505:  ; not directly referenced
inc byte [ebp - 0x2b]

loc_fffc4508:  ; not directly referenced
test eax, eax
sete cl
cmp byte [ebp - 0x2b], 1
setbe dl
test cl, dl
jne loc_fffc43f0  ; jne 0xfffc43f0
jmp short loc_fffc4523  ; jmp 0xfffc4523

loc_fffc451e:  ; not directly referenced
mov eax, 1

loc_fffc4523:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc452b:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x5c]
mov dword [ebp - 0x20], eax
mov al, byte [ebp + 0xc]
mov dword [ebp - 0x24], edx
mov byte [ebp - 0x1b], al
mov al, byte [ebp + 0x10]
mov byte [ebp - 0x1c], al
mov dword [ebp - 0x44], ecx
imul eax, edx, 0x1347
mov edx, dword [ebp - 0x20]
lea ecx, [ecx + ecx*8]
mov byte [ebp - 0x38], 0
mov dword [ebp - 0x48], ecx
lea esi, [edx + eax + 0x297c]
jmp near loc_fffc465e  ; jmp 0xfffc465e

loc_fffc4569:  ; not directly referenced
mov edx, dword [ebp + 8]
mov al, byte [ebp - 0x38]
movzx edi, byte [ebp - 0x38]
bt edx, eax
jae loc_fffc465b  ; jae 0xfffc465b
mov edx, dword [ebp - 0x48]
movsx cx, byte [ebp - 0x1b]
lea eax, [edi + edx + 0x130]
mov word [ebp - 0x1a], cx
add cx, word [esi + eax*2 + 0xd]
mov eax, ecx
js short loc_fffc45a7  ; js 0xfffc45a7
cmp cx, 0x1ff
mov ebx, 0x1ff
cmovbe ebx, eax
jmp short loc_fffc45a9  ; jmp 0xfffc45a9

loc_fffc45a7:  ; not directly referenced
xor ebx, ebx

loc_fffc45a9:  ; not directly referenced
push eax
movzx eax, bx
mov ecx, dword [ebp - 0x44]
push eax
mov edx, dword [ebp - 0x24]
mov eax, dword [ebp - 0x20]
push 0
push edi
call fcn_fffb0168  ; call 0xfffb0168
mov ecx, dword [ebp - 0x48]
mov eax, dword [ebp - 0x48]
add ecx, edi
mov dx, word [ebp - 0x1a]
mov dword [ebp - 0x28], ecx
add ecx, 0xe8
add eax, esi
mov dword [ebp - 0x3c], ecx
add esp, 0xc
add dx, word [esi + ecx*2 + 0xd]
movzx eax, byte [edi + eax + 0x309]
mov ecx, edx
mov edx, dword [ebp - 0x28]
and ecx, 0x1ff
add edx, 0x110
and eax, 0x3f
shl ecx, 9
mov dword [ebp - 0x40], edx
shl eax, 0x14
mov dword [ebp - 0x5c], ecx
mov cx, word [ebp - 0x1a]
or eax, dword [ebp - 0x5c]
add cx, word [esi + edx*2 + 5]
mov edx, dword [ebp - 0x24]
mov word [ebp - 0x58], cx
and ecx, 0x1ff
or eax, ecx
mov ecx, dword [ebp - 0x44]
push eax
mov eax, dword [ebp - 0x20]
push 3
push edi
call fcn_fffb02b4  ; call 0xfffb02b4
add esp, 0x10
cmp byte [ebp - 0x1c], 0
je short loc_fffc465b  ; je 0xfffc465b
mov eax, dword [ebp - 0x28]
mov edx, dword [ebp - 0x3c]
mov cx, word [ebp - 0x1a]
mov word [esi + eax*2 + 0x26d], bx
mov eax, dword [ebp - 0x40]
add word [esi + edx*2 + 0xd], cx
add word [esi + eax*2 + 5], cx

loc_fffc465b:  ; not directly referenced
inc byte [ebp - 0x38]

loc_fffc465e:  ; not directly referenced
mov eax, dword [ebp - 0x20]
mov dl, byte [ebp - 0x38]
cmp dl, byte [eax + 0x1755]
jb loc_fffc4569  ; jb 0xfffc4569
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc4678:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
push ebx
xor ebx, ebx
lea esp, [esp - 0x1c]
mov byte [ebp - 0x19], cl
movzx edi, byte [ebp + 8]
mov dword [ebp - 0x20], edx

loc_fffc4690:  ; not directly referenced
mov eax, dword [ebp - 0x20]
bt eax, ebx
jae short loc_fffc46c1  ; jae 0xfffc46c1
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x19]
and dl, byte [esi + eax + 0x3acb]
movzx eax, dl
je short loc_fffc46c1  ; je 0xfffc46c1
push 0
xor ecx, ecx
mov edx, ebx
push edi
push 3
push eax
mov eax, esi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc46c1:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc4690  ; jne 0xfffc4690
mov dword [ebp + 8], esi
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
jmp near fcn_fffbd7da  ; jmp 0xfffbd7da

fcn_fffc46d6:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x2c]
mov dword [ebp - 0x20], eax
add eax, 0x16be
mov byte [ebp - 0x22], dl
mov dword [ebp - 0x28], eax
mov eax, dword [ebp - 0x20]
mov edx, dword [ebp - 0x20]
mov dword [ebp - 0x30], ecx
add edx, 0x2974
mov dword [ebp - 0x1c], 0
mov dword [ebp - 0x34], edx
mov eax, dword [eax + 0x1749]
mov dword [ebp - 0x2c], eax

loc_fffc4710:  ; not directly referenced
imul eax, dword [ebp - 0x1c], 0x1347
mov ecx, dword [ebp - 0x28]
cmp dword [ecx + eax + 0x12be], 2
jne loc_fffc482f  ; jne 0xfffc482f
mov edx, dword [ebp - 0x34]
lea ebx, [edx + eax + 8]
mov al, byte [ebp - 0x22]
and al, byte [ebx + 0x114f]
je loc_fffc482f  ; je 0xfffc482f
mov edx, dword [ebp - 0x30]
mov ecx, dword [ebp - 0x1c]
movzx esi, al
mov eax, dword [ebp - 0x20]
mov cl, byte [edx + ecx]
mov edx, dword [ebp - 0x1c]
push 0
movzx edi, cl
mov byte [ebp - 0x21], cl
push edi
xor ecx, ecx
push 3
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10
xor eax, eax

loc_fffc4768:  ; not directly referenced
bt esi, eax
jae short loc_fffc4779  ; jae 0xfffc4779
movzx eax, byte [ebx + eax + 0x301]
add edi, eax
jmp short loc_fffc4781  ; jmp 0xfffc4781

loc_fffc4779:  ; not directly referenced
inc eax
cmp eax, 4
jne short loc_fffc4768  ; jne 0xfffc4768
xor edi, edi

loc_fffc4781:  ; not directly referenced
push 0
mov ecx, 4
mov edx, dword [ebp - 0x1c]
push edi
mov eax, dword [ebp - 0x20]
push 1
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
push 0
movzx edi, byte [ebp - 0x21]
mov eax, dword [ebx + 0x195]
add eax, edi
mov ecx, 2
push eax
mov edx, dword [ebp - 0x1c]
mov eax, dword [ebp - 0x20]
push 1
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20
mov ecx, 1
push 0
mov eax, dword [ebx + 0x19d]
mov edx, dword [ebp - 0x1c]
add eax, edi
push eax
mov eax, dword [ebp - 0x20]
push 1
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10
cmp dword [ebp - 0x2c], 2
jne short loc_fffc4810  ; jne 0xfffc4810
add dword [ebx + 0x195], edi
mov ecx, 2
push 0
mov eax, dword [ebx + 0x199]
mov edx, dword [ebp - 0x1c]
add eax, edi
push eax
mov eax, dword [ebp - 0x20]
push 2
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
sub dword [ebx + 0x195], edi
add esp, 0x10

loc_fffc4810:  ; not directly referenced
push 0
add edi, dword [ebx + 0x18d]
mov ecx, 3
push edi
mov edx, dword [ebp - 0x1c]
mov eax, dword [ebp - 0x20]
push 1
push esi
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc482f:  ; not directly referenced
inc dword [ebp - 0x1c]
cmp dword [ebp - 0x1c], 2
jne loc_fffc4710  ; jne 0xfffc4710
sub esp, 0xc
push dword [ebp - 0x20]
call fcn_fffbd7da  ; call 0xfffbd7da
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffc484f:
db 0x00

fcn_fffc4850:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x2e0]
mov esi, ref_fffcc198  ; mov esi, 0xfffcc198
push ebx
lea esp, [esp - 0x3ec]
mov dword [ebp - 0x34c], eax
mov al, byte [ebp + 0x2c]
mov dword [ebp - 0x3d0], ecx
mov byte [ebp - 0x37c], al
mov ecx, 0xb
xor eax, eax
mov bl, byte [ebp + 8]
rep stosd  ; rep stosd dword es:[edi], eax
mov byte [ebp - 0x3ca], bl
lea edi, [ebp - 0x321]
mov bl, byte [ebp + 0xc]
mov cl, 0xd
rep movsb  ; rep movsb byte es:[edi], byte ptr [esi]
mov byte [ebp - 0x368], bl
mov bl, byte [ebp + 0x10]
mov byte [ebp - 0x37b], bl
mov bl, byte [ebp + 0x14]
mov byte [ebp - 0x358], bl
lea edi, [ebp - 0x302]
mov bl, byte [ebp + 0x20]
mov esi, ref_fffcc1a8  ; mov esi, 0xfffcc1a8
mov cl, 4
mov byte [ebp - 0x3cb], bl
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov bl, byte [ebp + 0x24]
cmp dl, 0xc
mov byte [ebp - 0x38c], bl
mov bl, byte [ebp + 0x28]
mov byte [ebp - 0x379], dl
mov byte [ebp - 0x37a], bl
mov word [ebp - 0x2d8], 7
mov word [ebp - 0x2d2], 0x3ff
mov word [ebp - 0x2bc], 1
mov word [ebp - 0x2b6], 1
lea edi, [ebp - 0x288]
mov esi, ref_fffcc1b8  ; mov esi, 0xfffcc1b8
mov cl, 0xc
mov al, 0x14
rep movsd  ; rep movsd dword es:[edi], dword ptr [esi]
mov bl, 0xa
mov edx, 2
cmovne ebx, eax
lea eax, [ebp - 0x339]
mov byte [ebp - 0x33b], 0
mov byte [ebp - 0x33a], 0
mov byte [ebp - 0x3ab], bl
mov word [ebp - 0x32c], 0
mov dword [ebp - 0x32a], 0
mov dword [ebp - 0x326], 7
mov byte [ebp - 0x322], 0
call mrc_setmem
xor ecx, ecx
mov edx, 2
lea eax, [ebp - 0x337]
call mrc_setmem
xor ecx, ecx
mov edx, 0x10
lea eax, [ebp - 0x314]
call mrc_setmem
mov ecx, 0x2c
lea edx, [ebp - 0x2e0]
lea eax, [ebp - 0x2b4]
call mrc_memcpy
xor eax, eax

loc_fffc49a5:  ; not directly referenced
mov byte [ebp + eax - 0x335], al
inc eax
cmp eax, 9
jne short loc_fffc49a5  ; jne 0xfffc49a5
cmp byte [ebp - 0x379], 0xc
mov al, byte [ebp - 0x379]
sete byte [ebp - 0x396]
sub eax, 8
mov dword [ebp - 0x354], 1
movzx esi, byte [ebp - 0x396]
cmp al, 1
setbe dl
cmp byte [ebp - 0x379], 0xb
sete al
mov dword [ebp - 0x388], esi
or dl, al
jne short loc_fffc4a05  ; jne 0xfffc4a05
xor eax, eax
cmp byte [ebp - 0x379], 0xa
sete al
mov dword [ebp - 0x354], eax

loc_fffc4a05:  ; not directly referenced
mov ecx, dword [ebp - 0x34c]
mov dl, byte [ebp - 0x33a]
add ecx, 0x2974
mov al, byte [ebp - 0x33b]
movzx ebx, byte [ebp - 0x379]
mov dword [ebp - 0x350], 0
mov dword [ebp - 0x378], ecx
mov dword [ebp - 0x390], ebx

loc_fffc4a3a:  ; not directly referenced
imul ecx, dword [ebp - 0x350], 0x1347
mov edi, dword [ebp - 0x378]
lea esi, [edi + ecx + 8]
mov cl, byte [esi + 0x114f]
test cl, cl
je loc_fffc4aec  ; je 0xfffc4aec
mov bl, cl
and ebx, 0xc
cmp bl, 0xc
je short loc_fffc4a76  ; je 0xfffc4a76
mov bl, cl
and ebx, 3
cmp bl, 3
sete bl
movzx ebx, bl
jmp short loc_fffc4a7b  ; jmp 0xfffc4a7b

loc_fffc4a76:  ; not directly referenced
mov ebx, 1

loc_fffc4a7b:  ; not directly referenced
test byte [ebp - 0x37a], cl
je short loc_fffc4aec  ; je 0xfffc4aec
mov cl, byte [ebp - 0x350]
mov edi, 1
shl edi, cl
mov ecx, dword [ebp - 0x390]
mov cl, byte [ebp + ecx - 0x321]
mov byte [ebp - 0x384], cl
and cl, 2
je short loc_fffc4ab6  ; je 0xfffc4ab6
mov cl, dl
or ecx, edi
cmp dword [esi + 0xf5], 2
cmove edx, ecx

loc_fffc4ab6:  ; not directly referenced
test byte [ebp - 0x384], 1
je short loc_fffc4ac3  ; je 0xfffc4ac3
test ebx, ebx
jne short loc_fffc4acc  ; jne 0xfffc4acc

loc_fffc4ac3:  ; not directly referenced
cmp dword [ebp - 0x388], 0
je short loc_fffc4ace  ; je 0xfffc4ace

loc_fffc4acc:  ; not directly referenced
or eax, edi

loc_fffc4ace:  ; not directly referenced
cmp dword [ebp - 0x354], 0
je short loc_fffc4aec  ; je 0xfffc4aec
movzx ebx, al
mov cl, byte [ebp - 0x350]
sar ebx, cl
mov cl, al
or ecx, edi
and bl, 1
cmove eax, ecx

loc_fffc4aec:  ; not directly referenced
inc dword [ebp - 0x350]
cmp dword [ebp - 0x350], 2
jne loc_fffc4a3a  ; jne 0xfffc4a3a
mov bl, byte [ebp - 0x368]
cmp byte [ebp - 0x37b], bl
setle cl
mov byte [ebp - 0x33a], dl
or dl, al
mov byte [ebp - 0x33b], al
sete al
mov edi, edx
or cl, al
je short loc_fffc4b34  ; je 0xfffc4b34

loc_fffc4b25:  ; not directly referenced
mov dword [ebp - 0x380], 1
jmp near loc_fffc5836  ; jmp 0xfffc5836

loc_fffc4b34:  ; not directly referenced
mov eax, dword [ebp - 0x34c]
mov byte [eax + 0x1768], 3
mov al, byte [ebp - 0x379]
sub eax, 6
cmp al, 1
ja short loc_fffc4b69  ; ja 0xfffc4b69
mov eax, dword [ebp - 0x34c]
mov ebx, 1
mov ecx, 4
mov byte [eax + 0x1768], 5
mov al, 0xd
jmp short loc_fffc4b8b  ; jmp 0xfffc4b8b

loc_fffc4b69:  ; not directly referenced
cmp dword [ebp - 0x354], 0
je short loc_fffc4b92  ; je 0xfffc4b92
mov eax, dword [ebp - 0x34c]
mov ebx, 1
mov ecx, 5
mov byte [eax + 0x1768], 6
mov al, 0xd

loc_fffc4b8b:  ; not directly referenced
mov esi, 0x80
jmp short loc_fffc4bb4  ; jmp 0xfffc4bb4

loc_fffc4b92:  ; not directly referenced
cmp byte [ebp - 0x396], 1
sbb eax, eax
xor ebx, ebx
and eax, 0xfffffffd
xor ecx, ecx
add eax, 0x10
cmp byte [ebp - 0x396], 1
sbb esi, esi
and esi, 0x7c
add esi, 4

loc_fffc4bb4:  ; not directly referenced
mov edx, dword [ebp - 0x34c]
mov dword [ebp - 0x2a0], ebx
movzx eax, al
mov dl, byte [edx + 0x1768]
mov word [ebp - 0x32c], ax
push 0
mov eax, edi
mov dword [ebp - 0x294], ebx
push 0
movzx edi, al
lea eax, [ebp - 0x32c]
push 0
movzx ebx, byte [ebp - 0x358]
mov byte [ebp - 0x322], dl
push eax
lea eax, [ebp - 0x2b4]
mov edx, edi
push 0
movzx esi, si
mov dword [ebp - 0x3b0], edi
push eax
mov eax, dword [ebp - 0x34c]
push ebx
push esi
call fcn_fffb2650  ; call 0xfffb2650
add esp, 0x20
lea eax, [esi - 1]
call mrc_highest_bit
movzx eax, al
mov ecx, ebx
sub ecx, eax
mov eax, 1
mov ebx, eax
mov dl, 1
shl ebx, cl
mov ecx, dword [ebp - 0x34c]
test bl, bl
cmovg edx, ebx
mov bl, byte [ebp - 0x379]
sub ebx, 0xa
mov byte [ecx + 0x1769], dl
mov cl, byte [ecx + 0x1755]
cmp bl, 1
mov byte [ebp - 0x3ac], bl
setbe bl
shl eax, cl
mov byte [ebp - 0x354], cl
movzx ebx, bl
dec eax
cmp byte [ebp - 0x379], 0xa
mov dword [ebp - 0x3c4], ebx
mov byte [ebp - 0x3c9], al
jne short loc_fffc4c89  ; jne 0xfffc4c89
mov byte [ebp - 0x350], 1
jmp short loc_fffc4ca8  ; jmp 0xfffc4ca8

loc_fffc4c89:  ; not directly referenced
mov al, byte [ebp - 0x368]
mov bl, byte [ebp - 0x37b]
mov byte [ebp - 0x368], bl
mov byte [ebp - 0x37b], al
mov byte [ebp - 0x350], 0xff

loc_fffc4ca8:  ; not directly referenced
mov al, byte [ebp - 0x350]
mov bl, byte [ebp - 0x368]
imul eax, dword [ebp - 0x37c]
lea edx, [ebp - 0x2f2]
sub ebx, eax
mov byte [ebp - 0x37c], al
mov dword [ebp - 0x39c], edx
xor esi, esi
mov byte [ebp - 0x395], bl

loc_fffc4cd7:  ; not directly referenced
imul eax, esi, 0x1347
mov edi, dword [ebp - 0x34c]
cmp dword [edi + eax + 0x297c], 2
je short loc_fffc4d30  ; je 0xfffc4d30

loc_fffc4ced:  ; not directly referenced
inc esi
add dword [ebp - 0x39c], 9
cmp esi, 2
jne short loc_fffc4cd7  ; jne 0xfffc4cd7
movzx esi, byte [ebp - 0x38c]
mov bl, byte [ebp - 0x368]
imul edi, esi, 0x90
mov byte [ebp - 0x395], bl
xor eax, eax
mov dword [ebp - 0x380], 0
mov dword [ebp - 0x3c8], esi
mov dword [ebp - 0x3e4], edi
jmp near loc_fffc56ce  ; jmp 0xfffc56ce

loc_fffc4d30:  ; not directly referenced
imul edx, esi, 0x12
lea ecx, [ebp - 0x258]
add ecx, edx
xor eax, eax
mov dword [ebp - 0x394], ecx
jmp near loc_fffc4dd6  ; jmp 0xfffc4dd6

loc_fffc4d48:  ; not directly referenced
mov edi, dword [ebp - 0x39c]
mov bl, byte [ebp - 0x395]
lea edx, [eax + eax]
mov byte [ebp - 0x384], 0
mov dword [ebp - 0x358], edx
mov byte [edi + eax], bl
jmp short loc_fffc4da4  ; jmp 0xfffc4da4

loc_fffc4d69:  ; not directly referenced
imul ecx, ebx, 0x24
mov edi, dword [ebp - 0x378]
inc ebx
mov word [edi + ecx], 0x500

loc_fffc4d79:  ; not directly referenced
cmp byte [ebp - 0x3cb], bl
ja short loc_fffc4d69  ; ja 0xfffc4d69
add edx, 0x48
cmp edx, 0x90
je short loc_fffc4d9e  ; je 0xfffc4d9e

loc_fffc4d8c:  ; not directly referenced
mov ecx, dword [ebp - 0x380]
xor ebx, ebx
add ecx, edx
mov dword [ebp - 0x378], ecx
jmp short loc_fffc4d79  ; jmp 0xfffc4d79

loc_fffc4d9e:  ; not directly referenced
inc byte [ebp - 0x384]

loc_fffc4da4:  ; not directly referenced
mov bl, byte [ebp - 0x3ca]
cmp byte [ebp - 0x384], bl
je short loc_fffc4dd5  ; je 0xfffc4dd5
movzx edx, byte [ebp - 0x384]
imul edx, edx, 0x90
add edx, dword [ebp - 0x358]
add edx, dword [ebp - 0x394]
mov dword [ebp - 0x380], edx
xor edx, edx
jmp short loc_fffc4d8c  ; jmp 0xfffc4d8c

loc_fffc4dd5:  ; not directly referenced
inc eax

loc_fffc4dd6:  ; not directly referenced
cmp byte [ebp - 0x354], al
ja loc_fffc4d48  ; ja 0xfffc4d48
jmp near loc_fffc4ced  ; jmp 0xfffc4ced

loc_fffc4de7:  ; not directly referenced
test al, al
je short loc_fffc4dfd  ; je 0xfffc4dfd

loc_fffc4deb:  ; not directly referenced
cmp dword [ebp - 0x388], 1
jne loc_fffc5705  ; jne 0xfffc5705
jmp near loc_fffc56ed  ; jmp 0xfffc56ed

loc_fffc4dfd:  ; not directly referenced
mov al, byte [ebp - 0x368]
sub al, byte [ebp - 0x395]
imul eax, dword [ebp - 0x350]
mov byte [ebp - 0x397], al
dec al
sete al
test byte [ebp - 0x396], al
je short loc_fffc4e47  ; je 0xfffc4e47
add cl, byte [ebp - 0x395]
mov bl, byte [ebp - 0x37b]
neg byte [ebp - 0x350]
mov byte [ebp - 0x395], dl
mov byte [ebp - 0x368], bl
mov byte [ebp - 0x37b], cl

loc_fffc4e47:  ; not directly referenced
mov bl, byte [ebp - 0x368]
xor esi, esi
shl ebx, 0x18
movzx edi, byte [ebp - 0x379]
mov dword [ebp - 0x358], ebx
movzx ebx, byte [ebp - 0x368]
mov dword [ebp - 0x38c], ebx

loc_fffc4e6c:  ; not directly referenced
imul eax, esi, 0x1347
mov edx, dword [ebp - 0x34c]
mov ebx, dword [ebp - 0x3b0]
bt ebx, esi
mov al, byte [edx + eax + 0x3acb]
jb short loc_fffc4e95  ; jb 0xfffc4e95

loc_fffc4e8a:  ; not directly referenced
inc esi
cmp esi, 2
jne short loc_fffc4e6c  ; jne 0xfffc4e6c
jmp near loc_fffc4f75  ; jmp 0xfffc4f75

loc_fffc4e95:  ; not directly referenced
and al, byte [ebp - 0x37a]
mov byte [ebp - 0x378], al
je short loc_fffc4e8a  ; je 0xfffc4e8a
mov eax, dword [ebp - 0x34c]
lea edx, [esi*8]
lea ecx, [edx + 0x48dc]
mov ebx, ecx
add edx, 0x48ec
mov byte [ebp - 0x354], 1
add ebx, dword [eax + 0x103f]
mov eax, dword [ebx]
xor al, al
or eax, edi
mov dword [ebx], eax
mov ebx, dword [ebp - 0x34c]
mov eax, dword [ebx + 0x103f]
lea ecx, [ecx + eax - 4]
mov eax, dword [ecx]
and eax, 0xffffff
or eax, dword [ebp - 0x358]
mov dword [ecx], eax
mov ecx, dword [ebx + 0x103f]
add ecx, edx
mov eax, dword [ecx]
xor al, al
or eax, edi
mov dword [ecx], eax
mov eax, dword [ebx + 0x103f]
lea edx, [edx + eax - 4]
mov eax, dword [edx]
and eax, 0xffffff
or eax, dword [ebp - 0x358]
cmp dword [ebp - 0x3c4], 0
mov dword [edx], eax
je short loc_fffc4f30  ; je 0xfffc4f30
mov bl, byte [ebx + 0x1755]
mov byte [ebp - 0x354], bl

loc_fffc4f30:  ; not directly referenced
movzx eax, byte [ebp - 0x378]
xor ebx, ebx
mov dword [ebp - 0x378], eax
jmp short loc_fffc4f68  ; jmp 0xfffc4f68

loc_fffc4f41:  ; not directly referenced
sub esp, 0xc
mov ecx, ebx
push dword [ebp - 0x378]
mov edx, esi
mov eax, dword [ebp - 0x34c]
push 0
inc ebx
push 0
push dword [ebp - 0x38c]
push edi
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x20

loc_fffc4f68:  ; not directly referenced
cmp byte [ebp - 0x354], bl
ja short loc_fffc4f41  ; ja 0xfffc4f41
jmp near loc_fffc4e8a  ; jmp 0xfffc4e8a

loc_fffc4f75:  ; not directly referenced
lea ebx, [ebp - 0x258]
mov dword [ebp - 0x38c], 0
mov dword [ebp - 0x3b4], ebx
jmp short loc_fffc4fbe  ; jmp 0xfffc4fbe

loc_fffc4f8d:  ; not directly referenced
add dword [ebp - 0x3b4], 0x48
cmp byte [ebp - 0x358], 0
mov dword [ebp - 0x38c], 1
je short loc_fffc4fbe  ; je 0xfffc4fbe

loc_fffc4fa7:  ; not directly referenced
mov bl, byte [ebp - 0x350]
mov al, byte [ebp - 0x358]
add byte [ebp - 0x368], bl
jmp near loc_fffc56ce  ; jmp 0xfffc56ce

loc_fffc4fbe:  ; not directly referenced
mov ebx, dword [ebp - 0x38c]
mov bl, byte [ebp + ebx - 0x33b]
test bl, bl
mov byte [ebp - 0x3aa], bl
je loc_fffc56b5  ; je 0xfffc56b5
imul eax, dword [ebp - 0x38c], 6
xor edi, edi
movzx esi, bl
mov dword [ebp - 0x378], eax
mov dword [ebp - 0x354], esi

loc_fffc4ff1:  ; not directly referenced
mov ebx, dword [ebp - 0x354]
bt ebx, edi
jae loc_fffc50a1  ; jae 0xfffc50a1
imul eax, edi, 0x1347
mov esi, dword [ebp - 0x34c]
mov cl, byte [ebp - 0x37a]
and cl, byte [esi + eax + 0x3acb]
je loc_fffc50a1  ; je 0xfffc50a1
cmp dword [ebp - 0x388], 0
mov eax, 0x3210
jne short loc_fffc504a  ; jne 0xfffc504a
movzx edx, cl
movzx edx, byte [ebp + edx - 0x302]
cmp dl, 0xf
je short loc_fffc504a  ; je 0xfffc504a
add edx, dword [ebp - 0x378]
mov eax, dword [ebp + edx*4 - 0x288]

loc_fffc504a:  ; not directly referenced
movzx ecx, cl
xor ebx, ebx
xor edx, edx
mov dword [ebp - 0x358], ecx
jmp short loc_fffc5078  ; jmp 0xfffc5078

loc_fffc5059:  ; not directly referenced
mov esi, eax
mov ecx, dword [ebp - 0x358]
shr eax, 4
and esi, 0xf
bt ecx, esi
jae short loc_fffc5078  ; jae 0xfffc5078
lea ecx, [edx*4]
inc edx
shl esi, cl
or ebx, esi

loc_fffc5078:  ; not directly referenced
test eax, eax
jne short loc_fffc5059  ; jne 0xfffc5059
mov esi, dword [ebp - 0x34c]
dec edx
mov eax, dword [esi + 0x103f]
lea eax, [eax + edi*4 + 0x4930]
mov dword [eax], ebx
mov eax, dword [esi + 0x103f]
lea eax, [eax + edi*8 + 0x48ef]
mov byte [eax], dl

loc_fffc50a1:  ; not directly referenced
inc edi
cmp edi, 2
jne loc_fffc4ff1  ; jne 0xfffc4ff1
mov edi, dword [ebp - 0x354]
mov ebx, dword [ebp + 0x1c]
and edi, 2
mov esi, dword [ebp - 0x3b4]
mov dword [ebp - 0x3dc], edi
mov dword [ebp - 0x3a0], ebx
mov dword [ebp - 0x3c0], esi
mov byte [ebp - 0x358], 0
jmp near loc_fffc569e  ; jmp 0xfffc569e

loc_fffc50db:  ; not directly referenced
cmp byte [ebp - 0x358], 0
jne loc_fffc56bc  ; jne 0xfffc56bc
mov edi, dword [ebp - 0x3a0]
cmp dword [ebp - 0x388], 0
mov bl, byte [edi]
je short loc_fffc513f  ; je 0xfffc513f
test byte [ebp - 0x3aa], 1
mov al, byte [ebp - 0x358]
cmovne eax, ebx
cmp dword [ebp - 0x3dc], 0
mov byte [ebp - 0x337], al
mov al, byte [ebp - 0x358]
cmove ebx, eax
lea ecx, [ebp - 0x337]
movzx edx, byte [ebp - 0x37a]
mov eax, dword [ebp - 0x34c]
mov byte [ebp - 0x336], bl
call fcn_fffc46d6  ; call 0xfffc46d6
jmp short loc_fffc51b2  ; jmp 0xfffc51b2

loc_fffc513f:  ; not directly referenced
cmp byte [ebp - 0x38c], 1
jne short loc_fffc5174  ; jne 0xfffc5174
sub esp, 0xc
mov ecx, 3
movzx eax, bl
neg ebx
push eax
mov edx, dword [ebp - 0x354]
mov eax, dword [ebp - 0x34c]
movzx ebx, bl
call fcn_fffc4678  ; call 0xfffc4678
mov dword [esp], ebx
mov ecx, 0xc
jmp short loc_fffc519e  ; jmp 0xfffc519e

loc_fffc5174:  ; not directly referenced
sub esp, 0xc
mov ecx, 5
movzx eax, bl
neg ebx
push eax
mov edx, dword [ebp - 0x354]
mov eax, dword [ebp - 0x34c]
movzx ebx, bl
call fcn_fffc4678  ; call 0xfffc4678
mov dword [esp], ebx
mov ecx, 0xa

loc_fffc519e:  ; not directly referenced
mov edx, dword [ebp - 0x354]
mov eax, dword [ebp - 0x34c]
call fcn_fffc4678  ; call 0xfffc4678
add esp, 0x10

loc_fffc51b2:  ; not directly referenced
mov ecx, dword [ebp - 0x3d0]
mov ebx, dword [ebp - 0x3c0]
mov dword [ebp - 0x3a8], ecx
mov dword [ebp - 0x3bc], ebx
jmp near loc_fffc561f  ; jmp 0xfffc561f

loc_fffc51cf:  ; not directly referenced
mov esi, dword [ebp - 0x3a8]
mov bl, byte [esi]
test bl, bl
je loc_fffc4b25  ; je 0xfffc4b25
movzx ecx, bl
cmp bl, 0x21
mov dword [ebp - 0x390], ecx
mov byte [ebp - 0x378], 0
ja short loc_fffc5200  ; ja 0xfffc5200
mov al, byte [ecx + ref_fffcc308]  ; mov al, byte [ecx - 0x33cf8]
mov byte [ebp - 0x378], al

loc_fffc5200:  ; not directly referenced
xor ecx, ecx
mov edx, dword [ebp - 0x390]
mov eax, dword [ebp - 0x34c]
call fcn_fffb2de8  ; call 0xfffb2de8
cmp bl, 0x10
mov word [ebp - 0x3d2], ax
sete dl
cmp bl, 4
sete al
or dl, al
jne short loc_fffc5254  ; jne 0xfffc5254
cmp bl, 5
sete dl
cmp bl, 0x20
sete al
or dl, al
jne short loc_fffc5254  ; jne 0xfffc5254
cmp bl, 0x21
sete al
cmp bl, 0x11
sete dl
or eax, edx
cmp al, 1
sbb ebx, ebx
and ebx, 0xffffffe9
add ebx, 0x36
jmp short loc_fffc5256  ; jmp 0xfffc5256

loc_fffc5254:  ; not directly referenced
mov bl, 0x36

loc_fffc5256:  ; not directly referenced
xor eax, eax
mov dl, 1

loc_fffc525a:  ; not directly referenced
mov esi, dword [ebp - 0x354]
bt esi, eax
jae short loc_fffc52b0  ; jae 0xfffc52b0
imul edi, eax, 0x1347
mov esi, dword [ebp - 0x34c]
mov cl, byte [ebp - 0x37a]
test byte [esi + edi + 0x3acb], cl
je short loc_fffc52b0  ; je 0xfffc52b0
cmp byte [ebp - 0x3ac], 2
ja short loc_fffc52a0  ; ja 0xfffc52a0
mov cl, byte [ebp - 0x3c9]
mov esi, 0
cmp byte [ebp + eax - 0x339], cl
cmovne edx, esi
jmp short loc_fffc52b0  ; jmp 0xfffc52b0

loc_fffc52a0:  ; not directly referenced
cmp byte [ebp + eax - 0x339], 0
mov edi, 0
cmove edx, edi

loc_fffc52b0:  ; not directly referenced
inc eax
cmp eax, 2
jne short loc_fffc525a  ; jne 0xfffc525a
test dl, dl
jne loc_fffc5639  ; jne 0xfffc5639
push edx
mov eax, dword [ebp - 0x34c]
mov ecx, dword [ebp - 0x390]
push edx
add eax, 0x1774
push 0xf
mov dword [ebp - 0x3b8], eax
mov edx, eax
push 0
mov eax, dword [ebp - 0x34c]
call fcn_fffb0bed  ; call 0xfffb0bed
add esp, 0x10
test eax, eax
mov dword [ebp - 0x380], eax
jne loc_fffc5836  ; jne 0xfffc5836
push eax
movzx ebx, bl
mov ecx, dword [ebp - 0x354]
push eax
lea eax, [ebp - 0x314]
mov edx, dword [ebp - 0x3b8]
push eax
lea eax, [ebp - 0x335]
push ebx
push eax
push dword [ebp - 0x390]
mov eax, dword [ebp - 0x34c]
push 0xff
push dword [ebp - 0x3c8]
call fcn_fffc69bc  ; call 0xfffc69bc
add esp, 0x20
test eax, eax
mov dword [ebp - 0x380], eax
jne loc_fffc5836  ; jne 0xfffc5836
mov ebx, dword [ebp - 0x3bc]
xor esi, esi
movzx eax, byte [ebp - 0x3ab]
mov dword [ebp - 0x394], ebx
movzx edi, byte [ebp - 0x378]
mov ebx, 0x64
sub ebx, eax
mov al, byte [ebp - 0x37c]
imul edi, edi, 0x240
mov dword [ebp - 0x3e0], ebx
mov bl, byte [ebp - 0x368]
sub ebx, dword [ebp - 0x350]
add edi, dword [ebp + 0x18]
sub ebx, eax
mov dword [ebp - 0x3d8], edi
mov byte [ebp - 0x398], 1
lea edi, [ebp - 0x2f2]
mov byte [ebp - 0x3a9], bl

loc_fffc53a5:  ; not directly referenced
imul eax, esi, 0x1347
mov edx, dword [ebp - 0x34c]
mov ebx, dword [ebp - 0x354]
bt ebx, esi
mov al, byte [edx + eax + 0x3acb]
jae loc_fffc55c9  ; jae 0xfffc55c9
test byte [ebp - 0x37a], al
je loc_fffc55c9  ; je 0xfffc55c9
imul eax, esi, 0x48
mov bl, byte [edx + 0x1755]
mov byte [ebp - 0x3d3], bl
mov ebx, dword [ebp - 0x3e4]
xor ecx, ecx
lea eax, [eax + ebx + 4]
add eax, dword [ebp - 0x3d8]
mov dword [ebp - 0x3a4], eax
jmp near loc_fffc55bd  ; jmp 0xfffc55bd

loc_fffc53ff:  ; not directly referenced
mov ebx, 1
shl ebx, cl
mov byte [ebp - 0x378], bl
mov ebx, dword [ebp - 0x3a4]
mov ebx, dword [ebx]
movzx edx, bx
mov ebx, dword [ebp - 0x3a4]
mov ebx, dword [ebx - 4]
movzx eax, bx
mov ebx, edx
mov word [ebp - 0x3ee], ax
add eax, edx
add eax, eax
mov word [ebp - 0x384], ax
mov eax, edx
sub ax, word [ebp - 0x3ee]
mov edx, dword [ebp - 0x384]
mov word [ebp - 0x39c], ax
mov eax, dword [ebp - 0x384]
add edx, dword [ebp - 0x39c]
sub eax, dword [ebp - 0x39c]
cmp bx, word [ebp - 0x3ee]
mov ebx, 2
cmovbe eax, edx
mov edx, eax
sar dx, 0xf
idiv bx
mov bl, byte [ebp + esi - 0x339]
mov dl, byte [ebp - 0x378]
and dl, bl
mov byte [ebp - 0x3ee], bl
mov byte [ebp - 0x384], dl
je short loc_fffc54a1  ; je 0xfffc54a1
cmp dword [ebp - 0x388], 0
je loc_fffc55b5  ; je 0xfffc55b5

loc_fffc54a1:  ; not directly referenced
cmp ax, word [ebp - 0x3d2]
jae short loc_fffc54e9  ; jae 0xfffc54e9
cmp dword [ebp - 0x388], 1
jne loc_fffc554d  ; jne 0xfffc554d
cmp byte [ebp - 0x397], 0
mov byte [ebp - 0x398], 0
jne loc_fffc55b5  ; jne 0xfffc55b5
mov bl, byte [ebp - 0x3c9]
mov al, byte [ebp - 0x397]
mov byte [ebp + esi - 0x339], bl
mov byte [ebp - 0x398], al
jmp near loc_fffc55b5  ; jmp 0xfffc55b5

loc_fffc54e9:  ; not directly referenced
cmp byte [ebp - 0x397], 0
jne short loc_fffc550b  ; jne 0xfffc550b
mov ebx, dword [ebp - 0x394]
cmp word [ebx + ecx*2], ax
jbe loc_fffc55b5  ; jbe 0xfffc55b5
mov word [ebx + ecx*2], ax
jmp near loc_fffc55b5  ; jmp 0xfffc55b5

loc_fffc550b:  ; not directly referenced
movzx eax, ax
mov ebx, dword [ebp - 0x394]
mov dword [ebp - 0x39c], eax
movzx ebx, word [ebx + ecx*2]
imul ebx, dword [ebp - 0x3e0]
mov eax, ebx
mov dword [ebp - 0x3f4], ebx
cdq
mov ebx, 0x64
idiv ebx
cmp dword [ebp - 0x39c], eax
jge short loc_fffc556b  ; jge 0xfffc556b
cmp dword [ebp - 0x388], 0
mov byte [ebp - 0x398], 0
jne short loc_fffc55b5  ; jne 0xfffc55b5

loc_fffc554d:  ; not directly referenced
mov bl, byte [ebp - 0x3ee]
or ebx, dword [ebp - 0x378]
mov byte [ebp + esi - 0x339], bl
mov bl, byte [ebp - 0x3a9]
mov byte [edi + ecx], bl
jmp short loc_fffc55b5  ; jmp 0xfffc55b5

loc_fffc556b:  ; not directly referenced
cmp dword [ebp - 0x388], 1
jne short loc_fffc55a6  ; jne 0xfffc55a6
mov bl, byte [ebp - 0x378]
cmp byte [ebp - 0x384], bl
je short loc_fffc55b5  ; je 0xfffc55b5
mov al, byte [ebp - 0x368]
mov bl, byte [ebp - 0x3ee]
sub eax, dword [ebp - 0x37c]
or ebx, dword [ebp - 0x378]
mov byte [edi + ecx], al
mov byte [ebp + esi - 0x339], bl
jmp short loc_fffc55b5  ; jmp 0xfffc55b5

loc_fffc55a6:  ; not directly referenced
mov al, byte [ebp - 0x368]
sub eax, dword [ebp - 0x37c]
mov byte [edi + ecx], al

loc_fffc55b5:  ; not directly referenced
inc ecx
add dword [ebp - 0x3a4], 8

loc_fffc55bd:  ; not directly referenced
cmp byte [ebp - 0x3d3], cl
ja loc_fffc53ff  ; ja 0xfffc53ff

loc_fffc55c9:  ; not directly referenced
inc esi
add dword [ebp - 0x394], 0x12
add edi, 9
cmp esi, 2
jne loc_fffc53a5  ; jne 0xfffc53a5
cmp byte [ebp - 0x398], 0
je short loc_fffc560f  ; je 0xfffc560f
sub esp, 0xc
mov ecx, dword [ebp - 0x390]
push dword [ebp - 0x3c8]
mov edx, dword [ebp - 0x3b8]
mov eax, dword [ebp - 0x34c]
call fcn_fffb0b1b  ; call 0xfffb0b1b
mov dword [ebp - 0x380], eax
add esp, 0x10

loc_fffc560f:  ; not directly referenced
add dword [ebp - 0x3bc], 0x90
inc dword [ebp - 0x3a8]

loc_fffc561f:  ; not directly referenced
mov al, byte [ebp - 0x3a8]
sub eax, dword [ebp - 0x3d0]
cmp al, byte [ebp - 0x3ca]
jb loc_fffc51cf  ; jb 0xfffc51cf
jmp short loc_fffc5640  ; jmp 0xfffc5640

loc_fffc5639:  ; not directly referenced
mov byte [ebp - 0x358], 1

loc_fffc5640:  ; not directly referenced
cmp dword [ebp - 0x388], 0
je short loc_fffc5671  ; je 0xfffc5671
movzx edx, byte [ebp - 0x37a]
lea ecx, [ebp - 0x337]
mov eax, dword [ebp - 0x34c]
mov byte [ebp - 0x337], 0
mov byte [ebp - 0x336], 0
call fcn_fffc46d6  ; call 0xfffc46d6
jmp short loc_fffc5691  ; jmp 0xfffc5691

loc_fffc5671:  ; not directly referenced
sub esp, 0xc
mov edx, dword [ebp - 0x354]
push 0
movzx ecx, byte [ebp - 0x37a]
mov eax, dword [ebp - 0x34c]
call fcn_fffc4678  ; call 0xfffc4678
add esp, 0x10

loc_fffc5691:  ; not directly referenced
add dword [ebp - 0x3c0], 0x24
inc dword [ebp - 0x3a0]

loc_fffc569e:  ; not directly referenced
mov al, byte [ebp - 0x3a0]
sub eax, dword [ebp + 0x1c]
cmp al, byte [ebp - 0x3cb]
jb loc_fffc50db  ; jb 0xfffc50db
jmp short loc_fffc56bc  ; jmp 0xfffc56bc

loc_fffc56b5:  ; not directly referenced
mov byte [ebp - 0x358], 0

loc_fffc56bc:  ; not directly referenced
cmp dword [ebp - 0x38c], 1
je loc_fffc4fa7  ; je 0xfffc4fa7
jmp near loc_fffc4f8d  ; jmp 0xfffc4f8d

loc_fffc56ce:  ; not directly referenced
mov cl, byte [ebp - 0x350]
mov dl, byte [ebp - 0x37b]
add edx, ecx
cmp byte [ebp - 0x368], dl
jne loc_fffc4de7  ; jne 0xfffc4de7
jmp near loc_fffc4deb  ; jmp 0xfffc4deb

loc_fffc56ed:  ; not directly referenced
mov bl, byte [ebp - 0x395]
add ebx, dword [ebp - 0x350]
mov byte [ebp - 0x37b], bl
neg byte [ebp - 0x350]

loc_fffc5705:  ; not directly referenced
movzx edi, byte [ebp - 0x379]
xor esi, esi
mov dword [ebp - 0x354], edi

loc_fffc5714:  ; not directly referenced
mov ebx, dword [ebp - 0x3b0]
bt ebx, esi
jae loc_fffc582c  ; jae 0xfffc582c
imul eax, esi, 0x1347
mov edi, dword [ebp - 0x34c]
mov bl, byte [ebp - 0x37a]
and bl, byte [edi + eax + 0x3acb]
mov byte [ebp - 0x379], bl
je loc_fffc582c  ; je 0xfffc582c
lea edi, [esi + esi*8]
lea eax, [ebp - 0x18]
movzx ebx, byte [ebp - 0x37b]
mov byte [ebp - 0x368], 0
add edi, eax
jmp near loc_fffc57e3  ; jmp 0xfffc57e3

loc_fffc5763:  ; not directly referenced
cmp byte [ebp - 0x350], 1
jne short loc_fffc5782  ; jne 0xfffc5782
movzx eax, byte [ebp - 0x368]
movzx eax, byte [eax + edi - 0x2da]
cmp bl, al
cmovg ebx, eax
jmp short loc_fffc579f  ; jmp 0xfffc579f

loc_fffc5782:  ; not directly referenced
cmp byte [ebp - 0x350], 0xff
jne short loc_fffc579f  ; jne 0xfffc579f
movzx eax, byte [ebp - 0x368]
movzx eax, byte [eax + edi - 0x2da]
cmp bl, al
cmovl ebx, eax

loc_fffc579f:  ; not directly referenced
cmp dword [ebp - 0x3c4], 0
je short loc_fffc57dd  ; je 0xfffc57dd
sub esp, 0xc
mov edx, esi
movzx eax, byte [ebp - 0x379]
push eax
movzx ecx, byte [ebp - 0x368]
push 1
push 1
movzx eax, byte [ecx + edi - 0x2da]
push eax
push dword [ebp - 0x354]
mov eax, dword [ebp - 0x34c]
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x20

loc_fffc57dd:  ; not directly referenced
inc byte [ebp - 0x368]

loc_fffc57e3:  ; not directly referenced
mov eax, dword [ebp - 0x34c]
mov dl, byte [ebp - 0x368]
cmp dl, byte [eax + 0x1755]
jb loc_fffc5763  ; jb 0xfffc5763
cmp dword [ebp - 0x3c4], 0
jne short loc_fffc582c  ; jne 0xfffc582c
sub esp, 0xc
xor ecx, ecx
movzx eax, byte [ebp - 0x379]
mov edx, esi
push eax
mov eax, dword [ebp - 0x34c]
push 1
push 1
push ebx
push dword [ebp - 0x354]
call fcn_fffb3b9c  ; call 0xfffb3b9c
add esp, 0x20

loc_fffc582c:  ; not directly referenced
inc esi
cmp esi, 2
jne loc_fffc5714  ; jne 0xfffc5714

loc_fffc5836:  ; not directly referenced
mov eax, dword [ebp - 0x380]
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc5844:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea edi, [ebp - 0x44]
mov esi, ecx
push ebx
mov ecx, 0xb
mov ebx, eax
lea esp, [esp - 0x4c]
xor eax, eax
rep stosd  ; rep stosd dword es:[edi], eax
push 0
lea eax, [ebp - 0x4f]
mov edi, esi
push 0
mov word [ebp - 0x36], 0x3ff
mov dword [ebp - 0x30], 0x20
push 0
mov word [ebp - 0x20], 1
mov word [ebp - 0x1a], 1
push eax
movzx eax, byte [ebp + 8]
mov word [ebp - 0x4f], 4
push eax
lea eax, [ebp - 0x44]
mov dword [ebp - 0x4d], 0
push eax
mov eax, ebx
mov dword [ebp - 0x49], 7
push esi
mov byte [ebp - 0x45], 0
push 0x80
call fcn_fffb2650  ; call 0xfffb2650
lea edx, [edi - 7]
add esp, 0x20
test dl, dl
mov al, 1
mov byte [ebx + 0x1768], 0
cmovg eax, edx
mov byte [ebx + 0x1769], al
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc58d3:  ; not directly referenced
push ebp
mov ecx, 0xb
mov ebp, esp
push edi
push ebx
lea edi, [ebp - 0x60]
mov ebx, eax
xor eax, eax
lea esp, [esp - 0x70]
rep stosd  ; rep stosd dword es:[edi], eax
lea edi, [ebp - 0x34]
mov cl, 0xb
rep stosd  ; rep stosd dword es:[edi], eax
push 0
cmp dword [ebx + 0x1749], 2
lea ecx, [ebp - 0x60]
push 0
lea eax, [ebp - 0x34]
cmovne eax, ecx
push 0
lea ecx, [ebp - 0x6b]
mov word [ebp - 0x52], 0x3ff
push ecx
mov ecx, 2
mov dword [ebp - 0x4c], 0x20
push 0
mov word [ebp - 0x3c], 1
mov word [ebp - 0x36], 1
push eax
mov eax, ebx
mov word [ebp - 0x32], 4
push 0xa
mov word [ebp - 0x2a], 4
mov word [ebp - 0x6b], 4
push 0x80
mov dword [ebp - 0x69], 0
mov dword [ebp - 0x65], 9
mov byte [ebp - 0x61], 0
call fcn_fffb2650  ; call 0xfffb2650
mov byte [ebx + 0x1769], 1
mov byte [ebx + 0x1768], 0
add esp, 0x20
lea esp, [ebp - 8]
pop ebx
pop edi
pop ebp
ret

loc_fffc5976:
db 0x00
db 0x00

fcn_fffc5978:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
lea ecx, [ebp - 0x20]
push ebx
lea esp, [esp - 0x38]
mov eax, dword [ebp + 8]
mov dword [ebp - 0x1c], 0
mov edx, dword [eax]
push ecx
push 0
push 0
push gPchDmiTcVcPpiGuid  ; push 0xfffcd534
push eax
call dword [edx + 0x20]  ; ucall
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov esi, dword [eax + 0xf80f0]
and esi, 0xfffffffe
mov eax, dword [esi + 0x50]
and eax, 0xff0fffff
or eax, 0x200000
mov dword [esi + 0x50], eax
mov eax, dword [ebp - 0x20]
add esp, 0x20
cmp byte [eax + 0x24], 1
jne short loc_fffc59d9  ; jne 0xfffc59d9
mov eax, dword [esi + 0x50]
or eax, 0xa0000
mov dword [esi + 0x50], eax

loc_fffc59d9:  ; not directly referenced
mov eax, dword [esi + 0x50]
mov ebx, dword [ebp - 0x20]
xor ecx, ecx
mov edx, 1

loc_fffc59e6:  ; not directly referenced
mov edi, dword [ebx + ecx*4]
mov eax, edx
shl eax, cl
inc ecx
or byte [ebp + edi - 0x1c], al
cmp ecx, 8
jne short loc_fffc59e6  ; jne 0xfffc59e6
lea eax, [esi + 0x2014]
lea edx, [esi + 0x2020]
xor cl, cl
mov dword [ebp - 0x30], eax
mov dword [ebp - 0x34], edx

loc_fffc5a0b:  ; not directly referenced
mov eax, dword [ebp - 0x20]
lea edx, [ecx + 0x10]
mov byte [ebp - 0x2c], cl
cmp byte [eax + edx*2], 1
jne short loc_fffc5a6e  ; jne 0xfffc5a6e
movzx edx, byte [eax + edx*2 + 1]
shl edx, 0x18
movzx edi, byte [ebp + ecx - 0x1c]
and edx, 0xf000000
or edx, 0x80000000
cmp cl, 2
je short loc_fffc5a49  ; je 0xfffc5a49
cmp cl, 3
je short loc_fffc5a51  ; je 0xfffc5a51
cmp cl, 1
mov ebx, dword [ebp - 0x30]
cmove ebx, dword [ebp - 0x34]
jmp short loc_fffc5a57  ; jmp 0xfffc5a57

loc_fffc5a49:  ; not directly referenced
lea ebx, [esi + 0x2030]
jmp short loc_fffc5a57  ; jmp 0xfffc5a57

loc_fffc5a51:  ; not directly referenced
lea ebx, [esi + 0x2040]

loc_fffc5a57:  ; not directly referenced
mov eax, dword [ebx]
and eax, 0xf0ffff01
or eax, edi
or eax, edx
mov dword [ebx], eax
mov al, byte [ebp - 0x2c]
dec eax
cmp al, 1
ja short loc_fffc5a6e  ; ja 0xfffc5a6e
mov eax, dword [ebx]

loc_fffc5a6e:  ; not directly referenced
inc ecx
cmp ecx, 4
jne short loc_fffc5a0b  ; jne 0xfffc5a0b
mov eax, dword [esi + 0x50]
or eax, 0x80000000
mov dword [esi + 0x50], eax
mov eax, dword [esi + 0x50]
lea edx, [esi + 0x2026]
mov ecx, dword [ebp - 0x20]
xor eax, eax
lea ebx, [esi + 0x201a]
mov dword [ebp - 0x2c], edx

loc_fffc5a96:  ; not directly referenced
cmp byte [ecx + eax*2 + 0x20], 1
mov dl, al
jne short loc_fffc5ac9  ; jne 0xfffc5ac9
cmp al, 2
je short loc_fffc5ab1  ; je 0xfffc5ab1
cmp al, 3
je short loc_fffc5ab9  ; je 0xfffc5ab9
dec dl
mov edx, dword [ebp - 0x2c]
cmovne edx, ebx
jmp short loc_fffc5abf  ; jmp 0xfffc5abf

loc_fffc5ab1:  ; not directly referenced
lea edx, [esi + 0x2036]
jmp short loc_fffc5abf  ; jmp 0xfffc5abf

loc_fffc5ab9:  ; not directly referenced
lea edx, [esi + 0x2046]

loc_fffc5abf:  ; not directly referenced
mov di, word [edx]
test di, 2
jne short loc_fffc5abf  ; jne 0xfffc5abf

loc_fffc5ac9:  ; not directly referenced
inc eax
cmp eax, 4
jne short loc_fffc5a96  ; jne 0xfffc5a96
lea esp, [ebp - 0xc]
xor al, al
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc5c8e:  ; not directly referenced
push ebp
mov ebp, esp
lea esp, [esp - 8]
mov edx, dword [ebp + 0xc]
mov eax, dword [ebp + 8]
sub edx, 0x2c
call fcn_fffc5bf6  ; call 0xfffc5bf6
xor eax, eax
leave
ret

fcn_fffc69bc:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
lea esp, [esp - 0x11c]
mov bl, byte [ebp + 8]
mov byte [ebp - 0xdc], bl
mov bl, byte [ebp + 0xc]
mov byte [ebp - 0x101], bl
mov bl, byte [ebp + 0x10]
mov byte [ebp - 0xda], bl
mov al, byte [ebp - 0xda]
shr al, 4
mov bl, byte [ebp + 0x18]
inc eax
mov byte [ebp - 0x103], cl
mov byte [ebp - 0x102], al
xor eax, eax
cmp byte [ebp - 0xda], 0x21
mov byte [ebp - 0xdb], bl
ja short loc_fffc6a1e  ; ja 0xfffc6a1e
movzx eax, byte [ebp - 0xda]
movzx eax, byte [eax + ref_fffcc308]  ; movzx eax, byte [eax - 0x33cf8]

loc_fffc6a1e:  ; not directly referenced
cmp byte [ebp - 0xda], 0x21
mov dword [ebp - 0xf0], 1
sete bl
cmp byte [ebp - 0xda], 0x11
sete cl
or bl, cl
jne short loc_fffc6a52  ; jne 0xfffc6a52
xor ebx, ebx
cmp byte [ebp - 0xda], 5
sete bl
mov dword [ebp - 0xf0], ebx

loc_fffc6a52:  ; not directly referenced
movzx ecx, byte [edi + 0x1755]
mov ebx, 1
shl ebx, cl
dec ebx
cmp byte [edi + 0x1768], 1
mov word [ebp - 0xd0], bx
jne short loc_fffc6ad5  ; jne 0xfffc6ad5
mov cl, byte [edi + 0x1769]
mov byte [ebp - 0x9a], cl
mov byte [ebp - 0x99], cl
lea ebx, [ecx + 4]
add ecx, 2
mov byte [ebp - 0x98], bl
mov byte [ebp - 0x97], cl

loc_fffc6a95:  ; not directly referenced
imul eax, eax, 0x240
mov dword [ebp - 0xc0], 0
add eax, edx
mov byte [ebp - 0xd9], 0
mov dword [ebp - 0xc8], eax
movzx eax, byte [ebp - 0xdc]
imul esi, eax, 0x24
imul ebx, eax, 0x12
mov dword [ebp - 0x110], esi
mov dword [ebp - 0x108], eax
mov dword [ebp - 0xe4], ebx
jmp short loc_fffc6af3  ; jmp 0xfffc6af3

loc_fffc6ad5:  ; not directly referenced
mov byte [ebp - 0x9a], 1
mov byte [ebp - 0x99], 1
mov byte [ebp - 0x98], 1
mov byte [ebp - 0x97], 1
jmp short loc_fffc6a95  ; jmp 0xfffc6a95

loc_fffc6af3:  ; not directly referenced
xor ecx, ecx
mov edx, 4
lea eax, [ebp - 0xa2]
lea esi, [ebp - 0x72]
call mrc_setmem
xor ecx, ecx
mov edx, 4
lea eax, [ebp - 0x9e]
call mrc_setmem
mov dword [ebp - 0xbc], esi
xor esi, esi

loc_fffc6b22:  ; not directly referenced
movzx ebx, byte [ebp - 0x103]
bt ebx, esi
mov dword [ebp - 0xf4], ebx
jb short loc_fffc6b4f  ; jb 0xfffc6b4f
mov ebx, dword [ebp - 0xd0]
mov word [ebp + esi*2 - 0xa2], bx
mov word [ebp + esi*2 - 0x9e], bx
jmp near loc_fffc6d31  ; jmp 0xfffc6d31

loc_fffc6b4f:  ; not directly referenced
mov ebx, dword [ebp - 0xbc]
mov eax, esi
shl eax, 0xa
mov byte [ebp - 0xc4], 0
add eax, 0x40f0
mov dword [ebp - 0xec], eax
mov byte [ebx], 0x7f
lea ebx, [esi + esi*8]
mov dword [ebp - 0xd4], ebx
mov dword [ebp - 0xd8], ebx
movzx ebx, byte [ebp - 0xdb]
mov dword [ebp - 0xe0], ebx
mov ebx, dword [ebp - 0xd4]
add ebx, dword [ebp - 0xe4]
mov dword [ebp - 0xe8], ebx
jmp near loc_fffc6cd4  ; jmp 0xfffc6cd4

loc_fffc6ba2:  ; not directly referenced
movzx ebx, byte [ebp - 0xc4]
lea eax, [ebp - 0x18]
add eax, dword [ebp - 0xd8]
mov byte [ebx + eax - 0x7e], 0x7f
mov eax, dword [ebp - 0xd8]
add eax, ebx
cmp byte [ebp - 0xda], 1
mov dword [ebp + eax*4 - 0x60], 0
mov al, byte [ebp - 0xdb]
mov byte [ebp - 0xcc], al
jne short loc_fffc6c03  ; jne 0xfffc6c03
push eax
push dword [ebp - 0xe0]
push dword [ebp - 0xc0]
movzx ecx, byte [ebp - 0x101]
mov edx, esi
push ebx
mov eax, edi
call fcn_fffb2c66  ; call 0xfffb2c66
mov byte [ebp - 0xcc], al
add esp, 0x10

loc_fffc6c03:  ; not directly referenced
mov eax, dword [ebp - 0xe8]
mov edx, dword [ebp - 0xc0]
add eax, ebx
mov ecx, dword [ebp - 0xc8]
lea eax, [edx + eax*2]
xor edx, edx
mov ecx, dword [ecx + eax*4]
mov dword [ebp - 0x100], eax
mov dword [ebp - 0x124], ecx
mov eax, ecx
mov ecx, 0xa
div ecx
mov edx, dword [ebp - 0xc8]
mov ecx, dword [ebp - 0x100]
mov dword [edx + ecx*4], eax
movzx edx, byte [ebp - 0xcc]
cmp eax, edx
jbe short loc_fffc6c57  ; jbe 0xfffc6c57
mov eax, dword [ebp - 0xc8]
mov dword [eax + ecx*4], edx

loc_fffc6c57:  ; not directly referenced
mov eax, dword [ebp - 0xe8]
mov edx, dword [ebp - 0xc0]
add eax, ebx
mov ecx, dword [ebp - 0xc8]
cmp dword [ebp - 0xf0], 1
lea eax, [edx + eax*2]
mov eax, dword [ecx + eax*4]
jne short loc_fffc6c98  ; jne 0xfffc6c98
mov ecx, dword [ebp - 0xbc]
movzx edx, byte [ecx]
cmp eax, edx
jae short loc_fffc6ca9  ; jae 0xfffc6ca9
mov edx, dword [ebp - 0xd4]
mov byte [ecx], al
mov byte [ebp + edx - 0x84], al
jmp short loc_fffc6ca9  ; jmp 0xfffc6ca9

loc_fffc6c98:  ; not directly referenced
lea edx, [ebp - 0x18]
add edx, dword [ebp - 0xd8]
add edx, ebx
mov byte [edx - 0x6c], al
mov byte [edx - 0x5a], al

loc_fffc6ca9:  ; not directly referenced
movzx eax, byte [ebp - 0xc4]
mov ecx, dword [ebp + 0x14]
inc byte [ebp - 0xc4]
movzx eax, byte [ecx + eax]
mov ecx, dword [ebp - 0xec]
and eax, 0x7f
or ah, 1
lea edx, [ecx + ebx*4]
add edx, dword [edi + 0x103f]
mov dword [edx], eax

loc_fffc6cd4:  ; not directly referenced
mov bl, byte [ebp - 0xc4]
cmp bl, byte [edi + 0x1755]
jb loc_fffc6ba2  ; jb 0xfffc6ba2
cmp dword [ebp - 0xf0], 1
jne short loc_fffc6d31  ; jne 0xfffc6d31
jmp short loc_fffc6d18  ; jmp 0xfffc6d18

loc_fffc6cf1:  ; not directly referenced
movzx ecx, al
mov ebx, dword [ebp - 0xc0]
mov edx, dword [ebp - 0xbc]
add ecx, dword [ebp - 0xc4]
inc eax
lea ecx, [ebx + ecx*2]
movzx ebx, byte [edx]
mov edx, dword [ebp - 0xc8]
mov dword [edx + ecx*4], ebx
jmp short loc_fffc6d29  ; jmp 0xfffc6d29

loc_fffc6d18:  ; not directly referenced
lea edx, [esi + esi*8]
add edx, dword [ebp - 0xe4]
xor eax, eax
mov dword [ebp - 0xc4], edx

loc_fffc6d29:  ; not directly referenced
cmp al, byte [edi + 0x1755]
jb short loc_fffc6cf1  ; jb 0xfffc6cf1

loc_fffc6d31:  ; not directly referenced
inc esi
add dword [ebp - 0xbc], 9
cmp esi, 2
jne loc_fffc6b22  ; jne 0xfffc6b22
mov eax, dword [ebp - 0xc0]
mov ebx, dword [ebp - 0xc8]
add eax, dword [ebp - 0x110]
mov esi, dword [ebp - 0xc0]
lea eax, [ebx + eax*4]
lea esi, [esi + esi - 1]
mov dword [ebp - 0x100], eax
mov dword [ebp - 0x10c], esi

loc_fffc6d6d:  ; not directly referenced
mov eax, dword [edi + 0x103f]
xor esi, esi
mov dword [eax + 0x4800], 4
jmp near loc_fffc6e62  ; jmp 0xfffc6e62

loc_fffc6d84:  ; not directly referenced
xor ebx, ebx

loc_fffc6d86:  ; not directly referenced
mov eax, dword [ebp - 0xf4]
bt eax, ebx
jb short loc_fffc6d9c  ; jb 0xfffc6d9c

loc_fffc6d91:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc6d86  ; jne 0xfffc6d86
jmp near loc_fffc6e38  ; jmp 0xfffc6e38

loc_fffc6d9c:  ; not directly referenced
lea ecx, [ebx + 1]
mov edx, dword [ebp - 0xf4]
mov byte [ebp - 0xbc], 0
sar edx, cl
mov dword [ebp - 0xc4], edx
jmp short loc_fffc6e25  ; jmp 0xfffc6e25

loc_fffc6db6:  ; not directly referenced
movzx ecx, byte [ebp - 0xbc]
lea edx, [ebx + ebx*8]
add edx, dword [ebp - 0xe4]
mov eax, dword [ebp - 0xc0]
add edx, ecx
mov dword [ebp - 0xd4], ecx
mov ecx, dword [ebp - 0x10c]
lea edx, [eax + edx*2]
mov eax, dword [ebp - 0xc8]
imul ecx, dword [eax + edx*4]
mov eax, edi
push 1
push dword [ebp - 0xc4]
movzx edx, byte [ebp - 0xda]
push 0
push dword [ebp - 0xd4]
push dword [ebp - 0x108]
push ebx
push 0
push esi
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20
cmp dword [ebp - 0xf0], 0
jne loc_fffc6d91  ; jne 0xfffc6d91
inc byte [ebp - 0xbc]

loc_fffc6e25:  ; not directly referenced
mov dl, byte [ebp - 0xbc]
cmp dl, byte [edi + 0x1755]
jb short loc_fffc6db6  ; jb 0xfffc6db6
jmp near loc_fffc6d91  ; jmp 0xfffc6d91

loc_fffc6e38:  ; not directly referenced
push ecx
xor eax, eax
test esi, esi
push 0
sete al
mov edx, dword [ebp - 0xf4]
push eax
lea eax, [ebp - 0x9a]
inc esi
push eax
movzx ecx, byte [edi + 0x1768]
mov eax, edi
call fcn_fffb21f3  ; call 0xfffb21f3
add esp, 0x10

loc_fffc6e62:  ; not directly referenced
movzx eax, byte [ebp - 0x102]
cmp esi, eax
jb loc_fffc6d84  ; jb 0xfffc6d84
xor esi, esi

loc_fffc6e73:  ; not directly referenced
mov ebx, dword [ebp - 0xf4]
bt ebx, esi
jae loc_fffc74e7  ; jae 0xfffc74e7
mov eax, esi
mov byte [ebp - 0xe8], 0
shl eax, 0xa
add eax, 0x4114
mov dword [ebp - 0x114], eax
jmp near loc_fffc741a  ; jmp 0xfffc741a

loc_fffc6e9e:  ; not directly referenced
mov dword [ebp - 0xec], 1
mov cl, byte [ebp - 0xe8]
shl dword [ebp - 0xec], cl
mov cx, word [ebp + esi*2 - 0x9e]
mov eax, dword [ebp - 0xec]
mov dx, word [ebp + esi*2 - 0xa2]
mov word [ebp - 0xbc], ax
mov eax, ecx
and eax, edx
test word [ebp - 0xbc], ax
movzx ebx, byte [ebp - 0xe8]
mov word [ebp - 0xe0], dx
mov word [ebp - 0xf8], cx
jne loc_fffc7414  ; jne 0xfffc7414
mov edx, dword [ebp - 0x114]
cmp dword [ebp - 0xf0], 1
mov cl, byte [ebp - 0xe8]
mov al, 0
cmovne eax, ecx
lea ecx, [esi + esi*8]
mov byte [ebp - 0xd9], al
mov dword [ebp - 0xcc], ecx
lea eax, [edx + ebx*4]
add eax, dword [edi + 0x103f]
mov edx, dword [ebp - 0xc0]
mov eax, dword [eax]
mov dword [ebp - 0xc4], eax
mov eax, dword [ebp - 0xe4]
add eax, ecx
mov ecx, dword [ebp - 0xc8]
add eax, ebx
lea eax, [edx + eax*2]
mov eax, dword [ecx + eax*4]
mov byte [ebp - 0xd4], al
mov dword [ebp - 0xfc], eax
lea eax, [ebp - 0x18]
add eax, dword [ebp - 0xcc]
lea edx, [eax + ebx]
mov cl, byte [edx - 0x7e]
mov byte [ebp - 0x11d], cl
mov cl, byte [ebp - 0xd4]
sub cl, byte [ebp - 0x11d]
mov byte [ebp - 0xd8], cl
mov ecx, dword [ebp - 0xc4]
and ecx, 0x7fffff
mov dword [ebp - 0xc4], ecx
jne loc_fffc70b5  ; jne 0xfffc70b5
movzx ecx, byte [ebp - 0xd9]
add eax, ecx
mov cl, byte [ebp - 0xd4]
cmp cl, byte [eax - 0x6c]
jne loc_fffc7048  ; jne 0xfffc7048
cmp byte [ebp - 0xd8], 0
jns short loc_fffc6fe9  ; jns 0xfffc6fe9
cmp byte [eax - 0x5a], cl
jne short loc_fffc6fd3  ; jne 0xfffc6fd3

loc_fffc6fbc:  ; not directly referenced
lea eax, [esi + esi*8]
lea edx, [ebp - 0x18]
add eax, edx
mov cl, byte [ebp - 0xd4]
mov byte [ebx + eax - 0x7e], cl
jmp near loc_fffc72ce  ; jmp 0xfffc72ce

loc_fffc6fd3:  ; not directly referenced
mov dword [ebp - 0xa8], 1

loc_fffc6fdd:  ; not directly referenced
mov eax, dword [ebp - 0xa8]
test eax, eax
jne short loc_fffc6fdd  ; jne 0xfffc6fdd
jmp short loc_fffc6fbc  ; jmp 0xfffc6fbc

loc_fffc6fe9:  ; not directly referenced
cmp byte [ebp - 0xd8], 1
jne short loc_fffc7012  ; jne 0xfffc7012
mov ecx, dword [ebp - 0xcc]
add ecx, ebx
mov eax, dword [ebp + ecx*4 - 0x60]
shr eax, 8
xor ah, ah
mov dword [ebp + ecx*4 - 0x60], eax
mov al, byte [ebp - 0xfc]
mov byte [edx - 0x7e], al
jmp short loc_fffc7083  ; jmp 0xfffc7083

loc_fffc7012:  ; not directly referenced
cmp byte [ebp - 0xd8], 2
jne short loc_fffc702f  ; jne 0xfffc702f
xor eax, eax
call fcn_fffb2181  ; call 0xfffb2181
mov ecx, dword [ebp - 0xcc]
add ecx, ebx
jmp near loc_fffc714a  ; jmp 0xfffc714a

loc_fffc702f:  ; not directly referenced
mov dword [ebp - 0xac], 1

loc_fffc7039:  ; not directly referenced
mov eax, dword [ebp - 0xac]
test eax, eax
jne short loc_fffc7039  ; jne 0xfffc7039
jmp near loc_fffc72ce  ; jmp 0xfffc72ce

loc_fffc7048:  ; not directly referenced
mov cl, byte [ebp - 0xd4]
cmp cl, byte [eax - 0x5a]
jne loc_fffc72ba  ; jne 0xfffc72ba
mov eax, dword [ebp - 0xe0]
test word [ebp - 0xbc], ax
jne loc_fffc7414  ; jne 0xfffc7414
cmp byte [ebp - 0xd8], 0xff
jne short loc_fffc709c  ; jne 0xfffc709c
mov eax, dword [ebp - 0xcc]
add eax, ebx
and dword [ebp + eax*4 - 0x60], 0xffffff00

loc_fffc7083:  ; not directly referenced
mov eax, dword [ebp - 0xbc]
or eax, dword [ebp - 0xe0]

loc_fffc708f:  ; not directly referenced
mov word [ebp + esi*2 - 0xa2], ax
jmp near loc_fffc72ce  ; jmp 0xfffc72ce

loc_fffc709c:  ; not directly referenced
mov cl, byte [ebp - 0xfc]
mov eax, dword [ebp - 0xec]
not eax
mov byte [edx - 0x7e], cl
and eax, dword [ebp - 0xe0]
jmp short loc_fffc708f  ; jmp 0xfffc708f

loc_fffc70b5:  ; not directly referenced
movzx edx, byte [ebp - 0xd9]
mov cl, byte [ebp - 0xd4]
add eax, edx
mov dword [ebp - 0xe0], edx
cmp cl, byte [eax - 0x6c]
jne loc_fffc7176  ; jne 0xfffc7176
cmp byte [ebp - 0xd8], 2
jle short loc_fffc70f5  ; jle 0xfffc70f5
mov dword [ebp - 0xb0], 1

loc_fffc70e6:  ; not directly referenced
mov eax, dword [ebp - 0xb0]
test eax, eax
jne short loc_fffc70e6  ; jne 0xfffc70e6
jmp near loc_fffc72ce  ; jmp 0xfffc72ce

loc_fffc70f5:  ; not directly referenced
mov edx, dword [ebp - 0xcc]
mov eax, dword [ebp - 0xc4]
lea ecx, [edx + ebx]
mov dword [ebp - 0x11c], ecx
je short loc_fffc713f  ; je 0xfffc713f
call fcn_fffb2181  ; call 0xfffb2181
mov ecx, dword [ebp - 0x11c]
and eax, 0xff
shl eax, 0x10
mov edx, dword [ebp + ecx*4 - 0x60]
and edx, 0xff00ffff
or eax, edx
mov dword [ebp + ecx*4 - 0x60], eax
mov eax, dword [ebp - 0xec]
not eax
and eax, dword [ebp - 0xf8]
jmp short loc_fffc7169  ; jmp 0xfffc7169

loc_fffc713f:  ; not directly referenced
call fcn_fffb2181  ; call 0xfffb2181
mov ecx, dword [ebp - 0x11c]

loc_fffc714a:  ; not directly referenced
shl eax, 0x18
mov edx, dword [ebp + ecx*4 - 0x60]
and edx, 0xffffff
or eax, edx
mov dword [ebp + ecx*4 - 0x60], eax
mov eax, dword [ebp - 0xbc]
or eax, dword [ebp - 0xf8]

loc_fffc7169:  ; not directly referenced
mov word [ebp + esi*2 - 0x9e], ax
jmp near loc_fffc72ce  ; jmp 0xfffc72ce

loc_fffc7176:  ; not directly referenced
mov cl, byte [ebp - 0xd4]
cmp cl, byte [eax - 0x5a]
jne loc_fffc72ba  ; jne 0xfffc72ba
cmp byte [ebp - 0x11d], 0xff
je loc_fffc723c  ; je 0xfffc723c
cmp byte [ebp - 0xd8], 0
jg loc_fffc723c  ; jg 0xfffc723c
mov eax, dword [ebp - 0xc4]
call fcn_fffb2181  ; call 0xfffb2181
mov dword [ebp - 0xf8], eax
mov eax, dword [ebp - 0xcc]
add eax, ebx
mov dl, 0xf8
xor ecx, ecx
mov eax, dword [ebp + eax*4 - 0x60]
mov dword [ebp - 0xfc], eax
mov al, byte [ebp - 0xd8]
imul eax, edx
mov dl, al
mov byte [ebp - 0xcc], al
add edx, 0x27
cmp dl, 0x3e
ja short loc_fffc7220  ; ja 0xfffc7220
mov dl, byte [ebp - 0xd8]
movzx eax, byte [ebp - 0xf8]
lea ecx, [edx*8 + 8]
mov edx, 0xff
shl edx, cl
shl eax, cl
mov cl, byte [ebp - 0xcc]
not edx
add ecx, 8
and edx, dword [ebp - 0xfc]
or eax, edx
test cl, cl
jle short loc_fffc7217  ; jle 0xfffc7217
shl eax, cl
jmp short loc_fffc721e  ; jmp 0xfffc721e

loc_fffc7217:  ; not directly referenced
movsx ecx, cl
neg ecx
shr eax, cl

loc_fffc721e:  ; not directly referenced
mov ecx, eax

loc_fffc7220:  ; not directly referenced
lea eax, [esi + esi*8]
lea edx, [eax + ebx]
mov dword [ebp + edx*4 - 0x60], ecx
lea ecx, [ebp - 0x18]
add eax, ecx
mov dl, byte [ebp - 0xd4]
dec edx
mov byte [ebx + eax - 0x7e], dl
jmp short loc_fffc7273  ; jmp 0xfffc7273

loc_fffc723c:  ; not directly referenced
lea eax, [esi + esi*8]
lea edx, [eax + ebx]
mov eax, dword [ebp - 0xc4]
mov ecx, dword [ebp + edx*4 - 0x60]
mov dword [ebp - 0x11c], edx
mov dword [ebp - 0xcc], ecx
call fcn_fffb2181  ; call 0xfffb2181
mov edx, dword [ebp - 0x11c]
movzx ecx, word [ebp - 0xcc]
shl eax, 0x10
or eax, ecx
mov dword [ebp + edx*4 - 0x60], eax

loc_fffc7273:  ; not directly referenced
lea edx, [ebp - 0x18]
lea eax, [esi + esi*8]
mov ecx, dword [ebp - 0xe0]
add eax, edx
mov edx, dword [ebp - 0xe0]
mov cl, byte [ecx + eax - 0x6c]
cmp byte [edx + eax - 0x5a], cl
jae short loc_fffc729f  ; jae 0xfffc729f
mov eax, dword [ebp - 0xbc]
or word [ebp + esi*2 - 0x9e], ax

loc_fffc729f:  ; not directly referenced
cmp byte [ebp - 0xd8], 0
jg short loc_fffc72ce  ; jg 0xfffc72ce
mov eax, dword [ebp - 0xec]
not eax
and word [ebp + esi*2 - 0xa2], ax
jmp short loc_fffc72ce  ; jmp 0xfffc72ce

loc_fffc72ba:  ; not directly referenced
mov dword [ebp - 0xb4], 1

loc_fffc72c4:  ; not directly referenced
mov eax, dword [ebp - 0xb4]
test eax, eax
jne short loc_fffc72c4  ; jne 0xfffc72c4

loc_fffc72ce:  ; not directly referenced
movzx eax, byte [ebp - 0xdb]
cmp byte [ebp - 0xda], 1
jne short loc_fffc72fa  ; jne 0xfffc72fa
push edx
movzx ecx, byte [ebp - 0x101]
mov edx, esi
push eax
push dword [ebp - 0xc0]
mov eax, edi
push ebx
call fcn_fffb2c66  ; call 0xfffb2c66
add esp, 0x10

loc_fffc72fa:  ; not directly referenced
cmp byte [ebp - 0xd4], al
jne short loc_fffc7310  ; jne 0xfffc7310
mov edx, dword [ebp - 0xbc]
or word [ebp + esi*2 - 0x9e], dx

loc_fffc7310:  ; not directly referenced
cmp dword [ebp - 0xc4], 0
jne short loc_fffc7340  ; jne 0xfffc7340
lea edx, [esi + esi*8]
lea ecx, [ebp - 0x18]
add ecx, edx
cmp al, byte [ebx + ecx - 0x7e]
jne short loc_fffc7340  ; jne 0xfffc7340
mov ecx, dword [ebp - 0xbc]
test word [ebp + esi*2 - 0xa2], cx
je short loc_fffc7340  ; je 0xfffc7340
add edx, ebx
mov word [ebp + edx*4 - 0x5e], 0xfffe

loc_fffc7340:  ; not directly referenced
cmp byte [ebp - 0xd4], 0
jne short loc_fffc737e  ; jne 0xfffc737e
mov eax, dword [ebp - 0xbc]
or word [ebp + esi*2 - 0xa2], ax
cmp dword [ebp - 0xc4], 0
je short loc_fffc737e  ; je 0xfffc737e
or word [ebp + esi*2 - 0x9e], ax
lea edx, [ebp - 0x18]
lea eax, [esi + esi*8]
add edx, eax
add eax, ebx
mov byte [ebx + edx - 0x7e], 0
mov word [ebp + eax*4 - 0x5e], 0x707

loc_fffc737e:  ; not directly referenced
cmp dword [ebp - 0xf0], 0
jne loc_fffc7414  ; jne 0xfffc7414
mov dx, word [ebp + esi*2 - 0x9e]
mov ax, word [ebp + esi*2 - 0xa2]
mov ecx, edx
and ecx, eax
test word [ebp - 0xbc], cx
jne short loc_fffc7414  ; jne 0xfffc7414
cmp dword [ebp - 0xc4], 0
jne short loc_fffc73c3  ; jne 0xfffc73c3
movzx eax, byte [ebp - 0xd9]
test word [ebp - 0xbc], dx
jne short loc_fffc73d3  ; jne 0xfffc73d3
jmp short loc_fffc73e6  ; jmp 0xfffc73e6

loc_fffc73c3:  ; not directly referenced
test word [ebp - 0xbc], ax
movzx eax, byte [ebp - 0xd9]
jne short loc_fffc73e6  ; jne 0xfffc73e6

loc_fffc73d3:  ; not directly referenced
lea edx, [esi + esi*8]
lea ecx, [ebp - 0x18]
add ecx, edx
add ecx, eax
mov al, byte [ecx - 0x5a]
dec eax
mov byte [ecx - 0x5a], al
jmp short loc_fffc73f7  ; jmp 0xfffc73f7

loc_fffc73e6:  ; not directly referenced
lea edx, [esi + esi*8]
lea ecx, [ebp - 0x18]
add ecx, edx
add ecx, eax
mov al, byte [ecx - 0x6c]
inc eax
mov byte [ecx - 0x6c], al

loc_fffc73f7:  ; not directly referenced
movzx eax, al
add edx, dword [ebp - 0xe4]
add edx, ebx
mov ebx, dword [ebp - 0xc0]
lea edx, [ebx + edx*2]
mov ebx, dword [ebp - 0xc8]
mov dword [ebx + edx*4], eax

loc_fffc7414:  ; not directly referenced
inc byte [ebp - 0xe8]

loc_fffc741a:  ; not directly referenced
mov cl, byte [ebp - 0xe8]
cmp cl, byte [edi + 0x1755]
jb loc_fffc6e9e  ; jb 0xfffc6e9e
cmp dword [ebp - 0xf0], 1
jne loc_fffc74e7  ; jne 0xfffc74e7
mov ax, word [ebp + esi*2 - 0xa2]
mov edx, eax
and dx, word [ebp + esi*2 - 0x9e]
cmp dx, word [ebp - 0xd0]
je loc_fffc74e7  ; je 0xfffc74e7
cmp ax, word [ebp - 0xd0]
lea edx, [esi + esi*8]
movzx eax, byte [ebp - 0xd9]
je short loc_fffc74a4  ; je 0xfffc74a4
lea ebx, [ebp - 0x18]
add edx, ebx
add edx, eax
mov al, byte [edx - 0x5a]
dec eax
mov byte [edx - 0x5a], al

loc_fffc7479:  ; not directly referenced
imul edx, esi, 0x48
mov ebx, dword [ebp - 0x100]
movzx eax, al
lea ecx, [esi + esi*8]
mov dword [ebx + edx], eax
add ecx, dword [ebp - 0xe4]
imul eax, esi, 0x48
mov dword [ebp - 0xc4], ecx
mov dword [ebp - 0xcc], eax
xor eax, eax
jmp short loc_fffc74df  ; jmp 0xfffc74df

loc_fffc74a4:  ; not directly referenced
lea ecx, [ebp - 0x18]
add edx, ecx
add edx, eax
mov al, byte [edx - 0x6c]
inc eax
mov byte [edx - 0x6c], al
jmp short loc_fffc7479  ; jmp 0xfffc7479

loc_fffc74b4:  ; not directly referenced
mov ebx, dword [ebp - 0x100]
mov edx, dword [ebp - 0xcc]
mov ecx, dword [ebp - 0xc0]
mov edx, dword [ebx + edx]
movzx ebx, al
add ebx, dword [ebp - 0xc4]
inc eax
lea ebx, [ecx + ebx*2]
mov ecx, dword [ebp - 0xc8]
mov dword [ecx + ebx*4], edx

loc_fffc74df:  ; not directly referenced
cmp al, byte [edi + 0x1755]
jb short loc_fffc74b4  ; jb 0xfffc74b4

loc_fffc74e7:  ; not directly referenced
inc esi
cmp esi, 2
jne loc_fffc6e73  ; jne 0xfffc6e73
mov eax, dword [ebp - 0xd0]
and ax, word [ebp - 0xa2]
cmp ax, word [ebp - 0xd0]
jne loc_fffc6d6d  ; jne 0xfffc6d6d
mov eax, dword [ebp - 0xd0]
and ax, word [ebp - 0x9e]
cmp ax, word [ebp - 0xd0]
jne loc_fffc6d6d  ; jne 0xfffc6d6d
mov eax, dword [ebp - 0xd0]
and eax, dword [ebp - 0xa0]
cmp ax, word [ebp - 0xd0]
jne loc_fffc6d6d  ; jne 0xfffc6d6d
mov eax, dword [ebp - 0xd0]
and eax, dword [ebp - 0x9c]
cmp ax, word [ebp - 0xd0]
jne loc_fffc6d6d  ; jne 0xfffc6d6d
xor ebx, ebx

loc_fffc7559:  ; not directly referenced
mov esi, dword [ebp - 0xf4]
bt esi, ebx
jb short loc_fffc75d7  ; jb 0xfffc75d7

loc_fffc7564:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc7559  ; jne 0xfffc7559
jmp near loc_fffc75f1  ; jmp 0xfffc75f1

loc_fffc756f:  ; not directly referenced
movzx esi, byte [ebp - 0xbc]
lea eax, [ebx + ebx*8]
mov dword [ebp - 0xc4], eax
add eax, esi
sub esp, 0xc
mov edx, dword [ebp + eax*4 - 0x60]
lea eax, [ebp - 0x18]
add eax, dword [ebp - 0xc4]
mov ecx, edx
shr edx, 0x10
shr ecx, 0x18
and edx, 0xff
movzx eax, byte [esi + eax - 0x7e]
push dword [ebp + 0x1c]
call fcn_fffc8bf1  ; call 0xfffc8bf1
mov edx, dword [ebp - 0xc4]
add edx, dword [ebp - 0xe4]
add esi, edx
mov ecx, dword [ebp - 0xc0]
inc byte [ebp - 0xbc]
add esp, 0x10
lea edx, [ecx + esi*2]
mov esi, dword [ebp - 0xc8]
mov dword [esi + edx*4], eax
jmp short loc_fffc75de  ; jmp 0xfffc75de

loc_fffc75d7:  ; not directly referenced
mov byte [ebp - 0xbc], 0

loc_fffc75de:  ; not directly referenced
mov al, byte [ebp - 0xbc]
cmp al, byte [edi + 0x1755]
jb short loc_fffc756f  ; jb 0xfffc756f
jmp near loc_fffc7564  ; jmp 0xfffc7564

loc_fffc75f1:  ; not directly referenced
inc dword [ebp - 0xc0]
cmp dword [ebp - 0xc0], 2
jne loc_fffc6af3  ; jne 0xfffc6af3
cmp byte [ebp - 0xda], 0xb
je short loc_fffc7637  ; je 0xfffc7637

loc_fffc760d:  ; not directly referenced
push 2
movzx edx, byte [ebp - 0xda]
xor ecx, ecx
push 0
mov eax, edi
push 0
push 0
push 0
push 0
push 1
push 0
call fcn_fffc83fc  ; call 0xfffc83fc
add esp, 0x20
xor edx, edx
jmp near loc_fffc7710  ; jmp 0xfffc7710

loc_fffc7637:  ; not directly referenced
lea esi, [edi + 0x2974]
mov dword [ebp - 0xc4], esi
movzx esi, byte [ebp - 0xdc]
xor ebx, ebx
mov dword [ebp - 0xd0], esi

loc_fffc7652:  ; not directly referenced
mov esi, dword [ebp - 0xf4]
bt esi, ebx
jb short loc_fffc7665  ; jb 0xfffc7665

loc_fffc765d:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc7652  ; jne 0xfffc7652
jmp short loc_fffc760d  ; jmp 0xfffc760d

loc_fffc7665:  ; not directly referenced
imul eax, ebx, 0x1347
mov esi, dword [ebp - 0xc4]
mov byte [ebp - 0xc0], 0
lea eax, [esi + eax + 8]
mov dword [ebp - 0xc8], eax
mov eax, ebx
shl eax, 0xa
add eax, 0x4028
mov dword [ebp - 0xbc], eax
jmp short loc_fffc76e6  ; jmp 0xfffc76e6

loc_fffc7694:  ; not directly referenced
push eax
movzx eax, byte [ebp - 0xc0]
mov ecx, dword [ebp - 0xd0]
push 0
mov edx, ebx
push 0xff
push eax
mov eax, edi
call fcn_fffb0168  ; call 0xfffb0168
mov esi, dword [ebp - 0xc8]
mov ecx, dword [ebp - 0xbc]
add ecx, dword [edi + 0x103f]
inc byte [ebp - 0xc0]
add esp, 0x10
movzx edx, byte [esi + 0x10d5]
mov eax, dword [ecx]
and edx, 0x3f
shl edx, 0x10
and eax, 0xffc0ffff
or eax, edx
mov dword [ecx], eax

loc_fffc76e6:  ; not directly referenced
mov al, byte [ebp - 0xc0]
cmp al, byte [edi + 0x1755]
jb short loc_fffc7694  ; jb 0xfffc7694
jmp near loc_fffc765d  ; jmp 0xfffc765d

loc_fffc76f9:  ; not directly referenced
movzx ebx, dl
mov ecx, dword [edi + 0x103f]
inc edx
lea ecx, [ecx + ebx*4 + 0x4cf0]
mov dword [ecx], 0

loc_fffc7710:  ; not directly referenced
cmp dl, byte [edi + 0x1755]
jb short loc_fffc76f9  ; jb 0xfffc76f9
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffc7bbe:
db 0x00
db 0x00

fcn_fffc7bc0:  ; not directly referenced
push ebp
mov eax, dword [0xf0000060]
mov ebp, esp
and eax, 0xfc000000
mov ecx, dword [ebp + 0xc]
mov eax, dword [eax + 0xf80f0]
and eax, 0xfffffffe
cmp ecx, 1
mov edx, dword [ebp + 0x10]
je short loc_fffc7c08  ; je 0xfffc7c08
jb short loc_fffc7bea  ; jb 0xfffc7bea
cmp ecx, 2
jne short loc_fffc7c30  ; jne 0xfffc7c30
jmp short loc_fffc7c21  ; jmp 0xfffc7c21

loc_fffc7bea:  ; not directly referenced
mov cl, byte [eax + 0x38f4]
and cl, 1
jne short loc_fffc7bfc  ; jne 0xfffc7bfc
mov word [edx], 0
jmp short loc_fffc7c30  ; jmp 0xfffc7c30

loc_fffc7bfc:  ; not directly referenced
mov ax, word [eax + 0x38f8]
mov word [edx], ax
jmp short loc_fffc7c30  ; jmp 0xfffc7c30

loc_fffc7c08:  ; not directly referenced
mov dx, word [edx]
mov word [eax + 0x38f8], dx
mov dl, byte [eax + 0x38f4]
or edx, 1
mov byte [eax + 0x38f4], dl

loc_fffc7c21:  ; not directly referenced
mov dl, byte [eax + 0x38f0]
or edx, 1
mov byte [eax + 0x38f0], dl

loc_fffc7c30:  ; not directly referenced
xor eax, eax
pop ebp
ret


fcn_fffc8290:
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
push ebx
push ebx
mov ebx, 0xfffff
mov edi, dword [ebp + 0x10]

loc_fffc82a1:
mov al, 0xa
out 0x70, al
in al, 0x71
test al, al
jns short loc_fffc82b0  ; jns 0xfffc82b0
dec ebx
jne short loc_fffc82a1  ; jne 0xfffc82a1
jmp short loc_fffc82b4  ; jmp 0xfffc82b4

loc_fffc82b0:
test ebx, ebx
jne short loc_fffc82da  ; jne 0xfffc82da

loc_fffc82b4:
mov bl, 0xb
mov al, bl
out 0x70, al
mov al, 0x82
out 0x71, al
mov al, 0xa
out 0x70, al
mov al, 0x26
out 0x71, al
mov al, 0xc
out 0x70, al
in al, 0x71
mov al, 0xd
out 0x70, al
in al, 0x71
mov al, bl
out 0x70, al
mov al, 2
out 0x71, al

loc_fffc82da:
xor eax, eax
out 0x70, al
in al, 0x71
mov byte [esi], al
mov al, 2
out 0x70, al
in al, 0x71
mov byte [edx], al
mov al, 4
out 0x70, al
in al, 0x71
mov byte [ecx], al
mov al, 7
out 0x70, al
in al, 0x71
mov ebx, dword [ebp + 8]
mov byte [ebx], al
mov al, 8
out 0x70, al
in al, 0x71
mov ebx, dword [ebp + 0xc]
mov byte [ebx], al
mov al, 9
out 0x70, al
in al, 0x71
movzx eax, al
mov word [edi], ax
mov al, byte [esi]
shr al, 4
mov bl, 0xa
imul eax, ebx
mov byte [ebp - 0xe], al
mov al, byte [esi]
and eax, 0xf
mov byte [ebp - 0xd], al
mov al, byte [ebp - 0xe]
add al, byte [ebp - 0xd]
mov byte [esi], al
mov al, byte [edx]
shr al, 4
imul eax, ebx
mov byte [ebp - 0xd], al
mov al, byte [edx]
and eax, 0xf
mov esi, eax
mov al, byte [ebp - 0xd]
add eax, esi
mov byte [edx], al
mov dl, byte [ecx]
mov al, dl
and edx, 0xf
shr al, 4
imul eax, ebx
add edx, eax
mov eax, dword [ebp + 8]
mov byte [ecx], dl
mov dl, byte [eax]
mov al, dl
and edx, 0xf
shr al, 4
imul eax, ebx
add eax, edx
mov edx, dword [ebp + 8]
mov byte [edx], al
mov eax, dword [ebp + 0xc]
mov dl, byte [eax]
mov al, dl
and edx, 0xf
shr al, 4
imul eax, ebx
add eax, edx
mov edx, dword [ebp + 0xc]
mov byte [edx], al
mov ax, word [edi]
mov edx, eax
shr ax, 4
and edx, 0xf
and eax, 0xf
imul eax, eax, 0xa
lea eax, [edx + eax + 0x7d0]
mov word [edi], ax
pop eax
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc83fc:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
push ebx
lea esp, [esp - 0x3c]
mov bl, byte [ebp + 0xc]
mov byte [ebp - 0x32], bl
mov bl, byte [ebp + 0x10]
cmp dl, 6
mov byte [ebp - 0x34], bl
mov bl, byte [ebp + 0x18]
mov dword [ebp - 0x1c], eax
sete byte [ebp - 0x39]
mov byte [ebp - 0x33], bl
cmp dl, 3
mov bl, byte [ebp + 0x1c]
mov dword [ebp - 0x28], ecx
mov byte [ebp - 0x31], bl
mov cl, byte [ebp + 0x14]
mov bl, byte [ebp + 0x20]
setbe al
or al, byte [ebp - 0x39]
mov byte [ebp - 0x3a], bl
mov esi, dword [ebp + 8]
mov byte [ebp - 0x20], dl
mov byte [ebp - 0x24], cl
mov bl, 0x1f
jne short loc_fffc8456  ; jne 0xfffc8456
mov al, dl
sub eax, 8
cmp al, 3
sbb ebx, ebx
or ebx, 0x36

loc_fffc8456:  ; not directly referenced
cmp byte [ebp - 0x20], 0x1f
ja short loc_fffc8465  ; ja 0xfffc8465
lea edi, [esi + esi - 1]
mov ecx, dword [ebp - 0x28]
jmp short loc_fffc848b  ; jmp 0xfffc848b

loc_fffc8465:  ; not directly referenced
lea edi, [esi + esi*2]
mov ecx, 2
lea eax, [edi - 5]
imul eax, esi
cdq
idiv ecx
test esi, esi
mov ecx, dword [ebp - 0x28]
mov edi, eax
jne short loc_fffc848b  ; jne 0xfffc848b
lea eax, [ecx + ecx*4]
mov si, 4
cdq
idiv esi
mov ecx, eax

loc_fffc848b:  ; not directly referenced
mov eax, dword [ebp - 0x28]
mov esi, 3
imul eax, edi
movzx ebx, bl
cdq
idiv esi
cmp ecx, ebx
jg short loc_fffc84a7  ; jg 0xfffc84a7
neg ebx
cmp ecx, ebx
cmovge ebx, ecx

loc_fffc84a7:  ; not directly referenced
cmp eax, 0xffffffffffffffe1
mov edx, 0xffffffe1
mov edi, 0x1f
mov cl, byte [ebp - 0x24]
movzx esi, byte [ebp - 0x33]
cmovge edx, eax
cmp edx, 0x1f
mov al, 0
cmovle edi, edx
cmp byte [ebp - 0x24], 0xff
cmovne eax, ecx
mov ecx, dword [ebp - 0x1c]
movzx edx, byte [ebp - 0x34]
mov byte [ebp - 0x30], al
imul eax, edx, 0x1347
cmp byte [ebp - 0x20], 0x21
mov dword [ebp - 0x24], esi
mov dword [ebp - 0x2c], edx
lea eax, [ecx + eax + 0x297c]
mov dword [ebp - 0x38], eax
mov esi, dword [eax + esi*4 + 0xf9]
ja loc_fffc8bc5  ; ja 0xfffc8bc5
movzx eax, byte [ebp - 0x20]
jmp dword [eax*4 + ref_fffcc3d4]  ; ujmp: jmp dword [eax*4 - 0x33c2c]

loc_fffc8509:  ; not directly referenced
and ebx, 0x3f
and esi, 0xffffffc0
jmp near loc_fffc86c0  ; jmp 0xfffc86c0

loc_fffc8514:  ; not directly referenced
and ebx, 0x3f
and esi, 0xfffff03f
shl ebx, 6
jmp near loc_fffc86c0  ; jmp 0xfffc86c0

loc_fffc8525:  ; not directly referenced
and ebx, 0x3f
and esi, 0xfffc0fff
shl ebx, 0xc
jmp near loc_fffc86c0  ; jmp 0xfffc86c0

loc_fffc8536:  ; not directly referenced
and ebx, 0x3f
and esi, 0xff03ffff
shl ebx, 0x12
jmp near loc_fffc86c0  ; jmp 0xfffc86c0

loc_fffc8547:  ; not directly referenced
and ebx, 0x7f
and esi, 0x80ffffff
shl ebx, 0x18
jmp near loc_fffc86c0  ; jmp 0xfffc86c0

loc_fffc8558:  ; not directly referenced
mov ecx, dword [ebp - 0x1c]
mov edi, dword [ebp - 0x2c]
shl edi, 0xa
mov edx, dword [ebp - 0x38]
add edi, 0x4028
mov eax, edi
add eax, dword [ecx + 0x103f]
cmp ebx, 0
mov esi, dword [eax]
mov eax, dword [edx + 0x10d5]
jle short loc_fffc8586  ; jle 0xfffc8586
lea ebx, [ebx + ebx - 0x10]
dec eax
jmp short loc_fffc858d  ; jmp 0xfffc858d

loc_fffc8586:  ; not directly referenced
je short loc_fffc858d  ; je 0xfffc858d
lea ebx, [ebx + ebx + 0x10]
inc eax

loc_fffc858d:  ; not directly referenced
movzx ecx, byte [ebp - 0x30]
mov edx, dword [ebp - 0x24]
and eax, 0x3f
and esi, 0xffc0ffff
shl eax, 0x10
or esi, eax
lea eax, [ecx + ecx*8]
lea eax, [edx + eax + 0x130]
mov edx, dword [ebp - 0x38]
movzx eax, word [edx + eax*2 + 0xd]
add ebx, eax
mov eax, 0x1ff
cmp ebx, 0x1ff
cmovle eax, ebx
xor edx, edx
test eax, eax
push ebx
cmovns edx, eax
mov eax, dword [ebp - 0x1c]
push edx
mov edx, dword [ebp - 0x2c]
push 0
push dword [ebp - 0x24]
call fcn_fffb0168  ; call 0xfffb0168
mov eax, dword [ebp - 0x1c]
add esp, 0x10
add edi, dword [eax + 0x103f]
mov dword [edi], esi
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc85f0:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
cmp dword [eax + 0x297c], 2
jne short loc_fffc8627  ; jne 0xfffc8627
cmp byte [ebp - 0x34], 0
sete dl
cmp byte [ebp - 0x32], 1
sete al
or dl, al
je short loc_fffc8627  ; je 0xfffc8627
push edx
movzx eax, byte [ebp - 0x3a]
push edx
movzx ecx, byte [ebp - 0x31]
xor edx, edx
push eax
mov eax, dword [ebp - 0x1c]
push ebx
call fcn_fffafeda  ; call 0xfffafeda
add esp, 0x10

loc_fffc8627:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
cmp dword [eax + 0x3cc3], 2
jne short loc_fffc8661  ; jne 0xfffc8661
cmp byte [ebp - 0x34], 1
sete dl
cmp byte [ebp - 0x32], 1
sete al
or dl, al
je short loc_fffc8661  ; je 0xfffc8661
push eax
movzx ecx, byte [ebp - 0x31]
mov edx, 1
push eax
movzx eax, byte [ebp - 0x3a]
push eax
mov eax, dword [ebp - 0x1c]
push ebx
call fcn_fffafeda  ; call 0xfffafeda
add esp, 0x10

loc_fffc8661:  ; not directly referenced
cmp byte [ebp - 0x20], 0x21
sete dl
cmp byte [ebp - 0x20], 0x11
sete al
or dl, al
je loc_fffc8be7  ; je 0xfffc8be7
mov ebx, dword [ebp - 0x24]
mov eax, dword [ebp - 0x38]
and edi, 0x3f
shl edi, 0xc
mov esi, dword [eax + ebx*4 + 0xf9]
and esi, 0xfffc0fff
jmp short loc_fffc86a6  ; jmp 0xfffc86a6

loc_fffc8692:  ; not directly referenced
and ebx, 0x7f
and esi, 0x80fff03f
shl ebx, 0x18
and edi, 0x3f
shl edi, 6
or esi, ebx

loc_fffc86a6:  ; not directly referenced
or esi, edi
jmp near loc_fffc8bcc  ; jmp 0xfffc8bcc

loc_fffc86ad:  ; not directly referenced
and ebx, 0x3f
and esi, 0xff000fff
mov eax, ebx
shl eax, 0xc
shl ebx, 0x12
or esi, eax

loc_fffc86c0:  ; not directly referenced
or esi, ebx
jmp near loc_fffc8bcc  ; jmp 0xfffc8bcc

loc_fffc86c7:  ; not directly referenced
mov edx, dword [ebp - 0x1c]
cmp byte [ebp - 0x32], 0
movzx ebx, byte [ebp - 0x30]
mov eax, dword [edx + 0x103f]
je loc_fffc878f  ; je 0xfffc878f
imul esi, ebx, 0xd8
lea eax, [eax + ebx*4 + 0x3630]
mov ecx, dword [ebp - 0x28]
add edx, 0x2974
mov dword [eax], ecx
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x2c], esi
mov dword [ebp - 0x30], edx

loc_fffc8703:  ; not directly referenced
sub esp, 0xc
mov ecx, 1
push 1
mov edx, dword [ebp - 0x44]
mov eax, dword [ebp - 0x1c]
push 0
push 0
push dword [ebp + 0x24]
push ebx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
cmp byte [ebp - 0x31], 0
jne short loc_fffc8776  ; jne 0xfffc8776

loc_fffc8729:  ; not directly referenced
inc dword [ebp - 0x44]
cmp dword [ebp - 0x44], 2
jne short loc_fffc8703  ; jne 0xfffc8703
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc8737:  ; not directly referenced
movzx ecx, dl
xor eax, eax
imul ecx, ecx, 0x18
mov dword [ebp - 0x20], ecx

loc_fffc8742:  ; not directly referenced
lea ecx, [eax*4]
mov edi, dword [ebp - 0x28]
lea esi, [eax + eax*2]
add esi, dword [ebp - 0x20]
add esi, dword [ebp - 0x2c]
add esi, dword [ebp - 0x30]
sar edi, cl
inc eax
and edi, 0xf
cmp eax, 8
mov dword [ebp - 0x40], edi
mov edi, dword [ebp - 0x24]
mov cl, byte [ebp - 0x40]
mov byte [esi + edi + 0x6a6], cl
jne short loc_fffc8742  ; jne 0xfffc8742
inc edx
jmp short loc_fffc8782  ; jmp 0xfffc8782

loc_fffc8776:  ; not directly referenced
imul eax, dword [ebp - 0x44], 0x1347
xor edx, edx
mov dword [ebp - 0x24], eax

loc_fffc8782:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
cmp dl, byte [eax + 0x1755]
jb short loc_fffc8737  ; jb 0xfffc8737
jmp short loc_fffc8729  ; jmp 0xfffc8729

loc_fffc878f:  ; not directly referenced
mov edx, dword [ebp - 0x24]
sub esp, 0xc
shl edx, 7
lea ecx, [ebx + edx + 0xc]
mov edx, dword [ebp - 0x2c]
shl edx, 6
add edx, ecx
mov ecx, dword [ebp - 0x28]
lea eax, [eax + edx*4]
mov edx, dword [ebp - 0x2c]
mov dword [eax], ecx
xor ecx, ecx
push 1
mov eax, dword [ebp - 0x1c]
push 0
push dword [ebp - 0x24]
push dword [ebp + 0x24]
push ebx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
cmp byte [ebp - 0x31], 0
je loc_fffc8be7  ; je 0xfffc8be7
movzx eax, byte [ebp - 0x33]
xor ecx, ecx
imul eax, eax, 0x18
imul ebx, ebx, 0xd8
add ebx, eax
xor eax, eax
add ebx, dword [ebp - 0x38]

loc_fffc87e7:  ; not directly referenced
mov edx, dword [ebp - 0x28]
sar edx, cl
add ecx, 4
and edx, 0xf
mov byte [ebx + eax + 0x69e], dl
add eax, 3
cmp ecx, 0x20
jne short loc_fffc87e7  ; jne 0xfffc87e7
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc8806:  ; not directly referenced
mov ebx, dword [ebp - 0x1c]
cmp byte [ebp - 0x32], 0
mov eax, dword [ebx + 0x103f]
movzx ebx, byte [ebp - 0x30]
je loc_fffc88d7  ; je 0xfffc88d7
imul esi, ebx, 0xd8
mov edi, dword [ebp - 0x1c]
lea eax, [eax + ebx*4 + 0x3610]
mov ecx, dword [ebp - 0x28]
add edi, 0x2974
mov dword [eax], ecx
mov dword [ebp - 0x44], 0
mov dword [ebp - 0x2c], esi
mov dword [ebp - 0x30], edi

loc_fffc8845:  ; not directly referenced
sub esp, 0xc
mov ecx, 1
push 0
mov edx, dword [ebp - 0x44]
mov eax, dword [ebp - 0x1c]
push 1
push 0
push dword [ebp + 0x24]
push ebx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
cmp byte [ebp - 0x31], 0
jne short loc_fffc88be  ; jne 0xfffc88be

loc_fffc886b:  ; not directly referenced
inc dword [ebp - 0x44]
cmp dword [ebp - 0x44], 2
jne short loc_fffc8845  ; jne 0xfffc8845
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc8879:  ; not directly referenced
movzx ecx, dl
xor eax, eax
imul ecx, ecx, 0x18
mov dword [ebp - 0x20], ecx

loc_fffc8884:  ; not directly referenced
lea ecx, [eax*4]
lea esi, [eax + eax*2]
add esi, dword [ebp - 0x20]
add esi, dword [ebp - 0x2c]
add esi, dword [ebp - 0x30]
inc eax
mov dword [ebp - 0x38], esi
mov esi, dword [ebp - 0x28]
sar esi, cl
mov edi, dword [ebp - 0x38]
and esi, 0xf
cmp eax, 8
mov dword [ebp - 0x40], esi
mov esi, dword [ebp - 0x24]
mov cl, byte [ebp - 0x40]
mov byte [edi + esi + 0x346], cl
jne short loc_fffc8884  ; jne 0xfffc8884
inc edx
jmp short loc_fffc88ca  ; jmp 0xfffc88ca

loc_fffc88be:  ; not directly referenced
imul eax, dword [ebp - 0x44], 0x1347
xor edx, edx
mov dword [ebp - 0x24], eax

loc_fffc88ca:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
cmp dl, byte [eax + 0x1755]
jb short loc_fffc8879  ; jb 0xfffc8879
jmp short loc_fffc886b  ; jmp 0xfffc886b

loc_fffc88d7:  ; not directly referenced
mov edx, dword [ebp - 0x24]
sub esp, 0xc
shl edx, 7
lea ecx, [ebx + edx + 4]
mov edx, dword [ebp - 0x2c]
shl edx, 6
add edx, ecx
mov ecx, dword [ebp - 0x28]
lea eax, [eax + edx*4]
mov edx, dword [ebp - 0x2c]
mov dword [eax], ecx
xor ecx, ecx
push 0
mov eax, dword [ebp - 0x1c]
push 1
push dword [ebp - 0x24]
push dword [ebp + 0x24]
push ebx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
cmp byte [ebp - 0x31], 0
je loc_fffc8be7  ; je 0xfffc8be7
movzx eax, byte [ebp - 0x33]
xor ecx, ecx
imul eax, eax, 0x18
imul ebx, ebx, 0xd8
add ebx, eax
xor eax, eax
add ebx, dword [ebp - 0x38]

loc_fffc892f:  ; not directly referenced
mov edx, dword [ebp - 0x28]
sar edx, cl
add ecx, 4
and edx, 0xf
mov byte [ebx + eax + 0x33e], dl
add eax, 3
cmp ecx, 0x20
jne short loc_fffc892f  ; jne 0xfffc892f
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc894e:  ; not directly referenced
mov ebx, dword [ebp - 0x1c]
cmp byte [ebp - 0x32], 0
mov eax, dword [ebx + 0x103f]
je loc_fffc8a16  ; je 0xfffc8a16
movzx esi, byte [ebp - 0x30]
mov ecx, dword [ebp - 0x28]
imul edi, esi, 0xd8
mov dword [eax + 0x364c], ecx
xor ebx, ebx
mov dword [ebp - 0x40], esi
mov dword [ebp - 0x2c], edi

loc_fffc897c:  ; not directly referenced
sub esp, 0xc
mov ecx, 1
push 0
mov edx, ebx
mov eax, dword [ebp - 0x1c]
push 1
push 0
push dword [ebp + 0x24]
push dword [ebp - 0x40]
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
cmp byte [ebp - 0x31], 0
jne short loc_fffc89fe  ; jne 0xfffc89fe

loc_fffc89a3:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc897c  ; jne 0xfffc897c
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc89ae:  ; not directly referenced
movzx edi, dl
xor eax, eax
imul edi, edi, 0x18
mov dword [ebp - 0x20], edi

loc_fffc89b9:  ; not directly referenced
lea ecx, [eax + eax*2]
mov edi, dword [ebp - 0x2c]
add ecx, dword [ebp - 0x20]
lea esi, [eax*4]
add edi, ecx
mov ecx, dword [ebp - 0x1c]
inc eax
lea edi, [ecx + edi + 0x2974]
mov ecx, esi
mov dword [ebp - 0x38], edi
mov edi, dword [ebp - 0x28]
sar edi, cl
mov esi, dword [ebp - 0x24]
and edi, 0xf
cmp eax, 8
mov dword [ebp - 0x30], edi
mov edi, dword [ebp - 0x38]
mov cl, byte [ebp - 0x30]
mov byte [edi + esi + 0xa06], cl
jne short loc_fffc89b9  ; jne 0xfffc89b9
inc edx
jmp short loc_fffc8a09  ; jmp 0xfffc8a09

loc_fffc89fe:  ; not directly referenced
imul eax, ebx, 0x1347
xor edx, edx
mov dword [ebp - 0x24], eax

loc_fffc8a09:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
cmp dl, byte [eax + 0x1755]
jb short loc_fffc89ae  ; jb 0xfffc89ae
jmp short loc_fffc89a3  ; jmp 0xfffc89a3

loc_fffc8a16:  ; not directly referenced
mov ecx, dword [ebp - 0x24]
mov edx, dword [ebp - 0x2c]
shl ecx, 9
sub esp, 0xc
shl edx, 8
movzx ebx, byte [ebp - 0x30]
lea edx, [ecx + edx + 0x4c]
add eax, edx
mov ecx, dword [ebp - 0x28]
mov edx, dword [ebp - 0x2c]
mov dword [eax], ecx
xor ecx, ecx
push 0
mov eax, dword [ebp - 0x1c]
push 1
push dword [ebp - 0x24]
push dword [ebp + 0x24]
push ebx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
cmp byte [ebp - 0x31], 0
je loc_fffc8be7  ; je 0xfffc8be7
movzx eax, byte [ebp - 0x33]
xor ecx, ecx
imul eax, eax, 0x18
imul ebx, ebx, 0xd8
add ebx, eax
xor eax, eax
add ebx, dword [ebp - 0x38]

loc_fffc8a6f:  ; not directly referenced
mov edx, dword [ebp - 0x28]
sar edx, cl
add ecx, 4
and edx, 0xf
mov byte [ebx + eax + 0x9fe], dl
add eax, 3
cmp ecx, 0x20
jne short loc_fffc8a6f  ; jne 0xfffc8a6f
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc8a8e:  ; not directly referenced
cmp byte [ebp - 0x20], 4
sete dl
cmp byte [ebp - 0x20], 1
sete al
or dl, al
jne short loc_fffc8adf  ; jne 0xfffc8adf
cmp byte [ebp - 0x20], 0x20
sete dl
cmp byte [ebp - 0x20], 0x10
sete al
or dl, al
jne short loc_fffc8adf  ; jne 0xfffc8adf
mov al, byte [ebp - 0x20]
sub eax, 2
cmp al, 1
setbe al
or al, byte [ebp - 0x39]
jne short loc_fffc8ad9  ; jne 0xfffc8ad9
cmp byte [ebp - 0x20], 0x21
sete al
cmp byte [ebp - 0x20], 0x11
sete dl
or eax, edx
cmp al, 1
sbb eax, eax
inc eax
jmp short loc_fffc8adb  ; jmp 0xfffc8adb

loc_fffc8ad9:  ; not directly referenced
mov al, 1

loc_fffc8adb:  ; not directly referenced
xor edx, edx
jmp short loc_fffc8ae6  ; jmp 0xfffc8ae6

loc_fffc8adf:  ; not directly referenced
xor eax, eax
mov edx, 1

loc_fffc8ae6:  ; not directly referenced
mov ebx, dword [ebp - 0x1c]
cmp byte [ebp - 0x32], 0
mov ecx, dword [ebx + 0x103f]
je loc_fffc8b79  ; je 0xfffc8b79
movzx eax, al
mov dword [ecx + 0x3670], esi
xor ebx, ebx
mov dword [ebp - 0x20], eax
mov dword [ebp - 0x28], edx

loc_fffc8b0a:  ; not directly referenced
imul eax, ebx, 0x1347
mov edi, dword [ebp - 0x1c]
cmp dword [edi + eax + 0x297c], 2
je short loc_fffc8b28  ; je 0xfffc8b28

loc_fffc8b1d:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc8b0a  ; jne 0xfffc8b0a
jmp near loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc8b28:  ; not directly referenced
mov edx, dword [ebp - 0x1c]
sub esp, 0xc
push dword [ebp - 0x20]
push dword [ebp - 0x28]
mov ecx, 1
push 0
push dword [ebp + 0x24]
lea edi, [edx + eax + 0x297c]
mov edx, ebx
movzx eax, byte [ebp - 0x30]
push eax
mov eax, dword [ebp - 0x1c]
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
xor eax, eax
jmp short loc_fffc8b6c  ; jmp 0xfffc8b6c

loc_fffc8b5b:  ; not directly referenced
cmp byte [ebp - 0x31], 0
je short loc_fffc8b6b  ; je 0xfffc8b6b
movzx edx, al
mov dword [edi + edx*4 + 0xf9], esi

loc_fffc8b6b:  ; not directly referenced
inc eax

loc_fffc8b6c:  ; not directly referenced
mov ecx, dword [ebp - 0x1c]
cmp al, byte [ecx + 0x1755]
jb short loc_fffc8b5b  ; jb 0xfffc8b5b
jmp short loc_fffc8b1d  ; jmp 0xfffc8b1d

loc_fffc8b79:  ; not directly referenced
mov edi, dword [ebp - 0x2c]
mov ebx, dword [ebp - 0x24]
shl edi, 8
sub esp, 0xc
shl ebx, 9
movzx eax, al
lea ebx, [edi + ebx + 0x70]
add ecx, ebx
movzx ebx, byte [ebp - 0x30]
mov dword [ecx], esi
xor ecx, ecx
push eax
mov eax, dword [ebp - 0x1c]
push edx
push dword [ebp - 0x24]
push dword [ebp + 0x24]
mov edx, dword [ebp - 0x2c]
push ebx
call fcn_fffb00a3  ; call 0xfffb00a3
add esp, 0x20
cmp byte [ebp - 0x31], 0
je short loc_fffc8be7  ; je 0xfffc8be7
mov ebx, dword [ebp - 0x24]
mov edi, dword [ebp - 0x38]
mov dword [edi + ebx*4 + 0xf9], esi
jmp short loc_fffc8be7  ; jmp 0xfffc8be7

loc_fffc8bc5:  ; not directly referenced
mov eax, 2
jmp short loc_fffc8be9  ; jmp 0xfffc8be9

loc_fffc8bcc:  ; not directly referenced
cmp byte [ebp - 0x20], 0
sete dl
cmp byte [ebp - 0x20], 0xb
sete al
or dl, al
jne loc_fffc8adf  ; jne 0xfffc8adf
jmp near loc_fffc8a8e  ; jmp 0xfffc8a8e

loc_fffc8be7:  ; not directly referenced
xor eax, eax

loc_fffc8be9:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc8bf1:  ; not directly referenced
push ebp
cmp ecx, edx
mov ebp, esp
push edi
mov edi, eax
push esi
push ebx
mov ebx, dword [ebp + 8]
ja short loc_fffc8c09  ; ja 0xfffc8c09
inc edi
inc dword [ebx + 0xc]
imul eax, edi, 0xa
jmp short loc_fffc8c70  ; jmp 0xfffc8c70

loc_fffc8c09:  ; not directly referenced
mov esi, ecx
sub esi, edx
cmp ecx, 6
ja short loc_fffc8c37  ; ja 0xfffc8c37
imul edi, eax, 0xa
mov eax, 7
sub eax, ecx
xor edx, edx
imul eax, eax, 0xa
inc dword [ebx + 8]
div esi
mov ecx, 0xa
cmp eax, 0xa
cmovbe ecx, eax
lea eax, [edi + ecx + 0x14]
jmp short loc_fffc8c70  ; jmp 0xfffc8c70

loc_fffc8c37:  ; not directly referenced
cmp edx, 7
ja short loc_fffc8c45  ; ja 0xfffc8c45
inc dword [ebx + 4]
test esi, esi
jne short loc_fffc8c49  ; jne 0xfffc8c49
jmp short loc_fffc8c5a  ; jmp 0xfffc8c5a

loc_fffc8c45:  ; not directly referenced
inc dword [ebx]
jmp short loc_fffc8c5a  ; jmp 0xfffc8c5a

loc_fffc8c49:  ; not directly referenced
mov eax, 7
inc edi
sub eax, edx
xor edx, edx
imul eax, eax, 0xa
div esi
jmp short loc_fffc8c6b  ; jmp 0xfffc8c6b

loc_fffc8c5a:  ; not directly referenced
cmp esi, edx
cmovb esi, edx
xor eax, eax
test esi, esi
je short loc_fffc8c70  ; je 0xfffc8c70
mov al, 0x46
xor edx, edx
div esi

loc_fffc8c6b:  ; not directly referenced
imul edi, edi, 0xa
add eax, edi

loc_fffc8c70:  ; not directly referenced
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffc8c75:
db 0x00
db 0x00
db 0x00

fcn_fffc8d04:
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, edx
lea esp, [esp - 0x1c]
test ax, ax
mov word [edx], 0
je loc_fffc8dc3  ; je 0xfffc8dc3
test cl, cl
jne short loc_fffc8d85  ; jne 0xfffc8d85
test ax, ax
jns short loc_fffc8d2f  ; jns 0xfffc8d2f
neg eax
mov cl, 1
and ax, 0x7fff

loc_fffc8d2f:
cmp ax, 0x1f4
mov esi, 0x1f4
push 0
cmovle esi, eax
mov byte [ebp - 0x20], cl
movsx esi, si
shl esi, 0xa
push 0x3e8
mov edi, esi
sar edi, 0x1f
push edi
push esi
call udiv64  ; call 0xfffc91d0
add esp, 0x10
mov dword [ebp - 0x1c], eax
push 0
push 0x3e8
push edi
push esi
call fcn_fffc9300  ; call 0xfffc9300
add esp, 0x10
cmp eax, 0x1f3
mov cl, byte [ebp - 0x20]
mov eax, dword [ebp - 0x1c]
ja short loc_fffc8d7d  ; ja 0xfffc8d7d
jmp short loc_fffc8d7e  ; jmp 0xfffc8d7e

loc_fffc8d7d:
inc eax

loc_fffc8d7e:
mov word [ebx], ax
test cl, cl
jmp short loc_fffc8dbe  ; jmp 0xfffc8dbe

loc_fffc8d85:
dec cl
jne short loc_fffc8dc3  ; jne 0xfffc8dc3
xor edx, edx
test ah, 4
je short loc_fffc8d98  ; je 0xfffc8d98
neg eax
mov dl, 1
and ax, 0x3ff

loc_fffc8d98:
cwde
imul eax, eax, 0x3e8
mov edi, eax
mov esi, eax
sar edi, 0x1f
and eax, 0x3ff
shrd esi, edi, 0xa
cmp eax, 0x1f3
ja short loc_fffc8db8  ; ja 0xfffc8db8
jmp short loc_fffc8db9  ; jmp 0xfffc8db9

loc_fffc8db8:
inc esi

loc_fffc8db9:
mov word [ebx], si
test dl, dl

loc_fffc8dbe:
je short loc_fffc8dc3  ; je 0xfffc8dc3
neg word [ebx]

loc_fffc8dc3:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc8dcb:
push ebp
mov ebp, esp
push edi
push esi
push ebx
mov ebx, edx
lea esp, [esp - 0x1c]
test ax, ax
jne short loc_fffc8de6  ; jne 0xfffc8de6
mov word [edx], 0
jmp near loc_fffc8e67  ; jmp 0xfffc8e67

loc_fffc8de6:
test cl, cl
jne short loc_fffc8e38  ; jne 0xfffc8e38
cmp ax, 0xfff
mov esi, 0xfff
push 0
cmovbe esi, eax
movzx esi, si
shl esi, 0xa
push 0x3e8
mov edi, esi
sar edi, 0x1f
push edi
push esi
call udiv64  ; call 0xfffc91d0
add esp, 0x10
mov word [ebx], ax
push 0
mov word [ebp - 0x1a], ax
push 0x3e8
push edi
push esi
call fcn_fffc9300  ; call 0xfffc9300
add esp, 0x10
cmp eax, 0x1f3
jbe short loc_fffc8e67  ; jbe 0xfffc8e67
mov ax, word [ebp - 0x1a]
inc eax
jmp short loc_fffc8e64  ; jmp 0xfffc8e64

loc_fffc8e38:
dec cl
jne short loc_fffc8e67  ; jne 0xfffc8e67
movzx eax, ax
imul eax, eax, 0x3e8
mov edi, eax
mov esi, eax
sar edi, 0x1f
and eax, 0x3ff
shrd esi, edi, 0xa
cmp eax, 0x1f3
mov edx, esi
mov word [ebx], si
jbe short loc_fffc8e67  ; jbe 0xfffc8e67
lea eax, [edx + 1]

loc_fffc8e64:
mov word [ebx], ax

loc_fffc8e67:
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc8e6f:
push ebp
mov ecx, 0x150
mov ebp, esp
push edi
mov edi, eax
push esi
rdmsr
push ebx
xor esi, esi
lea esp, [esp - 0x2c]
mov dword [ebp - 0x30], eax
mov dword [ebp - 0x2c], edx

loc_fffc8e8a:
cmp edi, 1
je short loc_fffc8e98  ; je 0xfffc8e98
cmp edi, 2
mov bl, 1
jne short loc_fffc8ed7  ; jne 0xfffc8ed7
jmp short loc_fffc8eb3  ; jmp 0xfffc8eb3

loc_fffc8e98:
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov eax, dword [eax + 0x48]
and eax, 0xfffffffe
mov ebx, dword [eax + 0x5da4]
shr ebx, 0x1f
jmp short loc_fffc8ed7  ; jmp 0xfffc8ed7

loc_fffc8eb3:
mov eax, dword [ebp - 0x30]
mov edx, dword [ebp - 0x2c]
mov dword [ebp - 0x28], eax
mov dword [ebp - 0x24], edx
mov ecx, 8
lea edx, [ebp - 0x28]
lea eax, [ebp - 0x20]
call mrc_memcpy
mov bl, byte [ebp - 0x19]
shr bl, 7
jmp short loc_fffc8ed7  ; jmp 0xfffc8ed7

loc_fffc8ed7:
mov eax, 1
inc esi
call usleep
and ebx, 1
cmp si, 0x3e7
setbe al
test bl, al
jne short loc_fffc8e8a  ; jne 0xfffc8e8a
cmp si, 0x3e8
sete al
lea esp, [esp + 0x2c]
and eax, ebx
shl eax, 0x1f
sar eax, 0x1f
pop ebx
and eax, 0x80000012
pop esi
pop edi
pop ebp
ret

fcn_fffc8f0f:
push ebp
mov ebp, esp
push edi
mov edi, eax
push esi
mov esi, ecx
push ebx
lea esp, [esp - 0x3c]
mov dword [ebp - 0x44], edx
call fcn_fffc8e6f  ; call 0xfffc8e6f
test eax, eax
mov ebx, eax
mov edx, dword [ebp - 0x44]
js loc_fffc906c  ; js 0xfffc906c
cmp edi, 1
je short loc_fffc8f42  ; je 0xfffc8f42
cmp edi, 2
jne loc_fffc9067  ; jne 0xfffc9067
jmp short loc_fffc8fbc  ; jmp 0xfffc8fbc

loc_fffc8f42:
mov dword [ebp - 0x20], edx
or byte [ebp - 0x1d], 0x80
mov eax, dword [0xf0000060]
and eax, 0xfc000000
mov edi, dword [eax + 0x48]
mov eax, dword [ebp - 0x20]
and edi, 0xfffffffe
mov dword [edi + 0x5da4], eax
mov eax, 1
call fcn_fffc8e6f  ; call 0xfffc8e6f
mov eax, dword [edi + 0x5da4]
mov dword [ebp - 0x20], eax
mov eax, dword [edi + 0x5da0]
mov dword [ebp - 0x1c], eax
mov eax, 0xa
call usleep
mov edx, dword [edi + 0x5da4]
mov eax, dword [ebp - 0x20]
cmp eax, edx
mov ecx, dword [edi + 0x5da0]
je short loc_fffc8faa  ; je 0xfffc8faa
cmp dword [ebp - 0x1c], ecx
je short loc_fffc8faa  ; je 0xfffc8faa

loc_fffc8fa0:
mov ebx, 0x80000002
jmp near loc_fffc906c  ; jmp 0xfffc906c

loc_fffc8faa:
mov edx, dword [ebp + 8]
mov ecx, 4
mov dword [edx], eax
lea edx, [ebp - 0x1c]
jmp near loc_fffc905e  ; jmp 0xfffc905e

loc_fffc8fbc:
mov eax, dword [esi]
mov dword [ebp - 0x24], edx
mov dword [ebp - 0x28], eax
lea edx, [ebp - 0x28]
mov ecx, 8
lea eax, [ebp - 0x30]
or byte [ebp - 0x21], 0x80
call mrc_memcpy
mov eax, dword [ebp - 0x30]
mov edx, dword [ebp - 0x2c]
mov ecx, 0x150
wrmsr
mov eax, 2
mov dword [ebp - 0x44], ecx
call fcn_fffc8e6f  ; call 0xfffc8e6f
mov ecx, dword [ebp - 0x44]
rdmsr
mov ecx, 8
mov dword [ebp - 0x40], eax
mov dword [ebp - 0x3c], edx
mov dword [ebp - 0x30], eax
mov dword [ebp - 0x2c], edx
lea eax, [ebp - 0x28]
lea edx, [ebp - 0x30]
call mrc_memcpy
mov eax, 0xa
call usleep
mov eax, dword [ebp - 0x40]
mov edx, dword [ebp - 0x3c]
mov dword [ebp - 0x30], eax
mov dword [ebp - 0x2c], edx
mov ecx, 8
lea edx, [ebp - 0x30]
lea eax, [ebp - 0x20]
call mrc_memcpy
mov edx, dword [ebp - 0x1c]
cmp dword [ebp - 0x24], edx
je short loc_fffc904d  ; je 0xfffc904d
mov eax, dword [ebp - 0x20]
cmp dword [ebp - 0x28], eax
jne loc_fffc8fa0  ; jne 0xfffc8fa0

loc_fffc904d:
mov edx, dword [ebp + 8]
mov ecx, 4
movzx eax, byte [ebp - 0x24]
mov dword [edx], eax
lea edx, [ebp - 0x28]

loc_fffc905e:
mov eax, esi
call mrc_memcpy
jmp short loc_fffc906c  ; jmp 0xfffc906c

loc_fffc9067:
mov ebx, 0x80000003

loc_fffc906c:
lea esp, [esp + 0x3c]
mov eax, ebx
pop ebx
pop esi
pop edi
pop ebp
ret

haswell_stepping:
push ebp
xor ecx, ecx
mov eax, 1
mov ebp, esp
push ebx
cpuid
and eax, 0xf
pop ebx
pop ebp
ret

haswell_family_model:
push ebp
xor ecx, ecx
mov eax, 1
mov ebp, esp
push ebx
cpuid
and eax, 0xfff0ff0
pop ebx
pop ebp
ret

loc_fffc91c8:
dd 0x00000000
dd 0x00000000

loc_fffc92f8:
dd 0x00000000
dd 0x00000000

fcn_fffc9300:
push ebp
mov ebp, esp
push edi
push esi
lea esp, [esp - 0x20]
mov edx, dword [ebp + 0x14]
mov eax, dword [ebp + 8]
mov ecx, dword [ebp + 0x10]
mov esi, dword [ebp + 0xc]
test edx, edx
mov dword [ebp - 0x18], eax
mov dword [ebp - 0xc], ecx
mov edi, eax
mov dword [ebp - 0x10], esi
jne short loc_fffc9338  ; jne 0xfffc9338
cmp ecx, esi
jbe short loc_fffc9368  ; jbe 0xfffc9368
mov edx, esi
div ecx

loc_fffc932c:
mov eax, edx
xor edx, edx
lea esp, [esp + 0x20]
pop esi
pop edi
pop ebp
ret

loc_fffc9338:
cmp edx, esi
ja short loc_fffc9388  ; ja 0xfffc9388
bsr eax, edx
xor eax, 0x1f
mov dword [ebp - 0x14], eax
jne short loc_fffc9398  ; jne 0xfffc9398
cmp ecx, edi
ja loc_fffc9438  ; ja 0xfffc9438

loc_fffc934f:
sub edi, ecx
sbb esi, edx
mov dword [ebp - 0x10], esi

loc_fffc9356:
mov eax, edi
mov edx, dword [ebp - 0x10]
lea esp, [esp + 0x20]
pop esi
pop edi
pop ebp
ret

loc_fffc9363:
db 0x90
dd 0x0026748d

loc_fffc9368:
test ecx, ecx
jne short loc_fffc9377  ; jne 0xfffc9377
mov eax, 1
xor edx, edx
div ecx
mov ecx, eax

loc_fffc9377:
mov eax, esi
xor edx, edx
div ecx
mov eax, edi
div ecx
jmp short loc_fffc932c  ; jmp 0xfffc932c

loc_fffc9383:
db 0x90
dd 0x0026748d

loc_fffc9388:
mov edx, esi
lea esp, [esp + 0x20]
pop esi
pop edi
pop ebp
ret

loc_fffc9392:
db 0x8d
db 0xb6
dd 0x00000000

loc_fffc9398:
movzx ecx, byte [ebp - 0x14]
mov edi, 0x20
sub edi, dword [ebp - 0x14]
mov eax, dword [ebp - 0xc]
shl edx, cl
mov ecx, edi
shr eax, cl
movzx ecx, byte [ebp - 0x14]
or eax, edx
mov dword [ebp - 0x10], eax
mov eax, dword [ebp - 0xc]
shl eax, cl
mov ecx, edi
mov edx, esi
mov dword [ebp - 0x1c], eax
shr edx, cl
mov eax, dword [ebp - 0x18]
movzx ecx, byte [ebp - 0x14]
shl esi, cl
mov ecx, edi
shr eax, cl
movzx ecx, byte [ebp - 0x14]
or eax, esi
mov esi, dword [ebp - 0x18]
shl esi, cl
div dword [ebp - 0x10]
mov dword [ebp - 0xc], edx
mov dword [ebp - 0x18], esi
mul dword [ebp - 0x1c]
cmp dword [ebp - 0xc], edx
mov esi, eax
mov ecx, edx
jb short loc_fffc9425  ; jb 0xfffc9425
cmp dword [ebp - 0x18], eax
jb short loc_fffc9420  ; jb 0xfffc9420

loc_fffc93f6:
mov edx, dword [ebp - 0xc]
mov eax, dword [ebp - 0x18]
sub eax, esi
sbb edx, ecx
movzx ecx, byte [ebp - 0x14]
mov esi, edx
shr eax, cl
mov ecx, edi
shl esi, cl
movzx ecx, byte [ebp - 0x14]
or eax, esi
shr edx, cl
lea esp, [esp + 0x20]
pop esi
pop edi
pop ebp
ret

loc_fffc941c:
dd 0x0026748d

loc_fffc9420:
cmp dword [ebp - 0xc], edx
jne short loc_fffc93f6  ; jne 0xfffc93f6

loc_fffc9425:
mov ecx, edx
mov esi, eax
sub esi, dword [ebp - 0x1c]
sbb ecx, dword [ebp - 0x10]
jmp short loc_fffc93f6  ; jmp 0xfffc93f6

loc_fffc9431:
db 0x8d
db 0xb4
db 0x26
dd 0x00000000

loc_fffc9438:
cmp edx, esi
jb loc_fffc934f  ; jb 0xfffc934f
jmp near loc_fffc9356  ; jmp 0xfffc9356

fcn_fffc9445:  ; not directly referenced
push ebp
shl edx, 0xa
mov ebp, esp
push edi
xor edi, edi
push esi
xor esi, esi
push ebx
mov ebx, eax
lea esp, [esp - 0x2c]
mov eax, dword [eax + 0x103f]
mov byte [ebp - 0x29], cl
mov dword [ebp - 0x20], 0
lea ecx, [edx + eax + 0x41a0]
mov eax, dword [ecx]
and eax, 0xfffffccc
or eax, 0x111
mov dword [ecx], eax
mov eax, dword [ebx + 0x103f]
mov ecx, dword [ebp + 0x10]
lea eax, [edx + eax + 0x41a4]
mov dword [eax], ecx
mov eax, dword [ebx + 0x103f]
mov ecx, dword [ebp + 0x14]
lea eax, [edx + eax + 0x41a8]
mov dword [eax], ecx
mov eax, dword [ebx + 0x103f]
mov ecx, dword [ebp + 0x18]
lea eax, [edx + eax + 0x41ac]
mov dword [eax], ecx
mov eax, dword [ebx + 0x103f]
lea eax, [edx + eax + 0x41bc]
add edx, 0x41c0
mov dword [eax], 0
mov eax, dword [ebp + 8]
mov dword [ebp - 0x28], edx
mov dword [ebp - 0x1c], eax
jmp near loc_fffc956a  ; jmp 0xfffc956a

loc_fffc94da:  ; not directly referenced
mov eax, dword [ebp - 0x1c]
mov ecx, dword [eax + 4]
mov eax, dword [eax]
mov edx, eax
mov dword [ebp - 0x30], eax
and edx, 2
and eax, 1
shr edx, 1
add eax, eax
or edx, eax
movzx eax, cl
and ecx, 0x300
or ah, 0x80
shl ecx, 5
or edx, 4
shl edx, 8
mov dword [ebp - 0x34], ecx
mov ecx, dword [ebp - 0x30]
and ecx, 0x7c
shl ecx, 6
or dword [ebp - 0x34], ecx
or eax, dword [ebp - 0x34]
mov si, ax
mov eax, dword [ebp - 0x30]
mov ecx, esi
and eax, 0x380
shl eax, 0x11
and ecx, 0xf8ffffff
mov esi, ecx
mov ecx, dword [ebp - 0x1c]
or esi, eax
mov eax, edi
and ah, 0xf8
or eax, edx
mov edx, dword [ecx + 8]
mov cl, byte [ebp - 0x29]
and eax, 0xfffffff0
shl edx, cl
mov edi, eax
push ecx
not edx
mov eax, ebx
push ecx
and edx, 0xf
or edi, edx
mov edx, dword [ebp - 0x28]
push edi
push esi
call MCHBAR_WRITE64
inc dword [ebp - 0x20]
add dword [ebp - 0x1c], 0xc
add esp, 0x10

loc_fffc956a:  ; not directly referenced
mov eax, dword [ebp + 0xc]
cmp dword [ebp - 0x20], eax
jne loc_fffc94da  ; jne 0xfffc94da
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc957e:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
push ebx
lea esp, [esp - 0x2c]
cmp dword [ebp + 8], 1
je short loc_fffc95c3  ; je 0xfffc95c3
jb short loc_fffc95a3  ; jb 0xfffc95a3
cmp dword [ebp + 8], 2
mov eax, 1
jne loc_fffc96aa  ; jne 0xfffc96aa
jmp short loc_fffc95b3  ; jmp 0xfffc95b3

loc_fffc95a3:  ; not directly referenced
mov dword [ebp - 0x28], 0xa4
mov dword [ebp - 0x24], 0x29
jmp short loc_fffc95d1  ; jmp 0xfffc95d1

loc_fffc95b3:  ; not directly referenced
mov dword [ebp - 0x28], 0xa8
mov dword [ebp - 0x24], 0x2a
jmp short loc_fffc95d1  ; jmp 0xfffc95d1

loc_fffc95c3:  ; not directly referenced
mov dword [ebp - 0x28], 0xc0
mov dword [ebp - 0x24], 0x30

loc_fffc95d1:  ; not directly referenced
movzx edx, dl
mov dword [ebp - 0x20], esi
movzx ecx, cl
xor edi, edi
mov dword [ebp - 0x30], edx
mov dword [ebp - 0x34], ecx

loc_fffc95e2:  ; not directly referenced
mov eax, dword [ebp - 0x30]
bt eax, edi
jae loc_fffc9695  ; jae 0xfffc9695
mov edx, dword [ebp - 0x20]
mov eax, edi
shl eax, 0xa
add eax, 0x4190
mov dword [ebp - 0x2c], eax
add eax, dword [esi + 0x103f]
movzx ebx, byte [edx + 0x3acc]
mov edx, 1
and ebx, 0xf
shl ebx, 0x10
or ebx, 0xf
mov dword [eax], ebx
mov eax, esi
call fcn_fffb2d76  ; call 0xfffb2d76
mov dword [ebp - 0x1c], 0

loc_fffc9629:  ; not directly referenced
mov edx, dword [ebp - 0x20]
mov cl, byte [ebp - 0x1c]
mov eax, 1
shl eax, cl
test byte [edx + 0x3acb], al
jne short loc_fffc9649  ; jne 0xfffc9649

loc_fffc963e:  ; not directly referenced
inc dword [ebp - 0x1c]
cmp dword [ebp - 0x1c], 4
jne short loc_fffc9629  ; jne 0xfffc9629
jmp short loc_fffc9672  ; jmp 0xfffc9672

loc_fffc9649:  ; not directly referenced
mov ecx, dword [ebp - 0x34]
mov eax, dword [ebp - 0x1c]
bt ecx, eax
jae short loc_fffc963e  ; jae 0xfffc963e
push 0
mov ecx, eax
mov edx, edi
push 1
push dword [ebp - 0x28]
push dword [ebp - 0x24]
mov eax, esi
call fcn_fffb8fda  ; call 0xfffb8fda
add esp, 0x10
test eax, eax
je short loc_fffc963e  ; je 0xfffc963e
jmp short loc_fffc96aa  ; jmp 0xfffc96aa

loc_fffc9672:  ; not directly referenced
cmp dword [ebp + 8], 2
je short loc_fffc9695  ; je 0xfffc9695
mov eax, esi
mov edx, 1
call fcn_fffb2d76  ; call 0xfffb2d76
mov eax, dword [ebp - 0x2c]
add eax, dword [esi + 0x103f]
and ebx, 0xfff0ffff
mov dword [eax], ebx

loc_fffc9695:  ; not directly referenced
inc edi
add dword [ebp - 0x20], 0x1347
cmp edi, 2
jne loc_fffc95e2  ; jne 0xfffc95e2
xor eax, eax
jmp short loc_fffc96aa  ; jmp 0xfffc96aa

loc_fffc96aa:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc96b2:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, edx
push esi
xor esi, esi
push ebx
mov ebx, eax
lea esp, [esp - 0x2c]

loc_fffc96c2:  ; not directly referenced
lea eax, [esi + 0x915]
lea edx, [eax*8]
mov dword [ebp - 0x2c], edx
mov edx, dword [ebx + 0x103f]
movq qword [ebp - 0x20], mm0
movq mm0, qword [edx + eax*8]
movq qword [ebp - 0x28], mm0
movq mm0, qword [ebp - 0x20]
emms
mov eax, dword [ebp - 0x28]
bt edi, esi
mov edx, dword [ebp - 0x24]
mov ecx, eax
jae short loc_fffc9701  ; jae 0xfffc9701
and ch, 0xcf
mov eax, ecx
or ah, 0x18
jmp short loc_fffc9704  ; jmp 0xfffc9704

loc_fffc9701:  ; not directly referenced
and ah, 0xf7

loc_fffc9704:  ; not directly referenced
push ecx
inc esi
push ecx
push edx
mov edx, dword [ebp - 0x2c]
push eax
mov eax, ebx
call MCHBAR_WRITE64
add esp, 0x10
cmp esi, 2
jne short loc_fffc96c2  ; jne 0xfffc96c2
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4d98], 2
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x4800], 1
mov edx, dword [ebx + 0x103f]
mov eax, dword [edx + 0x4800]
mov dword [edx + 0x4d98], 0
mov edx, dword [ebx + 0x103f]
and eax, 0xfffffffe
or eax, 2
test edi, 1
mov dword [edx + 0x4800], eax
mov eax, dword [ebx + 0x103f]
mov eax, dword [eax + 0x4800]
je short loc_fffc9799  ; je 0xfffc9799
mov edx, 0x48a8
mov eax, ebx
call MCHBAR64
push esi
and ah, 0xf7
push esi
push edx
mov edx, 0x48a8
push eax
mov eax, ebx
call MCHBAR_WRITE64
add esp, 0x10

loc_fffc9799:  ; not directly referenced
and edi, 2
je short loc_fffc97c0  ; je 0xfffc97c0
mov edx, 0x48b0
mov eax, ebx
call MCHBAR64
push ecx
and ah, 0xf7
push ecx
push edx
mov edx, 0x48b0
push eax
mov eax, ebx
call MCHBAR_WRITE64
add esp, 0x10

loc_fffc97c0:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc97c8:  ; not directly referenced
push ebp
mov ebp, esp
push edi
mov edi, edx
mov edx, 2
push esi
push ebx
mov ebx, eax
lea esp, [esp - 0x7c]
mov esi, dword [ebp + 8]
mov eax, esi
mov byte [ebp - 0x44], cl
mov byte [ebp - 0x5d], al
xor ecx, ecx
lea eax, [ebp - 0x2c]
call mrc_setmem
mov ecx, edi
mov eax, 1
movzx edx, cl
mov byte [ebp - 0x39], 0
shl eax, cl
mov cl, byte [ebp - 0x5d]
mov byte [ebp - 0x3b], al
and eax, 0xff
mov dword [ebp - 0x5c], eax
add ecx, 0x40
mov eax, esi
lea edx, [edx + edx*8]
movzx esi, byte [ebp - 0x44]
mov byte [ebp - 0x43], al
mov byte [ebp - 0x3a], cl
mov dword [ebp - 0x7c], edx
mov dword [ebp - 0x80], esi
jmp near loc_fffc9a94  ; jmp 0xfffc9a94

loc_fffc982b:  ; not directly referenced
push 0
movzx eax, byte [ebp - 0x41]
mov ecx, 4
push eax
mov edx, 1
mov eax, ebx
push 1
push dword [ebp - 0x5c]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc984b:  ; not directly referenced
lea edi, [ebx + 0x10b7]
mov dword [ebp - 0x84], 0
mov dword [ebp - 0x78], edi
jmp near loc_fffc99a0  ; jmp 0xfffc99a0

loc_fffc9863:  ; not directly referenced
imul edx, eax, 0x1347
mov cl, byte [ebp - 0x3b]
test byte [ebx + edx + 0x3acb], cl
jne short loc_fffc987f  ; jne 0xfffc987f
mov byte [ebp + eax - 0x2c], 0xff
jmp near loc_fffc997f  ; jmp 0xfffc997f

loc_fffc987f:  ; not directly referenced
cmp byte [ebp + eax - 0x2c], 0xff
je loc_fffc997f  ; je 0xfffc997f
imul ecx, eax, 0x2fa
lea edx, [ebx + edx + 0x297c]
mov esi, dword [ebp - 0x78]
mov dword [ebp - 0x70], edx
mov edx, eax
lea edi, [ebp - 0x18]
shl edx, 8
add edx, 0x54
mov dword [ebp - 0x68], edx
lea edx, [eax + eax*8]
add edi, edx
lea ecx, [esi + ecx + 5]
mov dword [ebp - 0x64], edi
mov dword [ebp - 0x6c], ecx
xor ecx, ecx
jmp near loc_fffc9973  ; jmp 0xfffc9973

loc_fffc98c1:  ; not directly referenced
movzx esi, cl
mov edx, 1
shl edx, cl
mov byte [ebp - 0x58], dl
mov edx, dword [ebp - 0x6c]
movzx edi, byte [edx + esi + 0x2a6]
mov edx, dword [ebp - 0x70]
cmp byte [edx + 0x1232], 0x20
jne short loc_fffc98f3  ; jne 0xfffc98f3
and edi, 2
je short loc_fffc98f3  ; je 0xfffc98f3
mov dl, byte [ebp - 0x58]
or byte [ebp + eax - 0x2c], dl
jmp short loc_fffc9972  ; jmp 0xfffc9972

loc_fffc98f3:  ; not directly referenced
mov edx, esi
shl edx, 9
add edx, dword [ebp - 0x68]
add edx, dword [ebx + 0x103f]
mov edi, dword [edx]
mov dl, byte [ebp + eax - 0x2c]
test byte [ebp - 0x58], dl
mov byte [ebp - 0x42], dl
jne short loc_fffc9972  ; jne 0xfffc9972
and edi, 0xff
cmp dword [ebp - 0x84], 0
mov dword [ebp - 0x40], edi
jne short loc_fffc992d  ; jne 0xfffc992d
mov edi, dword [ebp - 0x64]
mov dl, byte [ebp - 0x40]
mov byte [esi + edi - 0x12], dl
jmp short loc_fffc9972  ; jmp 0xfffc9972

loc_fffc992d:  ; not directly referenced
mov edx, dword [ebp - 0x64]
mov byte [ebp - 0x3c], 0
mov dl, byte [esi + edx - 0x12]
mov byte [ebp - 0x5e], dl
mov edx, dword [ebp - 0x40]
jmp short loc_fffc9948  ; jmp 0xfffc9948

loc_fffc9940:  ; not directly referenced
lea edi, [edx - 1]
inc byte [ebp - 0x3c]
and edx, edi

loc_fffc9948:  ; not directly referenced
test edx, edx
jne short loc_fffc9940  ; jne 0xfffc9940
cmp byte [ebp - 0x3c], 4
jne short loc_fffc995a  ; jne 0xfffc995a
mov dl, byte [ebp - 0x40]
cmp byte [ebp - 0x5e], dl
jne short loc_fffc9972  ; jne 0xfffc9972

loc_fffc995a:  ; not directly referenced
mov edi, dword [ebp - 0x7c]
mov dl, byte [ebp - 0x41]
add edi, esi
mov esi, dword [ebp - 0x48]
mov byte [esi + edi], dl
mov dl, byte [ebp - 0x58]
or dl, byte [ebp - 0x42]
mov byte [ebp + eax - 0x2c], dl

loc_fffc9972:  ; not directly referenced
inc ecx

loc_fffc9973:  ; not directly referenced
cmp cl, byte [ebx + 0x1755]
jb loc_fffc98c1  ; jb 0xfffc98c1

loc_fffc997f:  ; not directly referenced
inc eax
add dword [ebp - 0x48], 0x24
cmp eax, 2
jne loc_fffc9863  ; jne 0xfffc9863
inc dword [ebp - 0x84]
cmp dword [ebp - 0x84], 2
je loc_fffc9a60  ; je 0xfffc9a60

loc_fffc99a0:  ; not directly referenced
mov al, byte [ebp - 0x3b]
test byte [ebx + 0x3acb], al
je short loc_fffc99ee  ; je 0xfffc99ee
mov edx, dword [ebx + 0x103f]
or byte [ebp - 0x39], 1
cmp dword [ebp - 0x84], 1
sbb eax, eax
and eax, 0xffffc000
add eax, 0x7000
mov dword [edx + 0x41a4], eax
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x41a8], 0x4000
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x41ac], 0

loc_fffc99ee:  ; not directly referenced
mov dl, byte [ebp - 0x3b]
test byte [ebx + 0x4e12], dl
je short loc_fffc9a3c  ; je 0xfffc9a3c
mov edx, dword [ebx + 0x103f]
or byte [ebp - 0x39], 2
cmp dword [ebp - 0x84], 1
sbb eax, eax
and eax, 0xffffc000
add eax, 0x7000
mov dword [edx + 0x45a4], eax
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x45a8], 0x4000
mov eax, dword [ebx + 0x103f]
mov dword [eax + 0x45ac], 0

loc_fffc9a3c:  ; not directly referenced
movzx edx, byte [ebp - 0x39]
mov eax, ebx
call fcn_fffc96b2  ; call 0xfffc96b2
mov eax, ebx
mov edx, 0xf
call fcn_fffb2d76  ; call 0xfffb2d76
mov ecx, dword [ebp + 0xc]
xor eax, eax
mov dword [ebp - 0x48], ecx
jmp near loc_fffc9863  ; jmp 0xfffc9863

loc_fffc9a60:  ; not directly referenced
cmp byte [ebp - 0x2c], 0xff
jne short loc_fffc9a6c  ; jne 0xfffc9a6c
cmp byte [ebp - 0x2b], 0xff
je short loc_fffc9ad8  ; je 0xfffc9ad8

loc_fffc9a6c:  ; not directly referenced
cmp byte [ebp - 0x5d], 0
jle short loc_fffc9a7d  ; jle 0xfffc9a7d
mov al, byte [ebp - 0x44]
cmp byte [ebp - 0x3a], al
seta al
jmp short loc_fffc9a87  ; jmp 0xfffc9a87

loc_fffc9a7d:  ; not directly referenced
movsx eax, byte [ebp - 0x3a]
cmp eax, dword [ebp - 0x80]
setl al

loc_fffc9a87:  ; not directly referenced
movzx eax, al
mov dl, byte [ebp - 0x43]
add byte [ebp - 0x3a], dl
test eax, eax
jne short loc_fffc9ad8  ; jne 0xfffc9ad8

loc_fffc9a94:  ; not directly referenced
mov cl, byte [ebp - 0x3a]
mov al, byte [ebp - 0x3b]
sub cl, byte [ebp - 0x43]
test byte [ebx + 0x3acb], al
mov byte [ebp - 0x41], cl
je short loc_fffc9ac4  ; je 0xfffc9ac4
push 0
movzx eax, cl
xor edx, edx
push eax
mov ecx, 4
mov eax, ebx
push 1
push dword [ebp - 0x5c]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc9ac4:  ; not directly referenced
mov dl, byte [ebp - 0x3b]
test byte [ebx + 0x4e12], dl
je loc_fffc984b  ; je 0xfffc984b
jmp near loc_fffc982b  ; jmp 0xfffc982b

loc_fffc9ad8:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc9ae0:  ; not directly referenced
push ebp
mov ebp, esp
push edi
xor edi, edi
push esi
mov esi, edx
push ebx
mov ebx, eax
movzx eax, cl
lea esp, [esp - 0x48]
mov dword [ebp - 0x44], eax
add eax, 4
mov byte [ebp - 0x3e], cl
cdq
mov ecx, 5
idiv ecx
imul esi, esi, 0x30
add esi, ebx
mov dword [ebp - 0x48], esi
dec eax
movzx edx, al
mov byte [ebp - 0x3f], al
mov dword [ebp - 0x54], edx
jmp near loc_fffc9bbf  ; jmp 0xfffc9bbf

loc_fffc9b1b:  ; not directly referenced
movzx eax, al
mov bl, 5
mov word [ebp + edi*2 - 0x3c], 0
div bl
xor ecx, ecx
xor esi, esi
mov byte [ebp - 0x3d], ah
mov byte [ebp - 0x40], al
mov al, byte [ebp - 0x3d]
dec eax
mov byte [ebp - 0x4e], al

loc_fffc9b3a:  ; not directly referenced
mov edx, esi
mov bl, byte [ebp - 0x3d]
xor eax, eax
or bl, dl
je short loc_fffc9b4a  ; je 0xfffc9b4a
mov al, byte [ebp - 0x4e]
add eax, edx

loc_fffc9b4a:  ; not directly referenced
cmp al, 1
setbe bl
cmp byte [ebp - 0x3d], 1
setbe dl
test bl, dl
jne short loc_fffc9b63  ; jne 0xfffc9b63
cmp al, 5
mov dl, 4
cmovae eax, edx
jmp short loc_fffc9b66  ; jmp 0xfffc9b66

loc_fffc9b63:  ; not directly referenced
mov al, byte [ebp - 0x3d]

loc_fffc9b66:  ; not directly referenced
mov bl, byte [ebp - 0x40]
mov dl, byte [ebp - 0x40]
add ebx, 2
dec edx
movzx eax, al
mov byte [ebp - 0x4d], bl
mov dword [ebp - 0x4c], eax

loc_fffc9b79:  ; not directly referenced
xor eax, eax
test dl, dl
cmovns eax, edx
movsx ebx, al
cmp ebx, dword [ebp - 0x54]
mov bl, byte [ebp - 0x3f]
cmovg eax, ebx
movsx ebx, al
lea ebx, [ebx + ebx*4]
add ebx, dword [ebp - 0x4c]
cmp dword [ebp - 0x44], ebx
setle bl
inc edx
sub eax, ebx
mov ebx, dword [ebp - 0x48]
movsx eax, al
lea eax, [eax + eax*4]
add eax, dword [ebp - 0x4c]
add cx, word [ebx + eax*2]
cmp dl, byte [ebp - 0x4d]
jne short loc_fffc9b79  ; jne 0xfffc9b79
inc esi
cmp esi, 3
jne short loc_fffc9b3a  ; jne 0xfffc9b3a
mov word [ebp + edi*2 - 0x3c], cx
inc edi

loc_fffc9bbf:  ; not directly referenced
mov eax, edi
cmp al, byte [ebp - 0x3e]
jb loc_fffc9b1b  ; jb 0xfffc9b1b
xor ecx, ecx
mov ebx, 9
jmp short loc_fffc9be3  ; jmp 0xfffc9be3

loc_fffc9bd3:  ; not directly referenced
movzx eax, word [ebp + ecx*2 - 0x3c]
cdq
idiv ebx
mov edx, dword [ebp - 0x48]
mov word [edx + ecx*2], ax
inc ecx

loc_fffc9be3:  ; not directly referenced
cmp byte [ebp - 0x3e], cl
ja short loc_fffc9bd3  ; ja 0xfffc9bd3
lea esp, [esp + 0x48]
pop ebx
pop esi
pop edi
pop ebp
ret

fcn_fffc9bf1:  ; not directly referenced
push ebp
mov ebp, esp
push edi
push esi
mov esi, eax
push ebx
mov bl, dl
mov edx, 2
lea esp, [esp - 0x5c]
mov al, byte [ebp + 8]
mov byte [ebp - 0x43], cl
mov byte [ebp - 0x3b], al
xor ecx, ecx
lea eax, [ebp - 0x1a]
call mrc_setmem
mov cl, bl
mov dword [ebp - 0x40], 1
movzx edx, bl
shl dword [ebp - 0x40], cl
mov bl, byte [ebp - 0x40]
test byte [esi + 0x3acb], bl
mov byte [ebp - 0x3a], bl
setne al
lea edx, [edx + edx*8]
mov cl, al
mov dword [ebp - 0x60], edx
or ecx, 2
test byte [esi + 0x4e12], bl
mov bl, byte [ebp - 0x3b]
cmovne eax, ecx
add ebx, 0x60
movzx eax, al
mov byte [ebp - 0x39], bl
mov dword [ebp - 0x5c], eax
jmp near loc_fffc9e04  ; jmp 0xfffc9e04

loc_fffc9c5d:  ; not directly referenced
imul eax, ebx, 0x1347
mov dl, byte [ebp - 0x3a]
test byte [esi + eax + 0x3acb], dl
je short loc_fffc9cb7  ; je 0xfffc9cb7
push 0
mov ecx, 1
mov edx, ebx
push edi
mov eax, esi
push 3
push dword [ebp - 0x38]
call fcn_fffafa3c  ; call 0xfffafa3c
push 0
mov ecx, 2
mov edx, ebx
push edi
mov eax, esi
push 3
push dword [ebp - 0x38]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x20
mov ecx, 3
push 0
mov edx, ebx
mov eax, esi
push edi
push 3
push dword [ebp - 0x38]
call fcn_fffafa3c  ; call 0xfffafa3c
add esp, 0x10

loc_fffc9cb7:  ; not directly referenced
inc ebx
cmp ebx, 2
jne short loc_fffc9c5d  ; jne 0xfffc9c5d
mov edx, dword [ebp - 0x5c]
mov eax, esi
call fcn_fffc96b2  ; call 0xfffc96b2
mov eax, esi
mov edx, 0xf
call fcn_fffb2d76  ; call 0xfffb2d76
mov ecx, dword [ebp + 0xc]
lea ebx, [esi + 0x10b7]
mov dword [ebp - 0x64], ecx
xor eax, eax
mov dword [ebp - 0x58], ebx

loc_fffc9ce4:  ; not directly referenced
imul edx, eax, 0x1347
mov bl, byte [ebp - 0x3a]
test byte [esi + edx + 0x3acb], bl
jne short loc_fffc9d00  ; jne 0xfffc9d00
mov byte [ebp + eax - 0x1a], 0xff
jmp near loc_fffc9dbf  ; jmp 0xfffc9dbf

loc_fffc9d00:  ; not directly referenced
cmp byte [ebp + eax - 0x1a], 0xff
je loc_fffc9dbf  ; je 0xfffc9dbf
imul ecx, eax, 0x2fa
mov edi, dword [ebp - 0x58]
lea edx, [esi + edx + 0x297c]
mov dword [ebp - 0x4c], edx
mov edx, eax
shl edx, 8
add edx, 0x54
lea ecx, [edi + ecx + 5]
mov dword [ebp - 0x54], edx
mov dword [ebp - 0x48], ecx
xor ecx, ecx
jmp short loc_fffc9db3  ; jmp 0xfffc9db3

loc_fffc9d34:  ; not directly referenced
movzx edi, cl
mov edx, 1
shl edx, cl
mov byte [ebp - 0x38], dl
mov edx, dword [ebp - 0x48]
mov bl, byte [edx + edi + 0x2a6]
mov edx, dword [ebp - 0x4c]
cmp byte [edx + 0x1232], 0x20
jne short loc_fffc9d65  ; jne 0xfffc9d65
and bl, 2
je short loc_fffc9d65  ; je 0xfffc9d65
mov bl, byte [ebp - 0x38]
or byte [ebp + eax - 0x1a], bl
jmp short loc_fffc9db2  ; jmp 0xfffc9db2

loc_fffc9d65:  ; not directly referenced
mov edx, edi
shl edx, 9
add edx, dword [ebp - 0x54]
add edx, dword [esi + 0x103f]
mov ebx, dword [edx]
mov dl, byte [ebp + eax - 0x1a]
test byte [ebp - 0x38], dl
mov byte [ebp - 0x41], dl
jne short loc_fffc9db2  ; jne 0xfffc9db2
movzx edx, bl
mov byte [ebp - 0x3c], 0
jmp short loc_fffc9d92  ; jmp 0xfffc9d92

loc_fffc9d8a:  ; not directly referenced
lea ebx, [edx - 1]
inc byte [ebp - 0x3c]
and edx, ebx

loc_fffc9d92:  ; not directly referenced
test edx, edx
jne short loc_fffc9d8a  ; jne 0xfffc9d8a
cmp byte [ebp - 0x3c], 4
je short loc_fffc9db2  ; je 0xfffc9db2
mov edx, dword [ebp - 0x64]
add edi, dword [ebp - 0x60]
mov bl, byte [ebp - 0x42]
mov byte [edx + edi], bl
mov dl, byte [ebp - 0x38]
or dl, byte [ebp - 0x41]
mov byte [ebp + eax - 0x1a], dl

loc_fffc9db2:  ; not directly referenced
inc ecx

loc_fffc9db3:  ; not directly referenced
cmp cl, byte [esi + 0x1755]
jb loc_fffc9d34  ; jb 0xfffc9d34

loc_fffc9dbf:  ; not directly referenced
inc eax
add dword [ebp - 0x64], 0x24
cmp eax, 2
jne loc_fffc9ce4  ; jne 0xfffc9ce4
cmp byte [ebp - 0x1a], 0xff
jne short loc_fffc9dd9  ; jne 0xfffc9dd9
cmp byte [ebp - 0x19], 0xff
je short loc_fffc9e1f  ; je 0xfffc9e1f

loc_fffc9dd9:  ; not directly referenced
cmp byte [ebp - 0x3b], 0
jle short loc_fffc9dea  ; jle 0xfffc9dea
mov bl, byte [ebp - 0x43]
cmp byte [ebp - 0x39], bl
seta al
jmp short loc_fffc9df7  ; jmp 0xfffc9df7

loc_fffc9dea:  ; not directly referenced
movzx eax, byte [ebp - 0x43]
movsx edx, byte [ebp - 0x39]
cmp edx, eax
setl al

loc_fffc9df7:  ; not directly referenced
movzx eax, al
mov bl, byte [ebp - 0x3b]
add byte [ebp - 0x39], bl
test eax, eax
jne short loc_fffc9e1f  ; jne 0xfffc9e1f

loc_fffc9e04:  ; not directly referenced
mov bl, byte [ebp - 0x39]
movzx eax, byte [ebp - 0x40]
sub bl, byte [ebp - 0x3b]
mov dword [ebp - 0x38], eax
mov byte [ebp - 0x42], bl
xor ebx, ebx
movzx edi, byte [ebp - 0x42]
jmp near loc_fffc9c5d  ; jmp 0xfffc9c5d

loc_fffc9e1f:  ; not directly referenced
lea esp, [ebp - 0xc]
pop ebx
pop esi
pop edi
pop ebp
ret

loc_fffc9e27:
db 0x00

ref_fffc9e28:
dd 0x08000100
dd 0x01010000
dd 0x01000004
dd 0x00000202

ref_fffc9e38:
dd mrc_init_usb
dd fcn_fffc5978
dd dmi_check_link
dd fcn_fffc7bc0

ref_fffc9e48:
dd 0x00000000
dd 0x00000001
dd 0x00000002
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000003
dd 0x01010001
dd 0x07010201

ref_fffc9ef8:
dd 0x05010400
dd 0x07030602
dd 0x00000008

ref_fffc9f04:
dd 0xff830000
dd 0xffe1ffc2
dd 0x007d00fa
dd 0x001f003e

ref_fffc9f14:
dd 0x02030304
dd 0x02030404
dd 0x03030405
dd 0x03040405
dd 0x03040405
dd 0x02030304
dd 0x02030404
dd 0x03030405
dd 0x03040405
dd 0x03030404

ref_fffc9f3c:
dd 0x05060605
dd 0x05060605
dd 0x06060604
dd 0x05060607
dd 0x05060607
dd 0x06060607

ref_fffc9f54:
dd 0x00280000
dd 0x003c0f01
dd 0x0f01003f
dd 0x007f0075
dd 0x00800f0b
dd 0x0f010091
dd 0x00b300b0
dd 0x00b40f01
dd 0x0f0100b8
dd 0x00d700b9
dd 0x00dc0f01
dd 0x0f0100fa

ref_fffc9f84:
dd 0x00669263
dd 0x82ca6a04
dd 0x63081009
dd 0x030066a2
dd 0x05408934
dd 0x92630b07
dd 0x78040086
dd 0x130b86d6
dd 0x86a26309
dd 0x8f3b0300
dd 0x0e090642
dd 0x00669463
dd 0x7cb05b04
dd 0x63070b05
dd 0x040066a4
dd 0x057af758
dd 0x94630909
dd 0x66040086
dd 0x0d0681b9
dd 0x86a46308
dd 0x80320300
dd 0x09050340
dd 0x00671263
dd 0x40ca9f03
dd 0x63110705
dd 0x03006722
dd 0x053fca9e
dd 0x12631807
dd 0xa6030087
dd 0x090642d0
dd 0x87226313
dd 0xd0a50300
dd 0x1a080641
dd 0x00671463
dd 0x3dbd9803
dd 0x630f0503
dd 0x03006724
dd 0x033dbd97
dd 0x14631204
dd 0x9d030087
dd 0x060340c2
dd 0x87246310
dd 0xc19c0300
dd 0x1405033f
dd 0x006a9263
dd 0x88b36604
dd 0x630a0e08
dd 0x04006aa2
dd 0x0886b164
dd 0x92630d0c
dd 0x7404008a
dd 0x110a8bbf
dd 0x8aa2630b
dd 0xbd720400
dd 0x0f0f0a89
dd 0x006a9463
dd 0x7c9a5704
dd 0x63080a04
dd 0x04006aa4
dd 0x047a9855
dd 0x94630a08
dd 0x6204008a
dd 0x0b0580a3
dd 0x8aa46309
dd 0xa1600400
dd 0x0b09057e
dd 0x006b1263
dd 0x43ab8803
dd 0x63140704
dd 0x03006b22
dd 0x0443aa87
dd 0x12631a06
dd 0x8f03008b
dd 0x080545b1
dd 0x8b226315
dd 0xb08f0300
dd 0x1d070544
dd 0x006b1463
dd 0x3d9e8103
dd 0x63100402
dd 0x03006b24
dd 0x023d9e80
dd 0x14631504
dd 0x8603008b
dd 0x05033fa3
dd 0x8b246311
dd 0xa2850300
dd 0x1504033f
dd 0x006e9263
dd 0x90fd7204
dd 0x630c0d07
dd 0x04006ea2
dd 0x078efb71
dd 0x92630f0b
dd 0x4003008e
dd 0x08054a85
dd 0x8ea2630e
dd 0x843f0300
dd 0x12070549
dd 0x006e9463
dd 0x7ee46204
dd 0x630a0904
dd 0x04006ea4
dd 0x047ce361
dd 0x94630c07
dd 0x6c04008e
dd 0x0a0582ed
dd 0x8ea4630b
dd 0xeb6b0400
dd 0x0d080580
dd 0x006f1263
dd 0x47ce8e03
dd 0x63170604
dd 0x03006f22
dd 0x0447cd8e
dd 0x12632006
dd 0x9503008f
dd 0x070549d4
dd 0x8f226319
dd 0xd3950300
dd 0x23070548
dd 0x006f1463
dd 0x3ec18603
dd 0x63130402
dd 0x03006f24
dd 0x023ec186
dd 0x14631603
dd 0x8c03008f
dd 0x040340c6
dd 0x8f246314
dd 0xc58b0300
dd 0x1a040340
dd 0x00729263
dd 0x9ce66f04
dd 0x630e0c07
dd 0x040072a2
dd 0x079be46d
dd 0x9263120b
dd 0x7c040092
dd 0x0e089ff1
dd 0x92a2630f
dd 0xf07b0400
dd 0x140d089d
dd 0x00729463
dd 0x83ce5f04
dd 0x630b0804
dd 0x040072a4
dd 0x0482cc5e
dd 0x94630d06
dd 0x69040092
dd 0x090587d6
dd 0x92a4630c
dd 0xd5680400
dd 0x0e070586
dd 0x00731263
dd 0x4eb78103
dd 0x631a0604
dd 0x03007322
dd 0x044db680
dd 0x12632105
dd 0x87030093
dd 0x07044fbd
dd 0x9322631c
dd 0xbc870300
dd 0x2506044f
dd 0x00731463
dd 0x41ab7903
dd 0x63150402
dd 0x03007324
dd 0x0241aa78
dd 0x14631903
dd 0x7e030093
dd 0x040343af
dd 0x93246316
dd 0xaf7d0300
dd 0x1d040343
dd 0x00769263
dd 0xa6d46c04
dd 0x630f0b06
dd 0x040076a2
dd 0x06a4d36b
dd 0x9263130a
dd 0x7a040096
dd 0x0d08a8e0
dd 0x96a26311
dd 0xde790400
dd 0x160c08a7
dd 0x00769463
dd 0x87bd5c04
dd 0x630c0703
dd 0x040076a4
dd 0x0385bb5b
dd 0x94630e06
dd 0x66040096
dd 0x08048ac5
dd 0x96a4630d
dd 0xc3650400
dd 0x10070489
dd 0x00771263
dd 0x52a67603
dd 0x631a0503
dd 0x03007722
dd 0x0352a576
dd 0x12632405
dd 0x7d030097
dd 0x060454ab
dd 0x9722631d
dd 0xab7d0300
dd 0x29060453
dd 0x00771463
dd 0x439a6e03
dd 0x63150302
dd 0x03007724
dd 0x02439a6e
dd 0x14631b03
dd 0x73030097
dd 0x0402459e
dd 0x97246318
dd 0x9d730300
dd 0x1c030244
dd 0x00669243
dd 0x82c97704
dd 0x43091009
dd 0x040066a2
dd 0x097fc775
dd 0x92430c0e
dd 0x85040086
dd 0x130b86d6
dd 0x86a2430a
dd 0xd3830400
dd 0x0d110b83
dd 0x00669443
dd 0x7cb06804
dd 0x43070b05
dd 0x040066a4
dd 0x057aae66
dd 0x94430909
dd 0x73040086
dd 0x0d0681b9
dd 0x86a44308
dd 0xb7710400
dd 0x0a0a067e
dd 0x00671243
dd 0x40e8bd03
dd 0x43130705
dd 0x03006722
dd 0x053fe8bd
dd 0x12431a07
dd 0xc4030087
dd 0x090642ef
dd 0x87224315
dd 0xeec30300
dd 0x1c080641
dd 0x00671443
dd 0x3ddcb603
dd 0x43110503
dd 0x03006724
dd 0x033ddbb5
dd 0x14431404
dd 0xbb030087
dd 0x060340e0
dd 0x87244312
dd 0xdfbb0300
dd 0x1605033f
dd 0x006a9243
dd 0x88b27104
dd 0x430a0e08
dd 0x04006aa2
dd 0x0886b16f
dd 0x92430d0c
dd 0x7f04008a
dd 0x110a8bbf
dd 0x8aa2430b
dd 0xbd7d0400
dd 0x0f0f0a89
dd 0x006a9443
dd 0x7c9a6204
dd 0x43080a04
dd 0x04006aa4
dd 0x047a9860
dd 0x94430a08
dd 0x6d04008a
dd 0x0b0580a3
dd 0x8aa44309
dd 0xa16b0400
dd 0x0b09057e
dd 0x006b1243
dd 0x43c3a003
dd 0x43150704
dd 0x03006b22
dd 0x0443c2a0
dd 0x12431c06
dd 0xa703008b
dd 0x080545c9
dd 0x8b224317
dd 0xc8a70300
dd 0x1f070544
dd 0x006b1443
dd 0x3db69903
dd 0x43110402
dd 0x03006b24
dd 0x023db698
dd 0x14431604
dd 0x9e03008b
dd 0x05033fbb
dd 0x8b244313
dd 0xba9e0300
dd 0x1704033f
dd 0x006e9243
dd 0x90d27904
dd 0x430c0d07
dd 0x04006ea2
dd 0x078ed077
dd 0x92430f0b
dd 0x8704008e
dd 0x0f0993de
dd 0x8ea2430d
dd 0xdc850400
dd 0x110d0991
dd 0x006e9443
dd 0x7eba6904
dd 0x430a0804
dd 0x04006ea4
dd 0x047cb867
dd 0x94430c07
dd 0x7304008e
dd 0x0a0581c2
dd 0x8ea4430b
dd 0xc0720400
dd 0x0d080580
dd 0x006f1243
dd 0x47ba8e03
dd 0x43170604
dd 0x03006f22
dd 0x0447ba8e
dd 0x12432006
dd 0x9503008f
dd 0x070549c0
dd 0x8f224319
dd 0xc0940300
dd 0x23070548
dd 0x006f1443
dd 0x3eae8603
dd 0x43130402
dd 0x03006f24
dd 0x023eae86
dd 0x14431603
dd 0x8b03008f
dd 0x040340b2
dd 0x8f244314
dd 0xb28b0300
dd 0x1a040340
dd 0x00729243
dd 0x9cc17504
dd 0x430e0c07
dd 0x040072a2
dd 0x079bbf73
dd 0x9243120b
dd 0x82040092
dd 0x0e089fcc
dd 0x92a2430f
dd 0xcb810400
dd 0x140c089d
dd 0x00729443
dd 0x83a96504
dd 0x430b0804
dd 0x040072a4
dd 0x0482a864
dd 0x94430d06
dd 0x6f040092
dd 0x090587b1
dd 0x92a4430c
dd 0xb06e0400
dd 0x0e070586
dd 0x00731243
dd 0x4ea68003
dd 0x431a0604
dd 0x03007322
dd 0x044da680
dd 0x12432105
dd 0x87030093
dd 0x07044fac
dd 0x9322431c
dd 0xab870300
dd 0x2506044f
dd 0x00731443
dd 0x419a7803
dd 0x43150402
dd 0x03007324
dd 0x02419a78
dd 0x14431903
dd 0x7d030093
dd 0x0403439e
dd 0x93244316
dd 0x9e7d0300
dd 0x1d040343
dd 0x00769243
dd 0xa5b47204
dd 0x430f0b06
dd 0x040076a2
dd 0x06a4b370
dd 0x9243140a
dd 0x7f040096
dd 0x0d08a8c0
dd 0x96a24311
dd 0xbe7e0400
dd 0x160c08a7
dd 0x00769443
dd 0x879d6104
dd 0x430c0703
dd 0x040076a4
dd 0x03859b60
dd 0x94430e06
dd 0x6b040096
dd 0x08048aa4
dd 0x96a4430d
dd 0xa36a0400
dd 0x10070489
dd 0x00771243
dd 0x52977603
dd 0x431a0503
dd 0x03007722
dd 0x03529776
dd 0x12432405
dd 0x7d030097
dd 0x0604549d
dd 0x9722431d
dd 0x9c7c0300
dd 0x29060453
dd 0x00771443
dd 0x438b6e03
dd 0x43150302
dd 0x03007724
dd 0x02438b6d
dd 0x14431b03
dd 0x73030097
dd 0x0402458f
dd 0x97244318
dd 0x8f720300
dd 0x1c030244
dd 0x00669253
dd 0x91e28504
dd 0x5308120a
dd 0x040066a2
dd 0x0a8fdf83
dd 0x92530b0f
dd 0x95040086
dd 0x150d96f0
dd 0x86a25309
dd 0xed920400
dd 0x0d130d93
dd 0x00669453
dd 0x9acf7e04
dd 0x53060c06
dd 0x040066a4
dd 0x0698cc7b
dd 0x9453080a
dd 0x8b040086
dd 0x0e07a0da
dd 0x86a45307
dd 0xd7890400
dd 0x0a0c079d
dd 0x00671253
dd 0x248c7702
dd 0x530f0403
dd 0x02006722
dd 0x03248c76
dd 0x12531704
dd 0x7b020087
dd 0x05042590
dd 0x87225311
dd 0x8f7a0200
dd 0x1b050425
dd 0x00671453
dd 0x26877502
dd 0x530d0302
dd 0x02006724
dd 0x02268774
dd 0x14531303
dd 0x78020087
dd 0x0302288a
dd 0x8724530d
dd 0x8a780200
dd 0x13030227
dd 0x006a9253
dd 0x98c87e04
dd 0x53091009
dd 0x04006aa2
dd 0x0996c67c
dd 0x92530d0e
dd 0x8e04008a
dd 0x120b9cd6
dd 0x8aa2530a
dd 0xd48c0400
dd 0x0e100b9a
dd 0x006a9453
dd 0x9ab67704
dd 0x53070b05
dd 0x04006aa4
dd 0x0598b475
dd 0x94530a09
dd 0x8404008a
dd 0x0c079fc0
dd 0x8aa45308
dd 0xbe820400
dd 0x0a0a079d
dd 0x006b1253
dd 0x26928302
dd 0x53130403
dd 0x02006b22
dd 0x03269282
dd 0x12531d04
dd 0x8702008b
dd 0x05032796
dd 0x8b225316
dd 0x95860200
dd 0x1d040327
dd 0x006b1453
dd 0x268e8102
dd 0x53110302
dd 0x02006b24
dd 0x02268d80
dd 0x14531302
dd 0x8402008b
dd 0x03022890
dd 0x8b245311
dd 0x90840200
dd 0x18030227
dd 0x006e9253
dd 0xa1b87a04
dd 0x530a0e08
dd 0x04006ea2
dd 0x08a0b679
dd 0x92530e0c
dd 0x8a04008e
dd 0x100aa5c5
dd 0x8ea2530b
dd 0xc4880400
dd 0x100f0aa3
dd 0x006e9453
dd 0x9ca67104
dd 0x53080a05
dd 0x04006ea4
dd 0x059aa470
dd 0x94530b08
dd 0x7e04008e
dd 0x0b06a1b0
dd 0x8ea45309
dd 0xae7c0400
dd 0x0c09069f
dd 0x006f1253
dd 0x50fce203
dd 0x53140704
dd 0x03006f22
dd 0x0450fbe1
dd 0x12531c06
dd 0x7502008f
dd 0x04032982
dd 0x8f225316
dd 0x81750200
dd 0x22040329
dd 0x006f1453
dd 0x4ef3dd03
dd 0x53100403
dd 0x03006f24
dd 0x034df2dd
dd 0x14531604
dd 0xe403008f
dd 0x050350f8
dd 0x8f245312
dd 0xf7e30300
dd 0x19050350
dd 0x00729253
dd 0xafac7704
dd 0x530b0d07
dd 0x040072a2
dd 0x07aeab76
dd 0x9253100c
dd 0x86040092
dd 0x0f09b2b9
dd 0x92a2530d
dd 0xb8850400
dd 0x120e09b1
dd 0x00729453
dd 0xa39a6f04
dd 0x53090904
dd 0x040072a4
dd 0x04a2996d
dd 0x94530c07
dd 0x7b040092
dd 0x0a05a8a5
dd 0x92a4530a
dd 0xa37a0400
dd 0x0e0905a7
dd 0x00731253
dd 0x57dfc903
dd 0x53150604
dd 0x03007322
dd 0x0457dfc8
dd 0x12532006
dd 0xd0030093
dd 0x070559e6
dd 0x93225317
dd 0xe5d00300
dd 0x24070558
dd 0x00731453
dd 0x51d6c503
dd 0x53120402
dd 0x03007324
dd 0x0251d6c4
dd 0x14531904
dd 0xcb030093
dd 0x050354db
dd 0x93245314
dd 0xdbcb0300
dd 0x19040353
dd 0x00769253
dd 0xbaa47504
dd 0x530d0c07
dd 0x040076a2
dd 0x07b9a274
dd 0x9253120b
dd 0x84040096
dd 0x0e09bcb0
dd 0x96a2530e
dd 0xaf830400
dd 0x140d09bb
dd 0x00769453
dd 0xa7926c04
dd 0x530a0804
dd 0x040076a4
dd 0x04a6916a
dd 0x94530d07
dd 0x78040096
dd 0x0905ac9c
dd 0x96a4530b
dd 0x9b770400
dd 0x0e0805ab
dd 0x00771253
dd 0x5dcab603
dd 0x53180604
dd 0x03007722
dd 0x045cc9b6
dd 0x12532406
dd 0xbe030097
dd 0x07055ed0
dd 0x9722531a
dd 0xd0bd0300
dd 0x2406055e
dd 0x00771453
dd 0x53c1b103
dd 0x53130402
dd 0x03007724
dd 0x0253c1b1
dd 0x14531703
dd 0xb8030097
dd 0x040356c6
dd 0x97245314
dd 0xc6b70300
dd 0x1c040355
dd 0x00669262
dd 0x69a35604
dd 0x62070d07
dd 0x040066a2
dd 0x0767dd54
dd 0x9262090b
dd 0x61040086
dd 0x10096cad
dd 0x86a26208
dd 0xe75f0400
dd 0x0b0e096a
dd 0x00669462
dd 0x658f4a04
dd 0x62060904
dd 0x040066a4
dd 0x0463c948
dd 0x94620707
dd 0x53040086
dd 0x0a056996
dd 0x86a46206
dd 0xd0510400
dd 0x08080567
dd 0x00671262
dd 0x34a48103
dd 0x620e0604
dd 0x03006722
dd 0x0433a380
dd 0x12621406
dd 0x87030087
dd 0x070536a9
dd 0x87226210
dd 0xa8860300
dd 0x16070535
dd 0x00671462
dd 0x329a7b03
dd 0x620c0402
dd 0x03006724
dd 0x0231997a
dd 0x14620e03
dd 0x7f030087
dd 0x0503349d
dd 0x8724620d
dd 0x9d7f0300
dd 0x10040333
dd 0x006a9262
dd 0x6e915304
dd 0x62080c06
dd 0x04006aa2
dd 0x066d8f51
dd 0x92620b0a
dd 0x5e04008a
dd 0x0e08719b
dd 0x8aa26209
dd 0x995c0400
dd 0x0c0c086f
dd 0x006a9462
dd 0xc9f98d05
dd 0x62060f07
dd 0x05006aa4
dd 0x07c5f68a
dd 0x9462080c
dd 0x4f04008a
dd 0x09046884
dd 0x8aa46207
dd 0x824e0400
dd 0x09070466
dd 0x006b1262
dd 0x378a6e03
dd 0x620f0503
dd 0x03006b22
dd 0x03368a6e
dd 0x12621605
dd 0x7403008b
dd 0x0604388f
dd 0x8b226211
dd 0x8f740300
dd 0x18060438
dd 0x006b1462
dd 0x32806803
dd 0x620e0402
dd 0x04006b24
dd 0x0462ffcf
dd 0x14621006
dd 0x6d03008b
dd 0x04023484
dd 0x8b24620e
dd 0x836c0300
dd 0x13040233
dd 0x006e9262
dd 0x75cd5d04
dd 0x620a0b06
dd 0x04006ea2
dd 0x0673cb5b
dd 0x92620d09
dd 0x6804008e
dd 0x0c0777d6
dd 0x8ea2620b
dd 0xd5660400
dd 0x0e0b0776
dd 0x006e9462
dd 0x66b95004
dd 0x62080703
dd 0x04006ea4
dd 0x0365b84e
dd 0x94620a06
dd 0x5804008e
dd 0x080469c0
dd 0x8ea46209
dd 0xbe570400
dd 0x0b070468
dd 0x006f1262
dd 0x3aa77303
dd 0x62130503
dd 0x03006f22
dd 0x033aa673
dd 0x12621a05
dd 0x7903008f
dd 0x06043bab
dd 0x8f226215
dd 0xab790300
dd 0x1b05043b
dd 0x006f1462
dd 0x339d6d03
dd 0x620f0302
dd 0x03006f24
dd 0x02329c6d
dd 0x14621403
dd 0x7103008f
dd 0x040234a0
dd 0x8f246211
dd 0xa0710300
dd 0x14030234
dd 0x00729262
dd 0x7fba5a04
dd 0x620b0a05
dd 0x040072a2
dd 0x057eb959
dd 0x92620f09
dd 0x65040092
dd 0x0b0781c3
dd 0x92a2620c
dd 0xc2640400
dd 0x100a0780
dd 0x00729462
dd 0x6ba74d04
dd 0x62090603
dd 0x040072a4
dd 0x0369a64c
dd 0x94620a05
dd 0x55040092
dd 0x07046ead
dd 0x92a46209
dd 0xac540400
dd 0x0c06046c
dd 0x00731262
dd 0x3f946803
dd 0x62150503
dd 0x03007322
dd 0x033f9468
dd 0x12621b04
dd 0x6e030093
dd 0x05044099
dd 0x93226216
dd 0x986d0300
dd 0x1e050440
dd 0x00731462
dd 0x358a6203
dd 0x62110302
dd 0x03007324
dd 0x02358a62
dd 0x14621603
dd 0x66030093
dd 0x0302378e
dd 0x93246211
dd 0x8d660300
dd 0x17030236
dd 0x00769262
dd 0x86ac5804
dd 0x620c0905
dd 0x040076a2
dd 0x0585ab57
dd 0x92621008
dd 0x63040096
dd 0x0b0688b5
dd 0x96a2620e
dd 0xb4620400
dd 0x120a0687
dd 0x00769462
dd 0x6d994a04
dd 0x620a0603
dd 0x040076a4
dd 0x036c9849
dd 0x94620c05
dd 0x53040096
dd 0x0704709f
dd 0x96a4620b
dd 0x9e520400
dd 0x0d06046f
dd 0x00771262
dd 0x43866003
dd 0x62160403
dd 0x03007722
dd 0x03438660
dd 0x12621d04
dd 0x65030097
dd 0x0503448b
dd 0x97226218
dd 0x8b650300
dd 0x22050344
dd 0x00771462
dd 0x6cf9b204
dd 0x62110503
dd 0x04007724
dd 0x036cf8b1
dd 0x14621605
dd 0xba040097
dd 0x06046fff
dd 0x97246213
dd 0xffb90400
dd 0x1705046f
dd 0x00669242
dd 0x69a36304
dd 0x42070d07
dd 0x040066a2
dd 0x0767a161
dd 0x9242090b
dd 0x6e040086
dd 0x10096cad
dd 0x86a24208
dd 0xab6c0400
dd 0x0b0e096a
dd 0x00669442
dd 0x658f5704
dd 0x42060904
dd 0x040066a4
dd 0x04638d55
dd 0x94420707
dd 0x5f040086
dd 0x0a056896
dd 0x86a44206
dd 0x945d0400
dd 0x08080567
dd 0x00671242
dd 0x34bc9903
dd 0x42100604
dd 0x03006722
dd 0x0433bc99
dd 0x12421606
dd 0x9f030087
dd 0x070536c1
dd 0x87224211
dd 0xc19e0300
dd 0x18070535
dd 0x00671442
dd 0x32b29303
dd 0x420d0402
dd 0x03006724
dd 0x0231b193
dd 0x14420f03
dd 0x98030087
dd 0x050334b6
dd 0x8724420f
dd 0xb5970300
dd 0x12040333
dd 0x006a9242
dd 0x6e915d04
dd 0x42080c06
dd 0x04006aa2
dd 0x066d8f5b
dd 0x92420b0a
dd 0x6804008a
dd 0x0e08719b
dd 0x8aa24209
dd 0x99670400
dd 0x0d0c086f
dd 0x006a9442
dd 0xc8f9a205
dd 0x42070f07
dd 0x05006aa4
dd 0x07c5f69e
dd 0x9442080c
dd 0x5a04008a
dd 0x09046884
dd 0x8aa44207
dd 0x82580400
dd 0x09070466
dd 0x006b1242
dd 0x379e8203
dd 0x42110503
dd 0x03006b22
dd 0x03369d81
dd 0x12421705
dd 0x8803008b
dd 0x060438a3
dd 0x8b224212
dd 0xa2870300
dd 0x1a060438
dd 0x006b1442
dd 0x32947c03
dd 0x420e0302
dd 0x03006b24
dd 0x0231937b
dd 0x14421203
dd 0x8003008b
dd 0x04023497
dd 0x8b24420f
dd 0x97800300
dd 0x14040233
dd 0x006e9242
dd 0x74aa6304
dd 0x420a0b06
dd 0x04006ea2
dd 0x0673a962
dd 0x92420d09
dd 0x6f04008e
dd 0x0c0777b4
dd 0x8ea2420b
dd 0xb26d0400
dd 0x0f0b0776
dd 0x006e9442
dd 0x66965604
dd 0x42080703
dd 0x04006ea4
dd 0x03649555
dd 0x94420a06
dd 0x5f04008e
dd 0x0804699d
dd 0x8ea44209
dd 0x9c5d0400
dd 0x0b070468
dd 0x006f1242
dd 0x3a977303
dd 0x42130503
dd 0x03006f22
dd 0x033a9673
dd 0x12421a05
dd 0x7903008f
dd 0x06043b9c
dd 0x8f224215
dd 0x9b780300
dd 0x1b05043b
dd 0x006f1442
dd 0x338d6d03
dd 0x420f0302
dd 0x03006f24
dd 0x02328d6c
dd 0x14421403
dd 0x7103008f
dd 0x04023490
dd 0x8f244211
dd 0x90700300
dd 0x14030234
dd 0x00729242
dd 0x7f9c6004
dd 0x420b0a05
dd 0x040072a2
dd 0x057e9b5f
dd 0x92420f09
dd 0x6b040092
dd 0x0b0781a6
dd 0x92a2420c
dd 0xa56a0400
dd 0x100a0780
dd 0x00729442
dd 0x6a895304
dd 0x42090603
dd 0x040072a4
dd 0x03698852
dd 0x94420b05
dd 0x5b040092
dd 0x07046d90
dd 0x92a4420a
dd 0x8f5a0400
dd 0x0c06046c
dd 0x00731242
dd 0x3f876803
dd 0x42150503
dd 0x03007322
dd 0x033f8668
dd 0x12421a04
dd 0x6d030093
dd 0x0504408b
dd 0x93224216
dd 0x8b6d0300
dd 0x1e050440
dd 0x00731442
dd 0x6af9c304
dd 0x42100503
dd 0x04007324
dd 0x0369f9c2
dd 0x14421405
dd 0x66030093
dd 0x03023780
dd 0x93244211
dd 0xffca0400
dd 0x1606046c
dd 0x00769242
dd 0x86925d04
dd 0x420c0905
dd 0x040076a2
dd 0x0585915c
dd 0x92421008
dd 0x68040096
dd 0x0b06889b
dd 0x96a2420e
dd 0x9a670400
dd 0x120a0687
dd 0x00769442
dd 0xdafd9f05
dd 0x420a0b05
dd 0x050076a4
dd 0x05d8fb9d
dd 0x94420b09
dd 0x58040096
dd 0x07047085
dd 0x96a4420b
dd 0x84570400
dd 0x0d06046f
dd 0x00771242
dd 0x85f4bf04
dd 0x42150805
dd 0x04007722
dd 0x0585f4be
dd 0x12421d08
dd 0xca040097
dd 0x0a0687fe
dd 0x97224218
dd 0xfdc90400
dd 0x20090687
dd 0x00771442
dd 0x6ce1b104
dd 0x42110503
dd 0x04007724
dd 0x036ce1b1
dd 0x14421605
dd 0xb9040097
dd 0x06046fe8
dd 0x97244213
dd 0xe7b90400
dd 0x1705046f
dd 0x00669252
dd 0x76b76e04
dd 0x52060e08
dd 0x040066a2
dd 0x0874b56c
dd 0x9252090c
dd 0x7b040086
dd 0x110a79c2
dd 0x86a25207
dd 0xc0790400
dd 0x0a0f0a77
dd 0x00669452
dd 0x7da76804
dd 0x52050a05
dd 0x040066a4
dd 0x057ba566
dd 0x94520708
dd 0x73040086
dd 0x0c0681b0
dd 0x86a45206
dd 0xaf710400
dd 0x080a067f
dd 0x00671252
dd 0x3ae3c003
dd 0x520d0704
dd 0x03006722
dd 0x043ae2bf
dd 0x12521206
dd 0xc6030087
dd 0x08053ce8
dd 0x8722520e
dd 0xe8c60300
dd 0x1407053b
dd 0x00671452
dd 0x3edbbd03
dd 0x520a0403
dd 0x03006724
dd 0x033ddabc
dd 0x14520e04
dd 0xc2030087
dd 0x050340df
dd 0x8724520b
dd 0xdfc20300
dd 0x10050340
dd 0x006a9252
dd 0x7ba26804
dd 0x52070d07
dd 0x04006aa2
dd 0x077aa166
dd 0x92520a0b
dd 0x7504008a
dd 0x0f097eae
dd 0x8aa25208
dd 0xac730400
dd 0x0c0d097d
dd 0x006a9452
dd 0x7d936204
dd 0x52060904
dd 0x04006aa4
dd 0x047b9261
dd 0x94520807
dd 0x6d04008a
dd 0x0a05819c
dd 0x8aa45207
dd 0x9a6b0400
dd 0x0908057f
dd 0x006b1252
dd 0x3dedd303
dd 0x520f0604
dd 0x03006b22
dd 0x043decd3
dd 0x12521405
dd 0xda03008b
dd 0x07053ff2
dd 0x8b225210
dd 0xf2d90300
dd 0x1907053e
dd 0x006b1452
dd 0x3ee5d003
dd 0x520d0402
dd 0x03006b24
dd 0x023de5d0
dd 0x14521104
dd 0xd603008b
dd 0x050340e9
dd 0x8b24520e
dd 0xe9d50300
dd 0x12040340
dd 0x006e9252
dd 0x83956404
dd 0x52080b06
dd 0x04006ea2
dd 0x06819463
dd 0x92520b0a
dd 0x7104008e
dd 0x0d0885a0
dd 0x8ea25209
dd 0x9f700400
dd 0x0d0c0884
dd 0x006e9452
dd 0x7e865d04
dd 0x52070804
dd 0x04006ea4
dd 0x047d855c
dd 0x94520907
dd 0x6804008e
dd 0x0905828f
dd 0x8ea45207
dd 0x8d660400
dd 0x0a080581
dd 0x006f1252
dd 0x41ccb703
dd 0x52100503
dd 0x03006f22
dd 0x0341ccb7
dd 0x12521705
dd 0xbd03008f
dd 0x060442d2
dd 0x8f225211
dd 0xd1bd0300
dd 0x1a060442
dd 0x006f1452
dd 0x3fc5b303
dd 0x520e0402
dd 0x03006f24
dd 0x023fc4b3
dd 0x14521103
dd 0xb903008f
dd 0x040341c9
dd 0x8f24520e
dd 0xc9b80300
dd 0x14040341
dd 0x00729252
dd 0x8e8c6204
dd 0x520a0b06
dd 0x040072a2
dd 0x068d8a61
dd 0x92520d0a
dd 0x6e040092
dd 0x0c089096
dd 0x92a2520a
dd 0x956d0400
dd 0x0f0b088f
dd 0x00729452
dd 0x847d5b04
dd 0x52080704
dd 0x040072a4
dd 0x04837c5a
dd 0x94520a06
dd 0x65040092
dd 0x08058885
dd 0x92a45208
dd 0x84640400
dd 0x0b070587
dd 0x00731252
dd 0x47b5a303
dd 0x52120503
dd 0x03007322
dd 0x0347b5a2
dd 0x12521a05
dd 0xa9030093
dd 0x060448ba
dd 0x93225214
dd 0xbaa90300
dd 0x1e060448
dd 0x00731452
dd 0x42ae9f03
dd 0x520e0302
dd 0x03007324
dd 0x0242ad9f
dd 0x14521303
dd 0xa4030093
dd 0x040344b2
dd 0x93245210
dd 0xb2a40300
dd 0x17040344
dd 0x00769252
dd 0x97856004
dd 0x520b0a06
dd 0x040076a2
dd 0x0696845f
dd 0x92520e09
dd 0x6c040096
dd 0x0c07998f
dd 0x96a2520c
dd 0x8e6b0400
dd 0x110b0798
dd 0x00769452
dd 0x88765804
dd 0x52090703
dd 0x040076a4
dd 0x03877557
dd 0x94520b06
dd 0x62040096
dd 0x08048b7e
dd 0x96a45209
dd 0x7d610400
dd 0x0c07048a
dd 0x00771252
dd 0x4ba49403
dd 0x52140503
dd 0x03007722
dd 0x034ba393
dd 0x12521e05
dd 0x9a030097
dd 0x06044ca9
dd 0x97225216
dd 0xa8990300
dd 0x1e05044c
dd 0x00771452
dd 0x449c9003
dd 0x520f0302
dd 0x03007724
dd 0x02439c8f
dd 0x14521503
dd 0x95030097
dd 0x040245a0
dd 0x97245211
dd 0xa0950300
dd 0x16030245
dd 0x0046a263
dd 0xccad5a03
dd 0x63170e08
dd 0x03004692
dd 0x08cd8a5b
dd 0x22631110
dd 0xc5030047
dd 0x0e08cbee
dd 0x4712632b
dd 0xefc50300
dd 0x1e0f08cc
dd 0x0046a243
dd 0xcc886103
dd 0x43170e08
dd 0x03004692
dd 0x08cd8a62
dd 0x22431110
dd 0x72020047
dd 0x07046686
dd 0x4712432c
dd 0x87720200
dd 0x20080466
dd 0x0046a253
dd 0xe5996d03
dd 0x53171009
dd 0x03004692
dd 0x09e69a6e
dd 0x22531011
dd 0x8c020047
dd 0x080573a0
dd 0x4712532b
dd 0xa18c0200
dd 0x1b080573
dd 0x0046a463
dd 0x62974003
dd 0x630e0805
dd 0x04004694
dd 0x09c5e783
dd 0x24630a12
dd 0xab030047
dd 0x080561d8
dd 0x4714631b
dd 0xd9ac0300
dd 0x14080562
dd 0x0046a443
dd 0xc3e48e04
dd 0x430e1009
dd 0x04004694
dd 0x09c5e690
dd 0x24430b12
dd 0xc9030047
dd 0x080561f6
dd 0x4714431d
dd 0xf7ca0300
dd 0x15080562
dd 0x0046a453
dd 0x7a885703
dd 0x530f0a06
dd 0x03004694
dd 0x067b8a58
dd 0x24530a0b
dd 0x81020047
dd 0x05033d98
dd 0x4714531c
dd 0x98810200
dd 0x1205033d
dd 0x004aa263
dd 0xa8765803
dd 0x631a0d08
dd 0x03004a92
dd 0x08a97759
dd 0x2263130e
dd 0xad03004b
dd 0x0c08a8c8
dd 0x4b12632e
dd 0xc8ad0300
dd 0x200d08a9
dd 0x004aa243
dd 0xa8765d03
dd 0x431a0d08
dd 0x03004a92
dd 0x08a9775e
dd 0x2243130e
dd 0xc503004b
dd 0x0c08a8e0
dd 0x4b12432f
dd 0xe0c50300
dd 0x220d08a9
dd 0x004aa253
dd 0xbd856803
dd 0x53190e08
dd 0x03004a92
dd 0x08be8669
dd 0x2253110f
dd 0x9702004b
dd 0x07045fa3
dd 0x4b125330
dd 0xa3980200
dd 0x1e07045f
dd 0x004aa463
dd 0xc7ca8304
dd 0x63100e08
dd 0x04004a94
dd 0x08c9cc85
dd 0x24630c10
dd 0x9703004b
dd 0x070463b6
dd 0x4b14631e
dd 0xb7970300
dd 0x16070464
dd 0x004aa443
dd 0xc7ca8e04
dd 0x43100e08
dd 0x04004a94
dd 0x08c9cb8f
dd 0x24430c10
dd 0xaf03004b
dd 0x070463cf
dd 0x4b144320
dd 0xcfb00300
dd 0x17070464
dd 0x004aa453
dd 0xf8f2ae04
dd 0x53101009
dd 0x04004a94
dd 0x09faf4b0
dd 0x24530c12
dd 0x8f02004b
dd 0x04033e9d
dd 0x4b14531f
dd 0x9d8f0200
dd 0x1705033f
dd 0x004ea263
dd 0x94975d03
dd 0x631c0b06
dd 0x03004e92
dd 0x0695985e
dd 0x2263150c
dd 0xb203004f
dd 0x0b0693e7
dd 0x4f126334
dd 0xe7b30300
dd 0x230b0694
dd 0x004ea243
dd 0x94826003
dd 0x431d0b06
dd 0x03004e92
dd 0x06958361
dd 0x2243150c
dd 0xb203004f
dd 0x0b0693d3
dd 0x4f124334
dd 0xd4b20300
dd 0x230b0694
dd 0x004ea253
dd 0xa6786503
dd 0x531a0c07
dd 0x03004e92
dd 0x07a77966
dd 0x2253120d
dd 0x8502004f
dd 0x0604538c
dd 0x4f125331
dd 0x8c860200
dd 0x1f060453
dd 0x004ea463
dd 0x60884703
dd 0x63120604
dd 0x03004e94
dd 0x04618948
dd 0x24630e07
dd 0x9c03004f
dd 0x060460d8
dd 0x4f146322
dd 0xd89d0300
dd 0x19060460
dd 0x004ea443
dd 0xc0e59404
dd 0x43120c07
dd 0x04004e94
dd 0x07c1e796
dd 0x24430e0e
dd 0x9c03004f
dd 0x060460c4
dd 0x4f144322
dd 0xc59c0300
dd 0x19060460
dd 0x004ea453
dd 0xefdda704
dd 0x53110e08
dd 0x04004e94
dd 0x08f0dea9
dd 0x24530d10
dd 0x7d02004f
dd 0x04023c88
dd 0x4f145324
dd 0x887d0200
dd 0x1804023c

ref_fffcb73c:
dd 0x00000062
dd 0x44ab8703
dd 0x42220805
dd 0x03000000
dd 0x0544c19f
dd 0x00522008
dd 0xda030000
dd 0x09054df2
dd 0x0000631e
dd 0xefc50300
dd 0x341008cd
dd 0x00000043
dd 0x67877202
dd 0x53340804
dd 0x02000000
dd 0x0573a398
dd 0x00003109
dd 0x98020000
dd 0x090573a3
dd 0x00000034

ref_fffcb78c:
dd 0x008a2601
dd 0xee84a905
dd 0x03060402
dd 0x008a1601
dd 0xee4c9105
dd 0x03050402
dd 0x008e2601
dd 0xe979a305
dd 0x04070302
dd 0x008e1601
dd 0xe94a8b05
dd 0x03060302
dd 0x008a2401
dd 0xe0566b04
dd 0x05090302
dd 0x008a1401
dd 0xe03d5f04
dd 0x04080302
dd 0x008e2401
dd 0xdb4f6704
dd 0x060a0302
dd 0x008e1401
dd 0xdb385b04
dd 0x05090302

ref_fffcb7ec:
dd 0x00000000
dd 0xe0566b04
dd 0x060a0302

ref_fffcb7f8:
dd 0x02010601

ref_fffcb7fc:
dd 0x02000100
dd 0x08000400
dd 0x20001000
dd 0x80004000

ref_fffcb80c:
dd 0x003c0000
dd 0x004c0048
dd 0x0078005c
dd 0x013c0100
dd 0x014c0148
dd 0x0178015c
dd 0x023c0200
dd 0x024c0248
dd 0x0278025c
dd 0x033c0300
dd 0x034c0348
dd 0x0378035c
dd 0x043c0400
dd 0x044c0448
dd 0x0478045c
dd 0x053c0500
dd 0x054c0548
dd 0x0578055c
dd 0x063c0600
dd 0x064c0648
dd 0x0678065c
dd 0x073c0700
dd 0x074c0748
dd 0x0778075c
dd 0x083c0800
dd 0x084c0848
dd 0x0878085c
dd 0x093c0900
dd 0x094c0948
dd 0x0978095c
dd 0x0a3c0a00
dd 0x0a4c0a48
dd 0x0a780a5c
dd 0x0b3c0b00
dd 0x0b4c0b48
dd 0x0b780b5c
dd 0x0c3c0c00
dd 0x0c4c0c48
dd 0x0c780c5c
dd 0x0d3c0d00
dd 0x0d4c0d48
dd 0x0d780d5c
dd 0x0e3c0e00
dd 0x0e4c0e48
dd 0x0e780e5c
dd 0x0f3c0f00
dd 0x0f4c0f48
dd 0x0f780f5c
dd 0x103c1000
dd 0x104c1048
dd 0x1078105c
dd 0x113c1100
dd 0x114c1148
dd 0x1178115c
dd 0x12081204
dd 0x121c1214
dd 0x13081304
dd 0x131c1314
dd 0x140c1404
dd 0x150c1504
dd 0x18101808
dd 0x19101908
dd 0x1a0c1a04
dd 0x1b0c1b04
dd 0x1c1c1c14
dd 0x1d1c1d14
dd 0x20082000
dd 0x3a1c3a14
dd 0x3a243a24
dd 0x40144000
dd 0x40284024
dd 0x40d040d0
dd 0x42244220
dd 0x42944294
dd 0x42a0429c
dd 0x42fc42ec
dd 0x4390438c
dd 0x43284328
dd 0x44144400
dd 0x44284424
dd 0x44d044d0
dd 0x46244620
dd 0x46944694
dd 0x46a0469c
dd 0x46fc46ec
dd 0x47284728
dd 0x4790478c
dd 0x58885884
dd 0x589c5890
dd 0x58a458a4
dd 0x58e458d0
dd 0x58805880
dd 0x50dc5000

ref_fffcb980:
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000001
dd 0x00000000
dd 0x00000001

ref_fffcb998:
dd 0x00000102

ref_fffcba38:
dd loc_fffafaad
dd loc_fffafc42
dd loc_fffafc8b
dd loc_fffafd50
dd loc_fffafd99

ref_fffcba4c:
dd 0x00000006
dd 0x00000002
dd 0x00000001
dd 0x00000000
dd 0x00000002
dd 0x00000001
dd 0x00000000

ref_fffcba68:
dd 0x00000000
dd 0x00000001
dd 0x00000002
dd 0x00000003
dd 0x00000001
dd 0x00000002
dd 0x00000003

ref_fffcba84:
dd 0x00000000
dd 0xfffffffa
dd 0xfffffff4
dd 0xffffffee
dd 0x00000006
dd 0x0000000c
dd 0x00000012

ref_fffcbaa0:
dd 0x02010000
dd 0x06050403
dd 0x08080707
dd 0x0a090909
dd 0x0000000a

ref_fffcbab4:
dd 0x00010000
dd 0x00000000

ref_fffcbabc:
dd 0x00010001
dd 0x00000307

ref_fffcbac4:
dd loc_fffb38be
dd loc_fffb38cc
dd loc_fffb38dc
dd loc_fffb38ea
dd loc_fffb38f8
dd loc_fffb3903
dd loc_fffb3910
dd loc_fffb3928
dd loc_fffb393e
dd loc_fffb395a

ref_fffcbaec:
dd loc_fffb3b02
dd loc_fffb3b40
dd loc_fffb3b54
dd loc_fffb3b64
dd loc_fffb3b7b
dd loc_fffb3b40
dd loc_fffb3b54
dd loc_fffb3b64
dd loc_fffb3b7b
dd loc_fffb3b02

ref_fffcbb14:
dd loc_fffb3be0
dd loc_fffb3bf7
dd loc_fffb3c0e
dd loc_fffb3c22
dd loc_fffb3c36
dd loc_fffb3c4d
dd loc_fffb3c64
dd loc_fffb3c78
dd loc_fffb3cb0
dd loc_fffb3cc7
dd loc_fffb3d1c
dd loc_fffb3d78
dd loc_fffb3def
dd loc_fffb3efe
dd loc_fffb3f2f

ref_fffcbb50:
dd 0x00100000
dd 0x00110001
dd 0x00800081

ref_fffcbb5c:
dd 0x08c009b0
dd 0x08c009b0
dd 0x00000000

ref_fffcbb68:
dd 0x05000500
dd 0x00000000
dd 0x00000000

ref_fffcbb74:
dd 0x08c009b0
dd 0x00000000
dd 0x00000000

ref_fffcbb80:
dd 0x0bb80bb8
dd 0x00000000
dd 0x00000000

ref_fffcbc04:
dd 0xffffffff

ref_fffcbc08:
dd 0x7fffffff

ref_fffcbc0c:
dd 0x2625a000
dd 0x00032000
dd 0x84800300
dd 0x03e8001e
dd 0x38020000
dd 0x2b001c9c
dd 0x01000004
dd 0x00196e6a
dd 0x000004b0
dd 0x16e36002
dd 0x00053500
dd 0xcc5b0100
dd 0x05780015
dd 0xd0020000
dd 0x40001312
dd 0x03000006
dd 0x0010f447
dd 0x00000708
dd 0x10594402
dd 0x00074b00
dd 0x42400100
dd 0x07d0000f
dd 0x1c020000
dd 0x55000e4e
dd 0x01000008
dd 0x000ddf22
dd 0x00000898
dd 0x0cb73502
dd 0x00096000
dd 0xbcce0300
dd 0x0a28000b
dd 0xb0020000
dd 0x6b000b71
dd 0x0100000a
dd 0x00000000
dd 0x00000000
db 0x00

ref_fffcbcd0:
dd loc_fffb9240
dd loc_fffb917c
dd loc_fffb91b3
dd loc_fffb9209
dd loc_fffb928b
dd loc_fffb9240
dd loc_fffb9240

ref_fffcbcec:
dd 0x00780078
dd 0x00000000

ref_fffcbcf4:
dd 0x28002800
dd 0x1e3c1e3c
dd 0x1e3c1e3c
dd 0x28002800
dd 0x1e3c1e3c
dd 0x1e3c1e3c

ref_fffcbd0c:
dd 0x003c003c
dd 0x1e3c1e3c
dd 0x1e3c1e3c
dd 0x003c003c
dd 0x1e3c1e3c
dd 0x1e3c1e3c

ref_fffcbd24:
dd 0x00780078
dd 0x00000000

ref_fffcbd2c:
dd 0x3c3c3c3c
dd 0x1e3c1e3c
dd 0x1e3c1e3c
dd 0x3c3c3c3c
dd 0x1e3c1e3c
dd 0x1e3c1e3c

ref_fffcbd44:
dd 0x3c3c3c3c
dd 0x283c283c
dd 0x283c283c
dd 0x3c3c3c3c
dd 0x283c283c
dd 0x283c283c

ref_fffcbd5c:
dd 0xfafafabb
dd 0x00d7d7d7

ref_fffcbd64:
dd ref_fffccaa8
dd ref_fffccb64
dd ref_fffccb64
dd ref_fffccb64
dd ref_fffccc60
dd ref_fffccc60
dd ref_fffccc60

ref_fffcbd80:
dd 0xc1392859
dd 0x446e1f65
dd 0x3584f5b3
dd 0xc4d1c7fc

ref_fffcbd90:
dd 0x2020201c
dd 0x00121212

ref_fffcbd98:
dd ref_fffccd38
dd ref_fffcce88
dd ref_fffcce88
dd ref_fffcce88
dd ref_fffcd008
dd ref_fffcd008
dd ref_fffcd008

ref_fffcbdb4:
dd 0x12121212
dd 0x00141414

ref_fffcbdbc:
dd ref_fffcd0e0
dd ref_fffcd1b8
dd ref_fffcd1b8
dd ref_fffcd1b8
dd ref_fffcd290
dd ref_fffcd290
dd ref_fffcd290

ref_fffcbdd8:
dd ref_fffcd380
dd ref_fffcd3e0
dd ref_fffcd3e0
dd ref_fffcd3e0
dd ref_fffcd440
dd ref_fffcd440
dd ref_fffcd440

ref_fffcbdf4:
dd 0x01010101
dd 0x00010101

ref_fffcbdfc:
dd 0xfb0af600
dd 0x000ff105

ref_fffcbe04:
dd 0x00aaaaaa
dd 0x00cccccc
dd 0x00f0f0f0

ref_fffcbe10:
dd 0x00a10ca1
dd 0x00ef0d08
dd 0x00ad0a1e

ref_fffcbe1c:
dd 0x00000020
dd 0x00000040
dd 0x00000080
dd 0x00000100
dd 0x00000200
dd 0x00000400
dd 0x00000800
dd 0x00001000

ref_fffcbe50:
dd 0x04030201
dd 0x06000500
dd 0x00000700

ref_fffcbe5c:
dd 0x08c009b0
dd 0x00000000
dd 0x00000000

ref_fffcbe68:
dd loc_fffbf2e0
dd loc_fffbf34c
dd loc_fffbf67c
dd loc_fffbf67c
dd loc_fffbf3b8
dd loc_fffbf4e9
dd loc_fffbf617

ref_fffcbe84:
dd 0x00000401
dd 0x00000203

ref_fffcbe8c:
dd 0x283c7800
dd 0x0000141e

ref_fffcbe94:
dd 0x00000000
dd 0x00000000
dd 0x00070000
dd 0x03ff07ff
dd 0x00000000
dd 0x00000020
dd 0x00000003
dd 0x00000003
dd 0x00000000
dd 0x00010001
dd 0x00350049

ref_fffcc198:
dd 0x02010201
dd 0x02010201
dd 0x03030303
dd 0x00000000

ref_fffcc1a8:
dd 0x040f0f0f
dd 0x010f030f
dd 0x0f0f0f0f
dd 0x000f0205

ref_fffcc1b8:
dd 0x32320101
dd 0x20101010
dd 0x23232320
dd 0x00000020
dd 0x00000010
dd 0x00000023
dd 0x21303120
dd 0x00002120
dd 0x00003020
dd 0x00000020
dd 0x00000000
dd 0x00000000

ref_fffcc308:
dd 0x00030104
dd 0x00050200
dd 0x04000000
dd 0x00000706
dd 0x00000200
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x00000200

ref_fffcc3d4:
dd loc_fffc8509
dd loc_fffc8514
dd loc_fffc8525
dd loc_fffc8536
dd loc_fffc8547
dd loc_fffc85f0
dd loc_fffc86ad
dd loc_fffc8bc5
dd loc_fffc86c7
dd loc_fffc8806
dd loc_fffc894e
dd loc_fffc8558
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8692
dd loc_fffc85f0
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8bc5
dd loc_fffc8692
dd loc_fffc85f0

ref_fffcc534:
db 'System Agent: Starting up...',0x0a,0x00

ref_fffcc552:
db 'System Agent: S3 resume detected',0x0a,0x00

str_init_usb:
db 'System Agent: Initializing PCH (USB)',0x0a,0x00

str_init_sa:
db 'System Agent: Initializing PCH (SA Init)',0x0a,0x00

str_init_me_uma:
db 'System Agent: Initializing PCH (Me UMA)',0x0a,0x00

str_init_memory:
db 'System Agent: Initializing Memory',0x0a,0x00

str_locate_restore_hob_failed:
db 'System Agent: failed to locate restore data hob!',0x0a,0x00

str_sa_done:
db 'System Agent: Done.',0x0a,0x00

gPeiPlatformMemoryRangePpiGuid:
dd 0x30eb2979
dd 0x4d60b0f7
dd 0x2c1adcb2
dd 0xf4b1ce96

gPeiPlatformMemorySizePpiGuid:
dd 0x9a7ef41e
dd 0x4bd1c140
dd 0x111e84b8
dd 0xe64c0b24

gPeiBaseMemoryTestPpiGuid:
dd 0xb6ec423c
dd 0x490d21d2
dd 0x58ddc685
dd 0x74a6ea64

ref_fffcc8bc:
dd 0xf8d5438e
dd 0x481d26e1
dd 0xd6303cb6
dd 0x20a4f4ef

gPeiSeCPlatformPolicyPpiGuid:
dd 0x7ae3ceb7
dd 0x48fa2ee2
dd 0x103549aa
dd 0xbfca83bc

ref_fffcc910:
dd 0x80000010
dd gVlvPeiInitPpiGuid
dd 0x00000000

gEfiPeiMemoryDiscoveredPpiGuid:
dd 0xf894643d
dd 0x42d1c449
dd 0xbd85a88e
dd 0xde5bc6d8

gVlvPeiInitPpiGuid:
dd 0x09ea8911
dd 0x4230be0d
dd 0xc6ed03a0
dd 0x118eb493

ref_fffcc93c:
dd 0x00000000
dd 0x00000000
dd 0x00000000
dd 0x000003ff
dd 0x000003ff
dd 0x00000000
dd 0x000002aa
dd 0x000002aa
dd 0x00000001
dd 0x00000155
dd 0x00000155
dd 0x00000001

ref_fffcc96c:
dd 0x908c7f8b
dd 0x47fb5c48
dd 0xfdf55783
dd 0x7652234e

ref_fffcc97c:
dd 0x80000010
dd ref_fffcc96c
dd ref_fffcc998

ref_fffcc988:
dd 0x887acae1
dd 0x4eee6a8c
dd 0x12910d97
dd 0xf1bc63da

ref_fffcc998:
dd mrc_init_usb
dd fcn_fffc5978
dd dmi_check_link
dd fcn_fffc7bc0

ref_fffcca30:
dd 0x80000020
dd ref_fffcca3c
dd fcn_fffb9720

ref_fffcca3c:
dd 0x36f6ce3d
dd 0x42c2b76e
dd 0x413e969f
dd 0x6650a384

ref_fffcca4c:
dd 0x80000010
dd ref_fffcca98
dd 0x00000000

ref_fffcca58:
dd 0xeb002090
dd 0xffff00ff
dd 0x00005100
dd 0xeb002290
dd 0xffff00ff
dd 0x00005100
dd 0xeb000490
dd 0xffff00ff
dd 0x00005100
dd 0xeb000690
dd 0xffff00ff
dd 0x00005100

ref_fffcca88:
dd 0x433e0f9f
dd 0x410a05ae
dd 0x29bfc3a0
dd 0xac25cb8e

ref_fffcca98:
dd 0x1edcbdf9
dd 0x4bd4ffc6
dd 0x5d19f694
dd 0x5670e11d

ref_fffccaa8:
dd 0x02235679
dd 0xa6c1401a
dd 0xeb000805
dd 0x0394c144
dd 0x40eb0004
dd 0x08059683
dd 0x8340e900
dd 0x00080596
dd 0x948344ea
dd 0xe9000403
dd 0x03948344
dd 0x0cea0004
dd 0x02ab5080
dd 0x800ceb0e
dd 0x0e02ab50
dd 0x89c100e9
dd 0xeb0f0b5f
dd 0x5f89c100
dd 0x7ce90f0b
dd 0x403f00c1
dd 0xc17ceb3d
dd 0x4f003f00
dd 0x84c178e9
dd 0xe900001b
dd 0x4304c1cc
dd 0x90eb0035
dd 0x3e5155c0
dd 0x8290e92b
dd 0x2b3e5155
dd 0x46c08cea
dd 0xe90c7820
dd 0x2046828c
dd 0x30ea0c78
dd 0x000f00c0
dd 0xc030eb00
dd 0x00000f00
dd 0x00c030e9
dd 0xea00000f
dd 0x4304c1cc
dd 0xcce90035
dd 0x354304c1
dd 0xc02cea00
dd 0x0f000a00
dd 0x00822ceb
dd 0xe90f000a
dd 0x0a00822c
dd 0x00ea0f00

ref_fffccb64:
dd 0x0326671c
dd 0x00c02c23
dd 0xeb0f000a
dd 0x0a00822c
dd 0x40e90f00
dd 0x08059cc1
dd 0xc098e900
dd 0x1f203b41
dd 0x41c098eb
dd 0xe91f203b
dd 0x3b41c098
dd 0x2cea1f20
dd 0x000a0082
dd 0xc030ea0f
dd 0x00000f00
dd 0x00c030eb
dd 0xe900000f
dd 0x6055c094
dd 0x30eb4740
dd 0x000f00c0
dd 0x8340ea00
dd 0x0008059c
dd 0x80c178ea
dd 0xeb000019
dd 0x6055c094
dd 0x94e94740
dd 0x406055c0
dd 0xc088ea47
dd 0x5580983a
dd 0x80c178eb
dd 0xe9000019
dd 0x983ac088
dd 0x88e95580
dd 0x80983a82
dd 0xc08cea55
dd 0x0c782046
dd 0x46c08ceb
dd 0xe90c7820
dd 0x2046828c
dd 0x78ea0c78
dd 0x001980c1
dd 0xc1ccea00
dd 0x38254304
dd 0x04c1cce9
dd 0xeb382543
dd 0x4304c1cc
dd 0x7cea3825
dd 0xa02400c1
dd 0xc17ce94e
dd 0x3ec02400
dd 0x00c17ceb
dd 0xea3ec024
dd 0x05acc140
dd 0x90eb0008
dd 0x3e5155c0
dd 0xc090eb2b
dd 0x2b3e5155
dd 0x558290e9
dd 0xea2b3e51
dd 0x8000c008
dd 0x08e9b000
dd 0x008000c0
dd 0x0000eab0

ref_fffccc60:
dd 0x111773ed
dd 0x09c00c1e
dd 0xe9072237
dd 0x3709c00c
dd 0x2cea0722
dd 0x000a0082
dd 0xc140e90f
dd 0x0008059c
dd 0x00c02cea
dd 0xea0f000a
dd 0x3b41c098
dd 0x30e91f20
dd 0x000f00c0
dd 0xc098e900
dd 0x1f203b41
dd 0x9cc140ea
dd 0xe9000805
dd 0x6055c094
dd 0x30e94740
dd 0x000f00c0
dd 0xc178ea00
dd 0x00001980
dd 0x55c094e9
dd 0xea474060
dd 0x1980c178
dd 0x88ea0000
dd 0x80983ac0
dd 0xc088e955
dd 0x5580983a
dd 0x46c08cea
dd 0xe90c7820
dd 0x2046c08c
dd 0x90ea0c78
dd 0x3e5155c0
dd 0xc090e92b
dd 0x2b3e5155
dd 0x04c1ccea
dd 0xe9380043
dd 0x2400c17c
dd 0xcce94ea0
dd 0x004304c1
dd 0xc17cea38
dd 0x3ec02400
dd 0x00c1c4ea
dd 0xea000002
dd 0x0200c1c4
dd 0x08e90000
dd 0x008000c0
dd 0xc008e9b0
dd 0xb0008000
dd 0x09c00cea
dd 0xe9072217
dd 0x1709c00c
dd 0x00ea0722

ref_fffccd38:
dd 0xe9003140
dd 0xff000000
dd 0x00040998
dd 0xe9003340
dd 0xff000000
dd 0x00040998
dd 0xe9001540
dd 0xff000000
dd 0x00040998
dd 0xe9001740
dd 0xff000000
dd 0x00040998
dd 0xe900316c
dd 0xffffff00
dd 0x0000003f
dd 0xe900336c
dd 0xffffff00
dd 0x0000003f
dd 0xe900156c
dd 0xffffff00
dd 0x0000003f
dd 0xe900176c
dd 0xffffff00
dd 0x0000003f
dd 0xe9003168
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9003368
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9001568
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9001768
dd 0xfefff0c3
dd 0x00000a28
dd 0xe900314c
dd 0xff00ffff
dd 0x00140000
dd 0xe900334c
dd 0xff00ffff
dd 0x00140000
dd 0xe900154c
dd 0xff00ffff
dd 0x00140000
dd 0xe900174c
dd 0xff00ffff
dd 0x00140000
dd 0xe9003164
dd 0xffff0fff
dd 0x00005000
dd 0xe9003364
dd 0xffff0fff
dd 0x00005000
dd 0xe9001564
dd 0xffff0fff
dd 0x00005000
dd 0xe9001764
dd 0xffff0fff
dd 0x00005000
dd 0xe9003170
dd 0xffffffe7
dd 0x00000000
dd 0xe9003370
dd 0xffffffe7
dd 0x00000000
dd 0xe9001570
dd 0xffffffe7
dd 0x00000000
dd 0xe9001770
dd 0xffffffe7
dd 0x00000000
dd 0xe90031cc
dd 0xffffebf8
dd 0x00001401
dd 0xe90033cc
dd 0xffffebf8
dd 0x00001401
dd 0xe90015cc
dd 0xffffebf8
dd 0x00001401
dd 0xe90017cc
dd 0xffffebf8
dd 0x00001401

ref_fffcce88:
dd 0xe90031cc
dd 0xffffebf8
dd 0x00001407
dd 0xe90033cc
dd 0xffffebf8
dd 0x00001407
dd 0xe90015cc
dd 0xffffebf8
dd 0x00001407
dd 0xe90017cc
dd 0xffffebf8
dd 0x00001407
dd 0xe9003168
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9003368
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9001568
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9001768
dd 0xfefff0c3
dd 0x00000a28
dd 0xe900316c
dd 0xffffff00
dd 0x0000003f
dd 0xe900336c
dd 0xffffff00
dd 0x0000003f
dd 0xe900156c
dd 0xffffff00
dd 0x0000003f
dd 0xe900176c
dd 0xffffff00
dd 0x0000003f
dd 0xe900314c
dd 0xff0000ff
dd 0x00120500
dd 0xe900334c
dd 0xff0000ff
dd 0x00120500
dd 0xe900154c
dd 0xff0000ff
dd 0x00120500
dd 0xe900174c
dd 0xff0000ff
dd 0x00120500
dd 0xe9003114
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9003314
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9001514
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9001714
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9003164
dd 0xffff0fff
dd 0x00005000
dd 0xe9003364
dd 0xffff0fff
dd 0x00005000
dd 0xe9001564
dd 0xffff0fff
dd 0x00005000
dd 0xe9001764
dd 0xffff0fff
dd 0x00005000
dd 0xe9003170
dd 0xffffffe7
dd 0x00000000
dd 0xe9003370
dd 0xffffffe7
dd 0x00000000
dd 0xe9001570
dd 0xffffffe7
dd 0x00000000
dd 0xe9001770
dd 0xffffffe7
dd 0x00000000
dd 0xe9003038
dd 0xfffffff0
dd 0x0000000b
dd 0xe9003238
dd 0xfffffff0
dd 0x0000000b
dd 0xe9001438
dd 0xfffffff0
dd 0x0000000b
dd 0xe9001638
dd 0xfffffff0
dd 0x0000000b

ref_fffcd008:
dd 0xe90021cc
dd 0xffffebf8
dd 0x00001407
dd 0xe90023cc
dd 0xffffebf8
dd 0x00001407
dd 0xe9002168
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9002368
dd 0xfefff0c3
dd 0x00000a28
dd 0xe900216c
dd 0xffffff00
dd 0x0000003f
dd 0xe900236c
dd 0xffffff00
dd 0x0000003f
dd 0xe900214c
dd 0xff0000ff
dd 0x00120500
dd 0xe900234c
dd 0xff0000ff
dd 0x00120500
dd 0xe9002164
dd 0xffff0fff
dd 0x00005000
dd 0xe9002364
dd 0xffff0fff
dd 0x00005000
dd 0xe9002170
dd 0xffffffe7
dd 0x00000000
dd 0xe9002370
dd 0xffffffe7
dd 0x00000000
dd 0xe9002114
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9002314
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9002038
dd 0xfffffff0
dd 0x0000000b
dd 0xe9002238
dd 0xfffffff0
dd 0x0000000b
dd 0xe9002014
dd 0xffff01ff
dd 0x00006600
dd 0xe9002214
dd 0xffff01ff
dd 0x00006600

ref_fffcd0e0:
dd 0xe9002d40
dd 0xff000000
dd 0x00040998
dd 0xe9002f40
dd 0xff000000
dd 0x00040998
dd 0xe9002d6c
dd 0xffffff00
dd 0x0000003f
dd 0xe9002f6c
dd 0xffffff00
dd 0x0000003f
dd 0xe9002d44
dd 0xffffff00
dd 0x00000014
dd 0xe9002f44
dd 0xffffff00
dd 0x00000014
dd 0xe9002d68
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9002f68
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9002d4c
dd 0xff00ffff
dd 0x00140000
dd 0xe9002f4c
dd 0xff00ffff
dd 0x00140000
dd 0xe9002d64
dd 0xffff0fff
dd 0x00005000
dd 0xe9002f64
dd 0xffff0fff
dd 0x00005000
dd 0xe9002d70
dd 0xffffffe7
dd 0x00000000
dd 0xe9002f70
dd 0xffffffe7
dd 0x00000000
dd 0xe9002dcc
dd 0xffffebf8
dd 0x00001401
dd 0xe9002fcc
dd 0xffffebf8
dd 0x00001401
dd 0xe9002c2c
dd 0xfffff8ff
dd 0x00000100
dd 0xe9002e2c
dd 0xfffff8ff
dd 0x00000100

ref_fffcd1b8:
dd 0xe9002c2c
dd 0xfffff8ff
dd 0x00000100
dd 0xe9002e2c
dd 0xfffff8ff
dd 0x00000100
dd 0xe9002dcc
dd 0xffffebf8
dd 0x00001407
dd 0xe9002fcc
dd 0xffffebf8
dd 0x00001407
dd 0xe9002d68
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9002f68
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9002d6c
dd 0xffffff00
dd 0x0000003f
dd 0xe9002f6c
dd 0xffffff00
dd 0x0000003f
dd 0xe9002d4c
dd 0xff0000ff
dd 0x00120500
dd 0xe9002f4c
dd 0xff0000ff
dd 0x00120500
dd 0xe9002d14
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9002f14
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9002d64
dd 0xffff0fff
dd 0x00005000
dd 0xe9002f64
dd 0xffff0fff
dd 0x00005000
dd 0xe9002d70
dd 0xffffffe7
dd 0x00000000
dd 0xe9002f70
dd 0xffffffe7
dd 0x00000000
dd 0xe9002c38
dd 0xfffffff0
dd 0x0000000b
dd 0xe9002e38
dd 0xfffffff0
dd 0x0000000b

ref_fffcd290:
dd 0xe90025cc
dd 0xffffebf8
dd 0x00001407
dd 0xe90027cc
dd 0xffffebf8
dd 0x00001407
dd 0xe9002568
dd 0xfefff0c3
dd 0x00000a28
dd 0xe9002768
dd 0xfefff0c3
dd 0x00000a28
dd 0xe900242c
dd 0xfffff8ff
dd 0x00000100
dd 0xe900262c
dd 0xfffff8ff
dd 0x00000100
dd 0xe900256c
dd 0xffffff00
dd 0x0000003f
dd 0xe900276c
dd 0xffffff00
dd 0x0000003f
dd 0xe900254c
dd 0xff0000ff
dd 0x00120500
dd 0xe900274c
dd 0xff0000ff
dd 0x00120500
dd 0xe9002564
dd 0xffff0fff
dd 0x00005000
dd 0xe9002764
dd 0xffff0fff
dd 0x00005000
dd 0xe9002570
dd 0xffffffe7
dd 0x00000000
dd 0xe9002770
dd 0xffffffe7
dd 0x00000000
dd 0xe9002514
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9002714
dd 0xc7fff8ff
dd 0x00000100
dd 0xe9002438
dd 0xfffffff0
dd 0x0000000b
dd 0xe9002638
dd 0xfffffff0
dd 0x0000000b
dd 0xe9002414
dd 0xffff01ff
dd 0x00006600
dd 0xe9002614
dd 0xffff01ff
dd 0x00006600

ref_fffcd380:
dd 0xe9002e08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002c08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002a08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002808
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002608
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002408
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002208
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002008
dd 0x0ffffeff
dd 0xe0000100

ref_fffcd3e0:
dd 0xe9002e08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002c08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002a08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002808
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002608
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002408
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002208
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9002008
dd 0x0ffffeff
dd 0xe0000100

ref_fffcd440:
dd 0xe9000808
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9000a08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9000c08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9000e08
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9001008
dd 0x0ffffeff
dd 0xe0000100
dd 0xe9001208
dd 0x0ffffeff
dd 0xe0000100

gWdtPpiGuid:
dd 0xf38d1338
dd 0x4fb6af7a
dd 0x9c1adb91
dd 0x0d578321

ref_fffcd4a4:
dd 0x4c10d934
dd 0x45a438e6
dd 0x792a249a
dd 0x7fcb3db9

gEfiPeiStallPpiGuid:
dd 0x1f4c6f90
dd 0x48d8b06b
dd 0xe5ba01a2
dd 0x567dcdf1

mEfiMemoryRestoreDataGuid:
dd 0x87f22dcb
dd 0x41057304
dd 0x71317cbb
dd 0x3bc2cc43

gEfiPeiReadOnlyVariablePpiGuid:
dd 0x3cdc90c6
dd 0x4a7513fb
dd 0xe959799e
dd 0xfab978dd

ref_fffcd4e4:
dd 0x573eaf99
dd 0x46b5f445
dd 0x4abcd5a5
dd 0xf3983593

gEfiPeiSmbusPpiGuid:
dd 0xabd42895
dd 0x487278cf
dd 0x5c1b4484
dd 0xdafb0b18

gPeiSmbusPolicyPpiGuid:
dd 0x63b6e435
dd 0x49c632bc
dd 0xa1b7bd81
dd 0x6c1afea0

gPchDmiTcVcPpiGuid:
dd 0xed097352
dd 0x445a9041
dd 0x9db2b680
dd 0x45889e50
