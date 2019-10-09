.class Landroid/net/apf/ApfGenerator$Instruction;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Instruction"
.end annotation


# instance fields
.field private mCompareBytes:[B

.field private mHasImm:Z

.field private mImm:I

.field private mImmSigned:Z

.field private mImmSize:B

.field private mLabel:Ljava/lang/String;

.field private final mOpcode:B

.field private final mRegister:B

.field private mTargetLabel:Ljava/lang/String;

.field private mTargetLabelSize:B

.field offset:I

.field final synthetic this$0:Landroid/net/apf/ApfGenerator;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V
    .registers 4
    .param p2, "opcode"    # Landroid/net/apf/ApfGenerator$Opcodes;

    .line 120
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-direct {p0, p1, p2, v0}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    .line 121
    return-void
.end method

.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V
    .registers 4
    .param p2, "opcode"    # Landroid/net/apf/ApfGenerator$Opcodes;
    .param p3, "register"    # Landroid/net/apf/ApfGenerator$Register;

    .line 114
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iget p1, p2, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    .line 116
    iget p1, p3, Landroid/net/apf/ApfGenerator$Register;->value:I

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    .line 117
    return-void
.end method

.method private calculateImmSize(IZ)B
    .registers 4
    .param p1, "imm"    # I
    .param p2, "signed"    # Z

    .line 291
    if-nez p1, :cond_4

    .line 292
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_4
    if-eqz p2, :cond_e

    const/16 v0, -0x80

    if-lt p1, v0, :cond_e

    const/16 v0, 0x7f

    if-le p1, v0, :cond_16

    :cond_e
    if-nez p2, :cond_18

    if-ltz p1, :cond_18

    const/16 v0, 0xff

    if-gt p1, v0, :cond_18

    .line 296
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_18
    if-eqz p2, :cond_22

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_22

    const/16 v0, 0x7fff

    if-le p1, v0, :cond_2b

    :cond_22
    if-nez p2, :cond_2d

    if-ltz p1, :cond_2d

    const v0, 0xffff

    if-gt p1, v0, :cond_2d

    .line 300
    :cond_2b
    const/4 v0, 0x2

    return v0

    .line 302
    :cond_2d
    const/4 v0, 0x4

    return v0
.end method

.method private calculateTargetLabelOffset()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string v1, "__DROP__"

    if-ne v0, v1, :cond_d

    .line 272
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    # getter for: Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;
    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$100(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    .line 272
    .local v0, "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :goto_c
    goto :goto_28

    .line 273
    .end local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_d
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const-string v1, "__PASS__"

    if-ne v0, v1, :cond_1a

    .line 274
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    # getter for: Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;
    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$200(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    move-result-object v0

    goto :goto_c

    .line 276
    :cond_1a
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    # getter for: Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    .line 278
    .restart local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :goto_28
    if-eqz v0, :cond_50

    .line 282
    iget v1, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    iget v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 283
    .local v1, "targetLabelOffset":I
    if-ltz v1, :cond_37

    .line 287
    return v1

    .line 284
    :cond_37
    new-instance v2, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backward branches disallowed; label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    .end local v1    # "targetLabelOffset":I
    :cond_50
    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "label not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private generateImmSizeField()B
    .registers 3

    .line 203
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v0

    .line 205
    .local v0, "immSize":B
    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v1, 0x3

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    return v1
.end method

.method private generateInstructionByte()B
    .registers 4

    .line 212
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateImmSizeField()B

    move-result v0

    .line 213
    .local v0, "sizeField":B
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    shl-int/lit8 v1, v1, 0x3

    shl-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    return v1
.end method

.method private generatedImmSize()B
    .registers 3

    .line 266
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-le v0, v1, :cond_9

    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    goto :goto_b

    :cond_9
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    :goto_b
    return v0
.end method

.method private writeValue(I[BI)I
    .registers 7
    .param p1, "value"    # I
    .param p2, "bytecode"    # [B
    .param p3, "writingOffset"    # I

    .line 226
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_17

    .line 227
    add-int/lit8 v1, p3, 0x1

    .local v1, "writingOffset":I
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 226
    .end local p3    # "writingOffset":I
    add-int/lit8 v0, v0, -0x1

    move p3, v1

    goto :goto_6

    .line 229
    .end local v0    # "i":I
    .end local v1    # "writingOffset":I
    .restart local p3    # "writingOffset":I
    :cond_17
    return p3
.end method


# virtual methods
.method generate([B)V
    .registers 6
    .param p1, "bytecode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 236
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_9

    .line 237
    return-void

    .line 239
    :cond_9
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    .line 240
    .local v0, "writingOffset":I
    add-int/lit8 v1, v0, 0x1

    .line 240
    .local v1, "writingOffset":I
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateInstructionByte()B

    move-result v2

    aput-byte v2, p1, v0

    .line 241
    .end local v0    # "writingOffset":I
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 242
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v0

    invoke-direct {p0, v0, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v1

    .line 244
    :cond_1f
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v0, :cond_29

    .line 245
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    invoke-direct {p0, v0, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    move-result v1

    .line 247
    :cond_29
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v0, :cond_3a

    .line 248
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v3, v3

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 249
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v0, v0

    add-int/2addr v1, v0

    .line 251
    :cond_3a
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int v0, v1, v0

    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v2

    if-ne v0, v2, :cond_45

    .line 255
    return-void

    .line 252
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but should have written "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCompareBytes([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 155
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_b

    .line 158
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    .line 159
    return-void

    .line 156
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "adding compare bytes to non-JNEBS instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setImm(IZ)V
    .registers 4
    .param p1, "imm"    # I
    .param p2, "signed"    # Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    .line 125
    iput p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    .line 126
    iput-boolean p2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSigned:Z

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result v0

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    .line 128
    return-void
.end method

.method setLabel(Ljava/lang/String;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    # getter for: Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 142
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_20

    .line 145
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mLabel:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    # getter for: Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->access$000(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void

    .line 143
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "adding label to non-label instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_28
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSignedImm(I)V
    .registers 3
    .param p1, "imm"    # I

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    .line 136
    return-void
.end method

.method setTargetLabel(Ljava/lang/String;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    .line 151
    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 152
    return-void
.end method

.method setUnsignedImm(I)V
    .registers 3
    .param p1, "imm"    # I

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    .line 132
    return-void
.end method

.method shrink()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 188
    return v1

    .line 190
    :cond_6
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v0

    .line 191
    .local v0, "oldSize":I
    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 192
    .local v2, "oldTargetLabelSize":I
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    move-result v3

    iput-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    .line 193
    iget-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    if-gt v3, v2, :cond_23

    .line 196
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    move-result v3

    if-ge v3, v0, :cond_22

    const/4 v1, 0x1

    nop

    :cond_22
    return v1

    .line 194
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "instruction grew"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method size()I
    .registers 3

    .line 165
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    if-ne v0, v1, :cond_a

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_a
    const/4 v0, 0x1

    .line 169
    .local v0, "size":I
    iget-boolean v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    if-eqz v1, :cond_14

    .line 170
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_14
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 173
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_1d
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    if-eqz v1, :cond_25

    .line 176
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 178
    :cond_25
    return v0
.end method
