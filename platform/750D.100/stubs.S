/** \file
 * Entry points into the firmware image.
 *
 * These are the functions that we can call from our tasks
 * in the Canon 1.0.0 firmware for the EOS 750D.
 *
 */
/*
 * Copyright (C) 2016 Magic Lantern Team
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the
 * Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor,
 * Boston, MA  02110-1301, USA.
 */

 /*These are the stubs I have so far, some of them are..
 probably wrong but I'll keep adding them and verify them */

#include <stub.h>

/** Startup **/
NSTUB( ROMBASEADDR, firmware_entry )
NSTUB(0xFE0A0000,  cstart)
NSTUB(0xFE3CE024,  bzero32)
NSTUB(0xFE3CDB78,  create_init_task)
NSTUB(0xFE0CD214,  init_task)

/** Tasks **/
NSTUB(0xFED5A270,  msleep)
NSTUB(0xFED5A7E8,  task_create)
DATA_PTR(    0x44D0,  current_task)

/** Interrupts **/

/** Bitmap **/

/** Debug messages **/

/** Dumper **/
NSTUB(0xFE308ECC,  dump_file)

/** Eventprocs (call by name) **/

/** FIO **/
NSTUB(0xFE443B58, _FIO_OpenFile)
NSTUB(0xFE2590FC, _FIO_CreateFile)

/** GUI **/
NSTUB(0xFE0F93F2,  GUI_control)

/** MPU communication **/

/** Memory allocation **/

/** Memory info **/

/** Misc **/
NSTUB(0xFE52F978,  debug_assert_maybe)
NSTUB(0xFE32A226,  SF_CreateSerial)
NSTUB(0xFE32A1EA,  SF_readSerialFlash)
