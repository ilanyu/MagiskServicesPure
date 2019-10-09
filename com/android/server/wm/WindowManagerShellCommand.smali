.class public Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WindowManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/view/IWindowManager;

.field private final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 52
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 55
    return-void
.end method

.method private parseDimension(Ljava/lang/String;)I
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 217
    const-string/jumbo v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 220
    :cond_19
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 223
    const/16 v0, 0xa0

    :try_start_23
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2a

    .line 226
    .local v2, "density":I
    goto :goto_2d

    .line 224
    .end local v2    # "density":I
    :catch_2a
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    nop

    .line 225
    .end local v2    # "e":Landroid/os/RemoteException;
    move v2, v0

    .line 227
    .local v2, "density":I
    :goto_2d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v2

    div-int/2addr v1, v0

    return v1

    .line 230
    .end local v2    # "density":I
    :cond_3e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private runDismissKeyguard(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/view/IWindowManager;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method private runDisplayDensity(Ljava/io/PrintWriter;)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "densityStr":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 139
    :try_start_7
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v2

    .line 140
    .local v2, "initialDensity":I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v3, v1}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v3

    .line 141
    .local v3, "baseDensity":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Physical density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    if-eq v2, v3, :cond_3d

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3d} :catch_3e

    .line 146
    .end local v2    # "initialDensity":I
    .end local v3    # "baseDensity":I
    :cond_3d
    goto :goto_3f

    .line 145
    :catch_3e
    move-exception v2

    .line 147
    :goto_3f
    return v1

    .line 148
    :cond_40
    const-string/jumbo v2, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 149
    const/4 v2, -0x1

    .line 149
    .local v2, "density":I
    goto :goto_61

    .line 152
    .end local v2    # "density":I
    :cond_4b
    const/4 v2, -0x1

    :try_start_4c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_50} :catch_70

    .line 156
    .local v3, "density":I
    nop

    .line 155
    nop

    .line 157
    const/16 v4, 0x48

    if-ge v3, v4, :cond_60

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Error: density must be >= 72"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return v2

    .line 163
    :cond_60
    move v2, v3

    .line 163
    .end local v3    # "density":I
    .restart local v2    # "density":I
    :goto_61
    const/4 v3, -0x2

    if-lez v2, :cond_6a

    .line 165
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v1, v2, v3}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V

    goto :goto_6f

    .line 168
    :cond_6a
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v1, v3}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V

    .line 171
    :goto_6f
    return v1

    .line 153
    .end local v2    # "density":I
    :catch_70
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: bad number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    return v2
.end method

.method private runDisplayOverscan(Ljava/io/PrintWriter;)I
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "overscanStr":Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .local v1, "rect":Landroid/graphics/Rect;
    const-string/jumbo v2, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    .line 178
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6d

    .line 180
    :cond_17
    const-string v2, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 182
    .local v2, "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 183
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_41

    .line 184
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: bad rectangle arg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const/4 v3, -0x1

    return v3

    .line 187
    :cond_41
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 188
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 189
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 190
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 193
    .end local v2    # "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :goto_6d
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v7, 0x0

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    invoke-interface/range {v6 .. v11}, Landroid/view/IWindowManager;->setOverscan(IIIII)V

    .line 195
    return v3
.end method

.method private runDisplayScaling(Ljava/io/PrintWriter;)I
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "scalingStr":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v1, v2, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    goto :goto_22

    .line 202
    :cond_13
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 203
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    .line 208
    :goto_22
    return v2

    .line 205
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: scaling must be \'auto\' or \'off\'"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const/4 v1, -0x1

    return v1
.end method

.method private runDisplaySize(Ljava/io/PrintWriter;)I
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "size":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_66

    .line 94
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 95
    .local v2, "initialSize":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v3, "baseSize":Landroid/graphics/Point;
    :try_start_11
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v1, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 98
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v1, v3}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Physical size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_63} :catch_64

    .line 104
    :cond_63
    goto :goto_65

    .line 103
    :catch_64
    move-exception v4

    .line 105
    :goto_65
    return v1

    .line 106
    .end local v2    # "initialSize":Landroid/graphics/Point;
    .end local v3    # "baseSize":Landroid/graphics/Point;
    :cond_66
    const-string/jumbo v2, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_72

    .line 107
    move v2, v3

    .line 107
    .local v2, "h":I
    .local v3, "w":I
    goto :goto_99

    .line 109
    .end local v2    # "h":I
    .end local v3    # "w":I
    :cond_72
    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 110
    .local v2, "div":I
    if-lez v2, :cond_c3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_83

    goto :goto_c3

    .line 114
    :cond_83
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "wstr":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "hstr":Ljava/lang/String;
    :try_start_8d
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;)I

    move-result v6

    .line 118
    .local v6, "w":I
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(Ljava/lang/String;)I

    move-result v7
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_95} :catch_a9

    move v3, v7

    .line 122
    .local v3, "h":I
    nop

    .line 121
    move v2, v3

    move v3, v6

    .line 125
    .end local v4    # "wstr":Ljava/lang/String;
    .end local v5    # "hstr":Ljava/lang/String;
    .end local v6    # "w":I
    .local v2, "h":I
    .local v3, "w":I
    :goto_99
    if-ltz v3, :cond_a3

    if-ltz v2, :cond_a3

    .line 127
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v1, v3, v2}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V

    goto :goto_a8

    .line 129
    :cond_a3
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Landroid/view/IWindowManager;

    invoke-interface {v4, v1}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V

    .line 131
    :goto_a8
    return v1

    .line 119
    .end local v3    # "w":I
    .local v2, "div":I
    .restart local v4    # "wstr":Ljava/lang/String;
    .restart local v5    # "hstr":Ljava/lang/String;
    :catch_a9
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: bad number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return v3

    .line 111
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "wstr":Ljava/lang/String;
    .end local v5    # "hstr":Ljava/lang/String;
    :cond_c3
    :goto_c3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: bad size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 59
    if-nez p1, :cond_7

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 62
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 64
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9a

    goto :goto_54

    :sswitch_14
    const-string/jumbo v2, "scaling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x3

    goto :goto_55

    :sswitch_1f
    const-string v2, "density"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    goto :goto_55

    :sswitch_29
    const-string/jumbo v2, "overscan"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x2

    goto :goto_55

    :sswitch_34
    const-string/jumbo v2, "size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x0

    goto :goto_55

    :sswitch_3f
    const-string v2, "dismiss-keyguard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x4

    goto :goto_55

    :sswitch_49
    const-string/jumbo v2, "tracing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x5

    goto :goto_55

    :cond_54
    :goto_54
    move v2, v1

    :goto_55
    packed-switch v2, :pswitch_data_b4

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto :goto_83

    .line 79
    :pswitch_5d
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/WindowTracing;->onShellCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 74
    :pswitch_6a
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDismissKeyguard(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 72
    :pswitch_6f
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayScaling(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 70
    :pswitch_74
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayOverscan(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 68
    :pswitch_79
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 66
    :pswitch_7e
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    move-result v2
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_82} :catch_84

    return v2

    .line 82
    :goto_83
    return v2

    .line 84
    :catch_84
    move-exception v2

    .line 85
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    :sswitch_data_9a
    .sparse-switch
        -0x3f9f2f3e -> :sswitch_49
        -0xdad5077 -> :sswitch_3f
        0x35e001 -> :sswitch_34
        0x1f977951 -> :sswitch_29
        0x5c8c94e8 -> :sswitch_1f
        0x71e5fb87 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_6a
        :pswitch_5d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 236
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Window manager (window) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v1, "  size [reset|WxH|WdpxHdp]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v1, "    Return or override display size."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const-string v1, "  density [reset|DENSITY]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v1, "    Return or override display density."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    const-string v1, "  overscan [reset|LEFT,TOP,RIGHT,BOTTOM]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    const-string v1, "    Set overscan area for display."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const-string v1, "  scaling [off|auto]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const-string v1, "    Set display scaling mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const-string v1, "  dismiss-keyguard"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    const-string v1, "    Dismiss the keyguard, prompting user for auth if\u00a0necessary."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_58

    .line 251
    const-string v1, "  tracing (start | stop)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string v1, "    Start or stop window tracing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    :cond_58
    return-void
.end method
