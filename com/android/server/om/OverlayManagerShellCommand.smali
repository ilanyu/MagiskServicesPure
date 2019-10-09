.class final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method constructor <init>(Landroid/content/om/IOverlayManager;)V
    .registers 2
    .param p1, "iom"    # Landroid/content/om/IOverlayManager;

    .line 41
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 43
    return-void
.end method

.method private runEnableDisable(Z)I
    .registers 10
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 150
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    move v2, v1

    .line 152
    .local v2, "userId":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v3, :cond_42

    .line 153
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x4f7b216b

    if-eq v6, v7, :cond_19

    goto :goto_22

    :cond_19
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v3, v1

    :cond_22
    :goto_22
    if-eqz v3, :cond_39

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return v5

    .line 155
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 156
    goto :goto_6

    .line 163
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v3, v1, p1, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v3

    xor-int/2addr v3, v5

    return v3
.end method

.method private runEnableExclusive()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 170
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 171
    .local v1, "userId":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .line 173
    .local v1, "inCategory":Z
    .local v3, "userId":I
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x1

    if-eqz v4, :cond_56

    .line 174
    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x3f3229e

    if-eq v7, v8, :cond_2a

    const v8, 0x4f7b216b

    if-eq v7, v8, :cond_20

    goto :goto_33

    :cond_20
    const-string v7, "--user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    move v4, v2

    goto :goto_33

    :cond_2a
    const-string v7, "--category"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    move v4, v6

    :cond_33
    :goto_33
    packed-switch v4, :pswitch_data_6c

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    return v6

    .line 179
    :pswitch_4b
    const/4 v1, 0x1

    .line 180
    goto :goto_8

    .line 176
    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 177
    goto :goto_8

    .line 186
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "overlay":Ljava/lang/String;
    if-eqz v1, :cond_64

    .line 188
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v2, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v4

    xor-int/2addr v4, v6

    return v4

    .line 190
    :cond_64
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v2, v6, v3}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v4

    xor-int/2addr v4, v6

    return v4

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4b
    .end packed-switch
.end method

.method private runList()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 105
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 107
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    move v3, v2

    .line 109
    .local v3, "userId":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x1

    if-eqz v4, :cond_46

    .line 110
    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x4f7b216b

    if-eq v7, v8, :cond_1d

    goto :goto_26

    :cond_1d
    const-string v7, "--user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    move v4, v2

    :cond_26
    :goto_26
    if-eqz v4, :cond_3d

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    return v6

    .line 112
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 113
    goto :goto_a

    .line 120
    :cond_46
    move-object/from16 v4, p0

    iget-object v7, v4, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v7, v3}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v7

    .line 121
    .local v7, "allOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ac

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 122
    .local v9, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 124
    .local v10, "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 125
    .local v11, "N":I
    move v12, v2

    .local v12, "i":I
    :goto_70
    if-ge v12, v11, :cond_a4

    .line 126
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/om/OverlayInfo;

    .line 128
    .local v13, "oi":Landroid/content/om/OverlayInfo;
    iget v14, v13, Landroid/content/om/OverlayInfo;->state:I

    const/4 v15, 0x6

    if-eq v14, v15, :cond_86

    packed-switch v14, :pswitch_data_ae

    .line 137
    const-string v14, "---"

    goto :goto_89

    .line 134
    :pswitch_83
    const-string v14, "[ ]"

    .line 135
    .local v14, "status":Ljava/lang/String;
    goto :goto_89

    .line 131
    .end local v14    # "status":Ljava/lang/String;
    :cond_86
    :pswitch_86
    const-string v14, "[x]"

    .line 132
    .restart local v14    # "status":Ljava/lang/String;
    nop

    .line 137
    :goto_89
    nop

    .line 140
    const-string v15, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v14, v6, v2

    iget-object v2, v13, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v2, v6, v16

    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .end local v13    # "oi":Landroid/content/om/OverlayInfo;
    .end local v14    # "status":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v16

    const/4 v2, 0x0

    goto :goto_70

    .line 142
    .end local v12    # "i":I
    :cond_a4
    move/from16 v16, v6

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 143
    .end local v9    # "targetPackageName":Ljava/lang/String;
    .end local v10    # "overlaysForTarget":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v11    # "N":I
    nop

    .line 121
    const/4 v2, 0x0

    goto :goto_56

    .line 144
    :cond_ac
    const/4 v2, 0x0

    return v2

    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_83
        :pswitch_86
    .end packed-switch
.end method

.method private runSetPriority()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 197
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    move v2, v1

    .line 199
    .local v2, "userId":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 199
    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v3, :cond_42

    .line 200
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x4f7b216b

    if-eq v6, v7, :cond_19

    goto :goto_22

    :cond_19
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v3, v1

    :cond_22
    :goto_22
    if-eqz v3, :cond_39

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    return v5

    .line 202
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 203
    goto :goto_6

    .line 210
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "newParentPackageName":Ljava/lang/String;
    const-string v6, "highest"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 214
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v1, v2}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 215
    :cond_5a
    const-string/jumbo v6, "lowest"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 216
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v1, v2}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 218
    :cond_6b
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v6, v1, v3, v2}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 47
    if-nez p1, :cond_7

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 50
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 52
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_9e

    goto :goto_4a

    :sswitch_16
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x2

    goto :goto_4b

    :sswitch_20
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move v2, v4

    goto :goto_4b

    :sswitch_2b
    const-string v2, "enable-exclusive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x3

    goto :goto_4b

    :sswitch_35
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move v2, v3

    goto :goto_4b

    :sswitch_3f
    const-string/jumbo v2, "set-priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x4

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v2, v1

    :goto_4b
    packed-switch v2, :pswitch_data_b4

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto :goto_6c

    .line 62
    :pswitch_53
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result v2

    return v2

    .line 60
    :pswitch_58
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result v2

    return v2

    .line 58
    :pswitch_5d
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v2

    return v2

    .line 56
    :pswitch_62
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v2

    return v2

    .line 54
    :pswitch_67
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result v2
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_6b} :catch_83
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_6b} :catch_6d

    return v2

    .line 64
    :goto_6c
    return v2

    .line 68
    :catch_6d
    move-exception v2

    .line 69
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_9d

    .line 66
    :catch_83
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 71
    :goto_9d
    return v1

    :sswitch_data_9e
    .sparse-switch
        -0x5120f151 -> :sswitch_3f
        -0x4d6ada7d -> :sswitch_35
        -0x2f5d012c -> :sswitch_2b
        0x32b09e -> :sswitch_20
        0x639e22e8 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 77
    .local v0, "out":Ljava/io/PrintWriter;
    const-string v1, "Overlay manager (overlay) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  dump [--verbose] [--user USER_ID] [PACKAGE [PACKAGE [...]]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "    Print debugging information about the overlay manager."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string v1, "  list [--user USER_ID] [PACKAGE [PACKAGE [...]]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string v1, "    Print information about target and overlay packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    Overlay packages are printed in priority order. With optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "    parameters PACKAGEs, limit output to the specified packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v1, "    but include more information about each package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "  enable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string v1, "    Enable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  disable [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Disable overlay package PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Enable overlay package PACKAGE and disable all other overlays for"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "    its target package. If the --category option is given, only disables"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    other overlays in the same category."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Change the priority of the overlay PACKAGE to be just higher than"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "    the priority of PACKAGE_PARENT If PARENT is the special keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "    If PARENT is the special keyword \'highest\', change priority of"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    PACKAGE to the highest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method
