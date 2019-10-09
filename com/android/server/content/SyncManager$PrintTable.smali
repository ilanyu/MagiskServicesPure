.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "cols"    # I

    .line 4140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4137
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 4141
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 4142
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "row"    # [Ljava/lang/Object;

    .line 4191
    const/4 v0, 0x0

    .local v0, "j":I
    array-length v1, p3

    .local v1, "rowLength":I
    :goto_2
    if-ge v0, v1, :cond_23

    .line 4192
    aget-object v2, p2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4193
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4195
    .end local v0    # "j":I
    .end local v1    # "rowLength":I
    :cond_23
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4196
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 2

    .line 4199
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .registers 9
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .line 4145
    array-length v0, p3

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-gt v0, v1, :cond_46

    .line 4149
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_c
    const/4 v1, 0x0

    if-gt v0, p1, :cond_27

    .line 4150
    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v2, v2, [Ljava/lang/String;

    .line 4151
    .local v2, "list":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4152
    nop

    .local v1, "j":I
    :goto_19
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v1, v3, :cond_24

    .line 4153
    const-string v3, ""

    aput-object v3, v2, v1

    .line 4152
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 4149
    .end local v1    # "j":I
    .end local v2    # "list":[Ljava/lang/String;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4156
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4157
    .local v0, "rowArray":[Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_30
    array-length v2, p3

    if-ge v1, v2, :cond_45

    .line 4158
    aget-object v2, p3, v1

    .line 4159
    .local v2, "value":Ljava/lang/Object;
    add-int v3, p2, v1

    if-nez v2, :cond_3c

    const-string v4, ""

    goto :goto_40

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_40
    aput-object v4, v0, v3

    .line 4157
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 4161
    .end local v1    # "i":I
    :cond_45
    return-void

    .line 4146
    .end local v0    # "rowArray":[Ljava/lang/String;
    :cond_46
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " columns. can\'t set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 4164
    iget v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v0, v0, [Ljava/lang/String;

    .line 4165
    .local v0, "formats":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 4166
    .local v1, "totalLength":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "col":I
    .local v3, "totalLength":I
    :goto_8
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_42

    .line 4167
    const/4 v4, 0x0

    .line 4168
    .local v4, "maxLength":I
    iget-object v6, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4169
    .local v7, "row":[Ljava/lang/Object;
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 4170
    .local v8, "length":I
    if-le v8, v4, :cond_2d

    .line 4171
    move v4, v8

    .line 4173
    .end local v7    # "row":[Ljava/lang/Object;
    .end local v8    # "length":I
    :cond_2d
    goto :goto_14

    .line 4174
    :cond_2e
    add-int/2addr v3, v4

    .line 4175
    const-string v6, "%%-%ds"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 4166
    .end local v4    # "maxLength":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4177
    .end local v1    # "col":I
    :cond_42
    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    sub-int/2addr v1, v5

    const-string v4, "%s"

    aput-object v4, v0, v1

    .line 4178
    iget-object v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4179
    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    sub-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    .line 4180
    nop

    .local v2, "i":I
    :goto_5b
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v3, :cond_66

    .line 4181
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4180
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_5b

    .line 4183
    .end local v2    # "i":I
    :cond_66
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4184
    const/4 v1, 0x1

    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mTableSize":I
    :goto_70
    if-ge v1, v2, :cond_80

    .line 4185
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 4186
    .local v4, "row":[Ljava/lang/Object;
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4184
    .end local v4    # "row":[Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 4188
    .end local v1    # "i":I
    .end local v2    # "mTableSize":I
    :cond_80
    return-void
.end method
