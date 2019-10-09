.class public Lcom/android/server/policy/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-string v0, "PolicyControl"

    sput-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "clearableFlags"    # I

    .line 112
    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 113
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 114
    and-int/lit8 p1, p1, -0x5

    .line 116
    :cond_16
    return p1
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 121
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 122
    :cond_c
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 120
    :goto_15
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/server/policy/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 147
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 148
    if-nez p1, :cond_19

    .line 149
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    .line 151
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 153
    :goto_1f
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 141
    const-string/jumbo v0, "sImmersiveStatusFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 142
    const-string/jumbo v0, "sImmersiveNavigationFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 143
    const-string/jumbo v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 144
    return-void
.end method

.method public static getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 68
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 69
    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v0

    goto :goto_15

    .line 70
    :cond_10
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    .line 71
    .local v0, "vis":I
    :goto_15
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    const/4 v2, 0x5

    if-eqz v1, :cond_22

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_2a

    :cond_22
    if-eqz p0, :cond_30

    .line 73
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_30

    .line 74
    :cond_2a
    or-int/lit16 v0, v0, 0x1404

    .line 77
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 80
    :cond_30
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_44

    :cond_3c
    if-eqz p0, :cond_4a

    .line 82
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_4a

    .line 83
    :cond_44
    or-int/lit16 v0, v0, 0x1002

    .line 87
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 90
    :cond_4a
    return v0
.end method

.method public static getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 94
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 95
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 96
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    const/4 v2, 0x5

    if-eqz v1, :cond_18

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_18
    if-eqz p0, :cond_26

    .line 98
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_26

    .line 99
    :cond_20
    or-int/lit16 v0, v0, 0x400

    .line 100
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 103
    :cond_26
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_32

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_32
    if-eqz p0, :cond_3e

    .line 105
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_3e

    .line 106
    :cond_3a
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 108
    :cond_3e
    return v0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reloadFromSetting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_c
    const/4 v0, 0x0

    .line 129
    .local v0, "value":Ljava/lang/String;
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "policy_control"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 132
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    .line 133
    :cond_27
    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 134
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2c} :catch_2d

    .line 137
    goto :goto_44

    .line 135
    :catch_2d
    move-exception v1

    .line 136
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_44
    return-void
.end method

.method private static setFilters(Ljava/lang/String;)V
    .registers 11
    .param p0, "value"    # Ljava/lang/String;

    .line 156
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1b
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 158
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 159
    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 160
    if-eqz p0, :cond_91

    .line 161
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "nvps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_91

    aget-object v4, v0, v3

    .line 163
    .local v4, "nvp":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 164
    .local v5, "i":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3b

    .line 164
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    goto :goto_8e

    .line 165
    .restart local v4    # "nvp":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_3b
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "n":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "v":Ljava/lang/String;
    const-string v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 168
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 169
    .local v8, "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 170
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_5b

    .line 171
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 173
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_5b
    goto :goto_8e

    :cond_5c
    const-string v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 174
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 175
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 176
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    goto :goto_8e

    :cond_6b
    const-string v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 177
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 178
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 179
    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_7f

    .line 180
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 182
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_7f
    goto :goto_8e

    :cond_80
    const-string v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 183
    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    .line 184
    .restart local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    .line 162
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    .end local v8    # "f":Lcom/android/server/policy/PolicyControl$Filter;
    :cond_8e
    :goto_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 188
    .end local v0    # "nvps":[Ljava/lang/String;
    :cond_91
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_dd

    .line 189
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersiveStatusFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersiveNavigationFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersivePreconfirmationsFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_dd
    return-void
.end method
