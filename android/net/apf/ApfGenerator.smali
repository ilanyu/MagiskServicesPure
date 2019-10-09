.class public Landroid/net/apf/ApfGenerator;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfGenerator$Instruction;,
        Landroid/net/apf/ApfGenerator$Register;,
        Landroid/net/apf/ApfGenerator$ExtendedOpcodes;,
        Landroid/net/apf/ApfGenerator$Opcodes;,
        Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    }
.end annotation


# static fields
.field public static final DROP_LABEL:Ljava/lang/String; = "__DROP__"

.field public static final FILTER_AGE_MEMORY_SLOT:I = 0xf

.field public static final FIRST_PREFILLED_MEMORY_SLOT:I = 0xd

.field public static final IPV4_HEADER_SIZE_MEMORY_SLOT:I = 0xd

.field public static final LAST_PREFILLED_MEMORY_SLOT:I = 0xf

.field public static final MEMORY_SLOTS:I = 0x10

.field private static final MIN_APF_VERSION:I = 0x2

.field public static final PACKET_SIZE_MEMORY_SLOT:I = 0xe

.field public static final PASS_LABEL:Ljava/lang/String; = "__PASS__"


# instance fields
.field private final mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

.field private mGenerated:Z

.field private final mInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

.field private final mVersion:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    .line 365
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    .line 366
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    .line 376
    iput p1, p0, Landroid/net/apf/ApfGenerator;->mVersion:I

    .line 377
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->requireApfVersion(I)V

    .line 378
    return-void
.end method

.method static synthetic access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfGenerator;

    .line 30
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfGenerator;

    .line 30
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .registers 2
    .param p0, "x0"    # Landroid/net/apf/ApfGenerator;

    .line 30
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    return-object v0
.end method

.method private addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V
    .registers 4
    .param p1, "instruction"    # Landroid/net/apf/ApfGenerator$Instruction;

    .line 394
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    if-nez v0, :cond_a

    .line 397
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    return-void

    .line 395
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Program already generated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requireApfVersion(I)V
    .registers 5
    .param p1, "minimumVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 388
    iget v0, p0, Landroid/net/apf/ApfGenerator;->mVersion:I

    if-lt v0, p1, :cond_5

    .line 391
    return-void

    .line 389
    :cond_5
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires APF >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supportsVersion(I)Z
    .registers 2
    .param p0, "version"    # I

    .line 384
    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private updateInstructionOffsets()I
    .registers 5

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "offset":I
    iget-object v1, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfGenerator$Instruction;

    .line 878
    .local v2, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    iput v0, v2, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 879
    invoke-virtual {v2}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 880
    .end local v2    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    goto :goto_7

    .line 881
    :cond_1b
    return v0
.end method


# virtual methods
.method public addAdd(I)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "value"    # I

    .line 505
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 506
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 507
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 508
    return-object p0
.end method

.method public addAddR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .line 576
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 577
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 578
    return-object p0
.end method

.method public addAnd(I)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "value"    # I

    .line 535
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 536
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 537
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 538
    return-object p0
.end method

.method public addAndR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .line 604
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 605
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 606
    return-object p0
.end method

.method public addDiv(I)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "value"    # I

    .line 525
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 526
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 527
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 528
    return-object p0
.end method

.method public addDivR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .line 594
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 595
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 596
    return-object p0
.end method

.method public addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 426
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 427
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 428
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 429
    return-object p0
.end method

.method public addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 6
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "bytes"    # [B
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 759
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    if-eq p1, v0, :cond_19

    .line 762
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 763
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    array-length v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 764
    invoke-virtual {v0, p3}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setCompareBytes([B)V

    .line 766
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 767
    return-object p0

    .line 760
    .end local v0    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_19
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    const-string v1, "JNEBS fails with R1"

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    .line 692
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 693
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 694
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 696
    return-object p0
.end method

.method public addJumpIfR0AnyBitsSetR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "target"    # Ljava/lang/String;

    .line 747
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 748
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 750
    return-object p0
.end method

.method public addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    .line 644
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 645
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 646
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 647
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 648
    return-object p0
.end method

.method public addJumpIfR0EqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "target"    # Ljava/lang/String;

    .line 703
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 704
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 705
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 706
    return-object p0
.end method

.method public addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    .line 668
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 669
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 670
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 672
    return-object p0
.end method

.method public addJumpIfR0GreaterThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "target"    # Ljava/lang/String;

    .line 725
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 726
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 728
    return-object p0
.end method

.method public addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    .line 680
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 681
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 682
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 684
    return-object p0
.end method

.method public addJumpIfR0LessThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "target"    # Ljava/lang/String;

    .line 736
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 737
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 739
    return-object p0
.end method

.method public addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    .line 656
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 657
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 658
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 660
    return-object p0
.end method

.method public addJumpIfR0NotEqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "target"    # Ljava/lang/String;

    .line 714
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 715
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 717
    return-object p0
.end method

.method public addLeftShift(I)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "value"    # I

    .line 555
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 556
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 557
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 558
    return-object p0
.end method

.method public addLeftShiftR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .line 624
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 625
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 626
    return-object p0
.end method

.method public addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    .line 448
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 449
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 450
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 451
    return-object p0
.end method

.method public addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    .line 483
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 484
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 485
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 486
    return-object p0
.end method

.method public addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    .line 459
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 460
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 461
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 462
    return-object p0
.end method

.method public addLoad32Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    .line 495
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 496
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 497
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 498
    return-object p0
.end method

.method public addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    .line 437
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 438
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 439
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 440
    return-object p0
.end method

.method public addLoad8Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    .line 471
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 472
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 473
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 474
    return-object p0
.end method

.method public addLoadData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "destinationRegister"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 849
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->requireApfVersion(I)V

    .line 850
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDDW:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 851
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 852
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 853
    return-object p0
.end method

.method public addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 6
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 776
    if-ltz p2, :cond_19

    const/16 v0, 0xf

    if-gt p2, v0, :cond_19

    .line 779
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 780
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 781
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 782
    return-object p0

    .line 777
    .end local v0    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_19
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal memory slot number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "value"    # I

    .line 633
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 634
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 635
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 636
    return-object p0
.end method

.method public addMove(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;

    .line 835
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 836
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 837
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 838
    return-object p0
.end method

.method public addMul(I)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "value"    # I

    .line 515
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 516
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 517
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 518
    return-object p0
.end method

.method public addMulR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .line 585
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 586
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 587
    return-object p0
.end method

.method public addNeg(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;

    .line 814
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 815
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 816
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 817
    return-object p0
.end method

.method public addNot(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;

    .line 804
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 805
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 806
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 807
    return-object p0
.end method

.method public addOr(I)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "value"    # I

    .line 545
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 546
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 547
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 548
    return-object p0
.end method

.method public addOrR1()Landroid/net/apf/ApfGenerator;
    .registers 4

    .line 614
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 615
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 616
    return-object p0
.end method

.method public addRightShift(I)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "value"    # I

    .line 566
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 567
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 568
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 569
    return-object p0
.end method

.method public addStoreData(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 5
    .param p1, "sourceRegister"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 864
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->requireApfVersion(I)V

    .line 865
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->STDW:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 866
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    .line 867
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 868
    return-object p0
.end method

.method public addStoreToMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .registers 6
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 791
    if-ltz p2, :cond_19

    const/16 v0, 0xf

    if-gt p2, v0, :cond_19

    .line 794
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 795
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 796
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 797
    return-object p0

    .line 792
    .end local v0    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_19
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal memory slot number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSwap()Landroid/net/apf/ApfGenerator;
    .registers 3

    .line 824
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 825
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    .line 826
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 827
    return-object p0
.end method

.method public defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 416
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    .line 417
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setLabel(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    .line 419
    return-object p0
.end method

.method public generate()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 901
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    if-nez v0, :cond_54

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    .line 913
    const/16 v0, 0xa

    .line 915
    .local v0, "iterations_remaining":I
    :goto_9
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    move-result v1

    .line 917
    .local v1, "total_size":I
    iget-object v2, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    add-int/lit8 v3, v1, 0x1

    iput v3, v2, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 918
    iget-object v2, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    iput v1, v2, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 920
    add-int/lit8 v2, v0, -0x1

    .local v2, "iterations_remaining":I
    if-nez v0, :cond_1c

    .end local v0    # "iterations_remaining":I
    goto :goto_39

    .line 922
    :cond_1c
    const/4 v0, 0x0

    .line 923
    .local v0, "shrunk":Z
    iget-object v3, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/apf/ApfGenerator$Instruction;

    .line 924
    .local v4, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v4}, Landroid/net/apf/ApfGenerator$Instruction;->shrink()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 925
    const/4 v0, 0x1

    .line 927
    .end local v4    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_36
    goto :goto_23

    .line 928
    :cond_37
    if-nez v0, :cond_52

    .line 930
    .end local v0    # "shrunk":Z
    :goto_39
    new-array v0, v1, [B

    .line 931
    .local v0, "bytecode":[B
    iget-object v3, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/apf/ApfGenerator$Instruction;

    .line 932
    .restart local v4    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v4, v0}, Landroid/net/apf/ApfGenerator$Instruction;->generate([B)V

    .line 933
    .end local v4    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    goto :goto_41

    .line 934
    :cond_51
    return-object v0

    .line 913
    .end local v0    # "bytecode":[B
    .end local v1    # "total_size":I
    :cond_52
    move v0, v2

    goto :goto_9

    .line 902
    .end local v2    # "iterations_remaining":I
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only generate() once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public programLengthOverEstimate()I
    .registers 2

    .line 889
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    move-result v0

    return v0
.end method
