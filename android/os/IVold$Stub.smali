.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final TRANSACTION_abortIdleMaint:I = 0x18

.field static final TRANSACTION_addUserKeyAuth:I = 0x30

.field static final TRANSACTION_benchmark:I = 0xf

.field static final TRANSACTION_checkEncryption:I = 0x10

.field static final TRANSACTION_createObb:I = 0x14

.field static final TRANSACTION_createUserKey:I = 0x2e

.field static final TRANSACTION_destroyObb:I = 0x15

.field static final TRANSACTION_destroyUserKey:I = 0x2f

.field static final TRANSACTION_destroyUserStorage:I = 0x35

.field static final TRANSACTION_encryptFstab:I = 0x2d

.field static final TRANSACTION_fbeEnable:I = 0x28

.field static final TRANSACTION_fdeChangePassword:I = 0x21

.field static final TRANSACTION_fdeCheckPassword:I = 0x1d

.field static final TRANSACTION_fdeClearPassword:I = 0x27

.field static final TRANSACTION_fdeComplete:I = 0x1f

.field static final TRANSACTION_fdeEnable:I = 0x20

.field static final TRANSACTION_fdeGetField:I = 0x23

.field static final TRANSACTION_fdeGetPassword:I = 0x26

.field static final TRANSACTION_fdeGetPasswordType:I = 0x25

.field static final TRANSACTION_fdeRestart:I = 0x1e

.field static final TRANSACTION_fdeSetField:I = 0x24

.field static final TRANSACTION_fdeVerifyPassword:I = 0x22

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x31

.field static final TRANSACTION_forgetPartition:I = 0xb

.field static final TRANSACTION_format:I = 0xe

.field static final TRANSACTION_fstrim:I = 0x16

.field static final TRANSACTION_initUser0:I = 0x2a

.field static final TRANSACTION_isConvertibleToFbe:I = 0x2b

.field static final TRANSACTION_lockUserKey:I = 0x33

.field static final TRANSACTION_mkdirs:I = 0x13

.field static final TRANSACTION_monitor:I = 0x2

.field static final TRANSACTION_mount:I = 0xc

.field static final TRANSACTION_mountAppFuse:I = 0x1b

.field static final TRANSACTION_mountDefaultEncrypted:I = 0x29

.field static final TRANSACTION_mountFstab:I = 0x2c

.field static final TRANSACTION_moveStorage:I = 0x11

.field static final TRANSACTION_onSecureKeyguardStateChanged:I = 0x9

.field static final TRANSACTION_onUserAdded:I = 0x5

.field static final TRANSACTION_onUserRemoved:I = 0x6

.field static final TRANSACTION_onUserStarted:I = 0x7

.field static final TRANSACTION_onUserStopped:I = 0x8

.field static final TRANSACTION_partition:I = 0xa

.field static final TRANSACTION_prepareUserStorage:I = 0x34

.field static final TRANSACTION_remountUid:I = 0x12

.field static final TRANSACTION_reset:I = 0x3

.field static final TRANSACTION_runDefrag:I = 0x19

.field static final TRANSACTION_runIdleMaint:I = 0x17

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_shutdown:I = 0x4

.field static final TRANSACTION_stopDefrag:I = 0x1a

.field static final TRANSACTION_unlockUserKey:I = 0x32

.field static final TRANSACTION_unmount:I = 0xd

.field static final TRANSACTION_unmountAppFuse:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVold$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_4
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_14

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/os/IVold;

    return-object v1

    .line 31
    :cond_14
    new-instance v1, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "android.os.IVold"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3a3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_3a8

    .line 583
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 570
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 576
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 577
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v2

    .line 555
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 559
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 561
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 563
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 564
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    return v2

    .line 546
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->lockUserKey(I)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    return v2

    .line 531
    .end local v1    # "_arg0":I
    :pswitch_4f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 537
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/IVold$Stub;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    return v2

    .line 522
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 525
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->fixateNewestUserKeyAuth(I)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    return v2

    .line 507
    .end local v1    # "_arg0":I
    :pswitch_77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 511
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 513
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 515
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 516
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/IVold$Stub;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    return v2

    .line 498
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 501
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyUserKey(I)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    return v2

    .line 485
    .end local v1    # "_arg0":I
    :pswitch_9f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 491
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b2

    move v1, v2

    nop

    .line 492
    .local v1, "_arg2":Z
    :cond_b2
    invoke-virtual {p0, v3, v4, v1}, Landroid/os/IVold$Stub;->createUserKey(IIZ)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    return v2

    .line 476
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_b9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    return v2

    .line 467
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_c7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    return v2

    .line 459
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_d5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->isConvertibleToFbe()Z

    move-result v1

    .line 461
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    return v2

    .line 452
    .end local v1    # "_result":Z
    :pswitch_e3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    return v2

    .line 445
    :pswitch_ed
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->mountDefaultEncrypted()V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    return v2

    .line 438
    :pswitch_f7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    return v2

    .line 431
    :pswitch_101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeClearPassword()V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    return v2

    .line 423
    :pswitch_10b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeGetPassword()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    return v2

    .line 415
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeGetPasswordType()I

    move-result v1

    .line 417
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return v2

    .line 404
    .end local v1    # "_result":I
    :pswitch_127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    return v2

    .line 394
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    return v2

    .line 385
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_14b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->fdeVerifyPassword(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    return v2

    .line 372
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    return v2

    .line 359
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_16f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 366
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->fdeEnable(ILjava/lang/String;I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    return v2

    .line 351
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_185
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeComplete()I

    move-result v1

    .line 353
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return v2

    .line 344
    .end local v1    # "_result":I
    :pswitch_193
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeRestart()V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    return v2

    .line 335
    :pswitch_19d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->fdeCheckPassword(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    return v2

    .line 322
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1ab
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 328
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 329
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->unmountAppFuse(III)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    return v2

    .line 308
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_1c1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->mountAppFuse(III)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 316
    .local v5, "_result":Ljava/io/FileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 318
    return v2

    .line 299
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/io/FileDescriptor;
    :pswitch_1db
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 302
    .local v1, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->stopDefrag(Landroid/os/IVoldTaskListener;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    return v2

    .line 288
    .end local v1    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_1ed
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f8

    move v1, v2

    nop

    .line 292
    .local v1, "_arg0":Z
    :cond_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 293
    .local v3, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->runDefrag(ZLandroid/os/IVoldTaskListener;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    return v2

    .line 279
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_207
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 282
    .local v1, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    return v2

    .line 270
    .end local v1    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_219
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 273
    .restart local v1    # "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->runIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    return v2

    .line 259
    .end local v1    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_22b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 264
    .restart local v3    # "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    return v2

    .line 250
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_241
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    return v2

    .line 236
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_24f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    return v2

    .line 227
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_269
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->mkdirs(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    return v2

    .line 216
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_277
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    return v2

    .line 203
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_289
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v4

    .line 210
    .local v4, "_arg2":Landroid/os/IVoldTaskListener;
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    return v2

    .line 194
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/IVoldTaskListener;
    :pswitch_2a3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->checkEncryption(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v2

    .line 183
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2b1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 188
    .local v3, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    return v2

    .line 172
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_2c7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    return v2

    .line 163
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v2

    .line 150
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2e7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 157
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;II)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    return v2

    .line 139
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_2fd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v2

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_30f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v2

    .line 117
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_325
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_330

    move v1, v2

    nop

    .line 120
    .local v1, "_arg0":Z
    :cond_330
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v2

    .line 108
    .end local v1    # "_arg0":Z
    :pswitch_337
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v2

    .line 99
    .end local v1    # "_arg0":I
    :pswitch_345
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v2

    .line 90
    .end local v1    # "_arg0":I
    :pswitch_353
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v2

    .line 79
    .end local v1    # "_arg0":I
    :pswitch_361
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 84
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/os/IVold$Stub;->onUserAdded(II)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v2

    .line 72
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_373
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v2

    .line 65
    :pswitch_37d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->reset()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 58
    :pswitch_387
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 49
    :pswitch_391
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Landroid/os/IVoldListener;
    invoke-virtual {p0, v1}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v2

    .line 44
    .end local v1    # "_arg0":Landroid/os/IVoldListener;
    :cond_3a3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_3a8
    .packed-switch 0x1
        :pswitch_391
        :pswitch_387
        :pswitch_37d
        :pswitch_373
        :pswitch_361
        :pswitch_353
        :pswitch_345
        :pswitch_337
        :pswitch_325
        :pswitch_30f
        :pswitch_2fd
        :pswitch_2e7
        :pswitch_2d9
        :pswitch_2c7
        :pswitch_2b1
        :pswitch_2a3
        :pswitch_289
        :pswitch_277
        :pswitch_269
        :pswitch_24f
        :pswitch_241
        :pswitch_22b
        :pswitch_219
        :pswitch_207
        :pswitch_1ed
        :pswitch_1db
        :pswitch_1c1
        :pswitch_1ab
        :pswitch_19d
        :pswitch_193
        :pswitch_185
        :pswitch_16f
        :pswitch_159
        :pswitch_14b
        :pswitch_139
        :pswitch_127
        :pswitch_119
        :pswitch_10b
        :pswitch_101
        :pswitch_f7
        :pswitch_ed
        :pswitch_e3
        :pswitch_d5
        :pswitch_c7
        :pswitch_b9
        :pswitch_9f
        :pswitch_91
        :pswitch_77
        :pswitch_69
        :pswitch_4f
        :pswitch_41
        :pswitch_27
        :pswitch_11
    .end packed-switch
.end method
