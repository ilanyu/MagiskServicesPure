.class public Lcom/android/server/MiuiSecurityInputMethodHelper;
.super Ljava/lang/Object;
.source "MiuiSecurityInputMethodHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final MIUI_SEC_INPUT_METHOD_APP_PKG_NAME:Ljava/lang/String; = "com.miui.securityinputmethod"

.field public static final NUMBER_PASSWORD:I = 0x12

.field public static final SUPPORT_SEC_INPUT_METHOD:Z

.field public static final TAG:Ljava/lang/String; = "MiuiSecurityInputMethodHelper"

.field public static final TEXT_MASK:I = 0xfff

.field public static final TEXT_PASSWORD:I = 0x81

.field public static final TEXT_VISIBLE_PASSWORD:I = 0x91

.field public static final TEXT_WEB_PASSWORD:I = 0xe1

.field public static final WEB_EDIT_TEXT:I = 0xa0


# instance fields
.field private mSecEnabled:Z

.field private mService:Lcom/android/server/InputMethodManagerService;

.field private mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    const-string/jumbo v0, "ro.miui.has_security_keyboard"

    .line 33
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_11

    move v1, v2

    nop

    :cond_11
    sput-boolean v1, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/InputMethodManagerService;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MiuiSecurityInputMethodHelper;)Lcom/android/server/InputMethodManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiSecurityInputMethodHelper;

    .line 28
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MiuiSecurityInputMethodHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiSecurityInputMethodHelper;

    .line 28
    iget-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/MiuiSecurityInputMethodHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MiuiSecurityInputMethodHelper;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/MiuiSecurityInputMethodHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MiuiSecurityInputMethodHelper;

    .line 28
    invoke-direct {p0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->updateFromSettingsLocked()V

    return-void
.end method

.method private getSecMethodIdLocked()Ljava/lang/String;
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 212
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2b
    goto :goto_c

    .line 213
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private isEditorInDefaultImeApp(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6
    .param p1, "editor"    # Landroid/view/inputmethod/EditorInfo;

    .line 259
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 260
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "defaultIme":Ljava/lang/String;
    const/4 v2, 0x0

    .line 262
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 263
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_24

    .line 264
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 262
    :goto_25
    return v3
.end method

.method private static isPasswdInputType(I)Z
    .registers 5
    .param p0, "inputType"    # I

    .line 249
    and-int/lit16 v0, p0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_11

    .line 250
    and-int/lit16 v0, p0, 0xfff

    const/16 v3, 0xe1

    if-ne v0, v3, :cond_10

    move v1, v2

    nop

    :cond_10
    return v1

    .line 252
    :cond_11
    and-int/lit16 v0, p0, 0xfff

    const/16 v3, 0x81

    if-eq v0, v3, :cond_25

    and-int/lit16 v0, p0, 0xfff

    const/16 v3, 0x91

    if-eq v0, v3, :cond_25

    and-int/lit16 v0, p0, 0xfff

    const/16 v3, 0x12

    if-ne v0, v3, :cond_24

    goto :goto_25

    :cond_24
    goto :goto_26

    :cond_25
    :goto_25
    move v1, v2

    :goto_26
    return v1
.end method

.method private isSecMethodLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "methodId"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 204
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.securityinputmethod"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private updateFromSettingsLocked()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    if-nez v0, :cond_1f

    .line 121
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 122
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 123
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 126
    :cond_1f
    return-void
.end method


# virtual methods
.method filterSecMethodLocked(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 237
    .local p1, "methodInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p1, :cond_25

    sget-boolean v0, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-eqz v0, :cond_25

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 239
    .local v1, "methodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 240
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    goto :goto_25

    .line 243
    .end local v1    # "methodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :cond_24
    goto :goto_a

    .line 245
    :cond_25
    :goto_25
    return-object p1
.end method

.method mayChangeInputMethodLocked(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 16
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 129
    sget-boolean v0, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 130
    return v1

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 133
    const-string v0, "MiuiSecurityInputMethodHelper"

    const-string v2, "input_service has no current_method_id"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v1

    .line 136
    :cond_14
    if-nez p1, :cond_1e

    .line 137
    const-string v0, "MiuiSecurityInputMethodHelper"

    const-string v2, "editor_info is null, we cannot judge"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v1

    .line 140
    :cond_1e
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 141
    .local v0, "curMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_36

    .line 142
    const-string v2, "MiuiSecurityInputMethodHelper"

    const-string v3, "fail to find current_method_info in the map"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v1

    .line 146
    :cond_36
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isPasswdInputType(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-boolean v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    if-eqz v2, :cond_5f

    .line 147
    invoke-direct {p0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->getSecMethodIdLocked()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-direct {p0, p1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isEditorInDefaultImeApp(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-nez v2, :cond_5f

    move v2, v3

    goto :goto_60

    :cond_5f
    move v2, v1

    .line 148
    .local v2, "switchToSecInput":Z
    :goto_60
    iget-object v4, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7e

    iget-boolean v4, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    if-eqz v4, :cond_7c

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 149
    invoke-static {v4}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isPasswdInputType(I)Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-direct {p0, p1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isEditorInDefaultImeApp(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v4

    if-eqz v4, :cond_7e

    :cond_7c
    move v4, v3

    goto :goto_7f

    :cond_7e
    move v4, v1

    .line 151
    .local v4, "switchFromSecInput":Z
    :goto_7f
    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_b2

    .line 152
    invoke-direct {p0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->getSecMethodIdLocked()Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "secInputMethodId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 154
    const-string v3, "MiuiSecurityInputMethodHelper"

    const-string v5, "fail to find secure_input_method in input_method_list"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1

    .line 157
    :cond_95
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iput-object v7, v8, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 158
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v8}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 159
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 160
    iget-object v6, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v6, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 162
    return v3

    .line 163
    .end local v7    # "secInputMethodId":Ljava/lang/String;
    :cond_b2
    if-eqz v4, :cond_164

    .line 164
    iget-object v7, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "selectedInputMethod":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_127

    .line 166
    const-string v8, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v9, "something is weired, maybe the input method app are uninstalled"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 168
    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    .line 167
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v8

    .line 169
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v8, :cond_e4

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.miui.securityinputmethod"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_127

    .line 170
    :cond_e4
    const-string v9, "MiuiSecurityInputMethodHelper"

    const-string v10, "fail to find a most applicable default ime"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v9, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    .line 172
    .local v9, "imiList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v9, :cond_11e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_fc

    goto :goto_11e

    .line 176
    :cond_fc
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_100
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_127

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 177
    .local v11, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.miui.securityinputmethod"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11d

    .line 178
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 179
    goto :goto_127

    .line 181
    .end local v11    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :cond_11d
    goto :goto_100

    .line 173
    :cond_11e
    :goto_11e
    const-string v3, "MiuiSecurityInputMethodHelper"

    const-string/jumbo v5, "there is no enabled method list"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v1

    .line 184
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "imiList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_127
    :goto_127
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_135

    .line 185
    const-string v3, "MiuiSecurityInputMethodHelper"

    const-string v5, "finally, we still fail to find default input method"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v1

    .line 188
    :cond_135
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_147

    .line 189
    const-string v3, "MiuiSecurityInputMethodHelper"

    const-string v5, "It looks like there is only miui_sec_input_method in the system"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v1

    .line 192
    :cond_147
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iput-object v7, v8, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 193
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v8}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 194
    iget-object v8, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 195
    iget-object v6, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v6, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 197
    return v3

    .line 199
    .end local v7    # "selectedInputMethod":Ljava/lang/String;
    :cond_164
    return v1
.end method

.method onSwitchUserLocked(I)V
    .registers 6
    .param p1, "newUserId"    # I

    .line 67
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->registerContentObserverLocked(I)V

    .line 68
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_security_ime"

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 70
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 68
    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    iput-boolean v3, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    .line 71
    return-void
.end method

.method onSystemRunningLocked()V
    .registers 5

    .line 59
    new-instance v0, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;-><init>(Lcom/android/server/MiuiSecurityInputMethodHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    .line 60
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSettingsObserver:Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiSecurityInputMethodHelper$SettingsObserver;->registerContentObserverLocked(I)V

    .line 61
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_security_ime"

    iget-object v2, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 63
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 61
    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    iput-boolean v3, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mSecEnabled:Z

    .line 64
    return-void
.end method

.method removeSecMethod(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    sget-boolean v0, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-nez v0, :cond_5

    .line 223
    return-void

    .line 225
    :cond_5
    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 227
    .local v1, "imeSubtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v2, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 228
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.securityinputmethod"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 229
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    return-void

    .line 232
    .end local v1    # "imeSubtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2f
    goto :goto_11

    .line 234
    :cond_30
    return-void
.end method

.method shouldHideImeSwitcherLocked()Z
    .registers 2

    .line 217
    sget-boolean v0, Lcom/android/server/MiuiSecurityInputMethodHelper;->SUPPORT_SEC_INPUT_METHOD:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/MiuiSecurityInputMethodHelper;->isSecMethodLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    iget-object v0, p0, Lcom/android/server/MiuiSecurityInputMethodHelper;->mService:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method
