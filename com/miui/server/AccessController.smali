.class public Lcom/miui/server/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/AccessController$WorkHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROL:Ljava/lang/String; = "access_control.key"

.field private static final ACCESS_CONTROL_PASSWORD_TYPE_KEY:Ljava/lang/String; = "access_control_password_type.key"

.field private static final APPLOCK_WHILTE:Ljava/lang/String; = "applock_whilte"

.field public static final DEBUG:Z = false

.field private static final GAMEBOOSTER_ANTIMSG:Ljava/lang/String; = "gamebooster_antimsg"

.field public static final PACKAGE_CAMERA:Ljava/lang/String; = "com.android.camera"

.field public static final PACKAGE_GALLERY:Ljava/lang/String; = "com.miui.gallery"

.field public static final PACKAGE_MEITU_CAMERA:Ljava/lang/String; = "com.mlab.cam"

.field public static final PACKAGE_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final PASSWORD_TYPE_PATTERN:Ljava/lang/String; = "pattern"

.field public static final SKIP_INTERCEPT_ACTIVITY_GALLERY_EDIT:Ljava/lang/String; = "com.miui.gallery.editor.photo.screen.home.ScreenEditorActivity"

.field public static final SKIP_INTERCEPT_ACTIVITY_GALLERY_EXTRA:Ljava/lang/String; = "com.miui.gallery.activity.ExternalPhotoPageActivity"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "AccessController"

.field private static final UPDATE_EVERY_DELAY:J = 0x2932e00L

.field private static final UPDATE_FIRT_DELAY:J = 0x2bf20L

.field private static final UPDATE_WHITE_LIST:I = 0x1

.field private static final WECHAT_VIDEO_ACTIVITY_CLASSNAME:Ljava/lang/String; = "com.tencent.mm.plugin.voip.ui.VideoActivity"

.field private static mAntimsgInterceptList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPasswordToHash:Ljava/lang/reflect/Method;

.field private static mSkipList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "passList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.av.ui.VideoInviteLock"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.av.ui.VideoInviteFull"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.base.stub.UIEntryStub"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.webview.ui.tools.SDKOAuthUI"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.wallet_index.ui.OrderHandlerUI"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.whatsapp"

    const-string v3, "com.whatsapp.VoipActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.whatsapp"

    const-string v3, "com.whatsapp.voipcalling.VoipActivityV2"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "jp.naver.line.android"

    const-string/jumbo v3, "jp.naver.line.android.freecall.FreeCallActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.bbm"

    const-string v3, "com.bbm.ui.voice.activities.IncomingCallActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.xiaomi.channel"

    const-string v3, "com.xiaomi.channel.voip.VoipCallActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.facebook.orca"

    const-string v3, "com.facebook.rtc.activities.WebrtcIncallActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.bsb.hike"

    const-string v3, "com.bsb.hike.voip.view.VoIPActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.eg.android.AlipayGphone"

    const-string v3, "com.alipay.android.app.TransProcessPayActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.eg.android.AlipayGphone"

    const-string v3, "com.alipay.mobile.security.login.ui.AlipayUserLoginActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.eg.android.AlipayGphone"

    const-string v3, "com.alipay.mobile.bill.detail.ui.EmptyActivity_"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.xiaomi.smarthome"

    const-string v3, "com.xiaomi.smarthome.miio.activity.ClientAllLockedActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.FallbackHome"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.DummyActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageRouterActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Landroid/util/Pair;

    const-string v2, "com.xiaomi.jr"

    const-string v3, "com.xiaomi.jr.EntryActivity"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 120
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 121
    .local v4, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-nez v4, :cond_155

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v5

    .line 123
    sget-object v3, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_155
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v3, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    goto :goto_12d

    .line 130
    :cond_16e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "interceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Landroid/util/Pair;

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.tencent.av.ui.VideoInviteLock"

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Landroid/util/Pair;

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.tencent.av.ui.VideoInviteFull"

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v2, Landroid/util/Pair;

    const-string v4, "com.tencent.mm"

    const-string v5, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 136
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 137
    .local v5, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-nez v5, :cond_1c2

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v6

    .line 139
    sget-object v6, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1c2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v6, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_19b

    .line 147
    :cond_1db
    :try_start_1db
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-le v2, v4, :cond_1f9

    .line 148
    const-class v2, Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v4, "legacyPasswordToHash"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, [B

    aput-object v7, v6, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    goto :goto_228

    .line 149
    :cond_1f9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v4, :cond_213

    .line 150
    const-class v2, Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v4, "legacyPasswordToHash"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    goto :goto_228

    .line 152
    :cond_213
    const-class v2, Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v4, "passwordToHash"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    .line 154
    :goto_228
    sget-object v2, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_22d} :catch_22e

    .line 157
    goto :goto_236

    .line 155
    :catch_22e
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AccessController"

    const-string v4, " passwordToHash static invoke error"

    invoke-static {v3, v4, v2}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .end local v0    # "passList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "interceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    .line 176
    iput-object p1, p0, Lcom/miui/server/AccessController;->mContext:Landroid/content/Context;

    .line 177
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/miui/server/AccessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 178
    new-instance v0, Lcom/miui/server/AccessController$WorkHandler;

    invoke-direct {v0, p0, p2}, Lcom/miui/server/AccessController$WorkHandler;-><init>(Lcom/miui/server/AccessController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    .line 179
    iget-object v0, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/AccessController$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 181
    return-void
.end method

.method private checkAccessControlPattern(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 297
    if-nez p1, :cond_4

    .line 298
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_4
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 301
    .local v0, "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    .line 302
    .local v1, "hash":[B
    const-string v2, "access_control.key"

    invoke-direct {p0, p2, v2}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "filePath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/miui/server/AccessController;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    .line 304
    .local v3, "readFile":[B
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    return v4
.end method

.method private getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_2b

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 473
    :cond_2b
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private haveAccessControlPasswordType(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 361
    const-string v0, "access_control_password_type.key"

    invoke-direct {p0, p1, v0}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    monitor-exit v1

    return v3

    .line 365
    .end local v2    # "file":Ljava/io/File;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private haveAccessControlPattern(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 322
    const-string v0, "access_control.key"

    invoke-direct {p0, p1, v0}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    monitor-exit v1

    return v3

    .line 326
    .end local v2    # "file":Ljava/io/File;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private static isOpenedActivity(Ljava/lang/String;)Z
    .registers 2
    .param p0, "activity"    # Ljava/lang/String;

    .line 267
    const-string v0, "com.miui.gallery.activity.ExternalPhotoPageActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.miui.gallery.editor.photo.screen.home.ScreenEditorActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isOpenedPkg(Ljava/lang/String;)Z
    .registers 2
    .param p0, "callingPkg"    # Ljava/lang/String;

    .line 262
    const-string v0, "com.miui.gallery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "com.android.camera"

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "com.mlab.cam"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 262
    :goto_24
    return v0
.end method

.method private passwordToHash(Ljava/lang/String;I)[B
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 553
    return-object v1

    .line 557
    :cond_8
    :try_start_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1c

    if-le v0, v5, :cond_28

    .line 558
    sget-object v0, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/server/AccessController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "hash":Ljava/lang/Object;
    goto :goto_3a

    .line 560
    .end local v0    # "hash":Ljava/lang/Object;
    :cond_28
    sget-object v0, Lcom/miui/server/AccessController;->mPasswordToHash:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/server/AccessController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 562
    .restart local v0    # "hash":Ljava/lang/Object;
    :goto_3a
    if-eqz v0, :cond_4e

    .line 563
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_4a

    .line 564
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    return-object v2

    .line 566
    :cond_4a
    move-object v2, v0

    check-cast v2, [B
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_4f

    return-object v2

    .line 571
    .end local v0    # "hash":Ljava/lang/Object;
    :cond_4e
    goto :goto_57

    .line 569
    :catch_4f
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AccessController"

    const-string v3, " passwordToHash invoke error"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    return-object v1
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 373
    .local v2, "stored":[B
    :try_start_5
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 374
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    move-object v2, v3

    .line 375
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 376
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1e} :catch_3d
    .catchall {:try_start_5 .. :try_end_1e} :catchall_3b

    .line 380
    nop

    .line 382
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_77

    .line 385
    :goto_22
    goto :goto_6f

    .line 383
    :catch_23
    move-exception v3

    .line 384
    .local v3, "e":Ljava/io/IOException;
    :try_start_24
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_37
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_77

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_22

    .line 380
    :catchall_3b
    move-exception v3

    goto :goto_71

    .line 377
    :catch_3d
    move-exception v3

    .line 378
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3e
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_3b

    .line 380
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_6f

    .line 382
    :try_start_56
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_77

    goto :goto_22

    .line 383
    :catch_5a
    move-exception v3

    .line 384
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5b
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_37

    .line 388
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_5b .. :try_end_70} :catchall_77

    return-object v2

    .line 380
    :goto_71
    if-eqz v1, :cond_90

    .line 382
    :try_start_73
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_79
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    .line 385
    goto :goto_90

    .line 389
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "stored":[B
    :catchall_77
    move-exception v1

    goto :goto_91

    .line 383
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "stored":[B
    :catch_79
    move-exception v4

    .line 384
    .local v4, "e":Ljava/io/IOException;
    :try_start_7a
    const-string v5, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v4    # "e":Ljava/io/IOException;
    :cond_90
    :goto_90
    throw v3

    .line 389
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "stored":[B
    :goto_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_77

    throw v1
.end method

.method private readTypeFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 397
    .local v2, "stored":Ljava/lang/String;
    :try_start_5
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 398
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 399
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_35
    .catchall {:try_start_5 .. :try_end_16} :catchall_33

    .line 403
    nop

    .line 405
    :try_start_17
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_6f

    .line 408
    :goto_1a
    goto :goto_67

    .line 406
    :catch_1b
    move-exception v3

    .line 407
    .local v3, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2f
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_6f

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1a

    .line 403
    :catchall_33
    move-exception v3

    goto :goto_69

    .line 400
    :catch_35
    move-exception v3

    .line 401
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_36
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_33

    .line 403
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_67

    .line 405
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52
    .catchall {:try_start_4e .. :try_end_51} :catchall_6f

    goto :goto_1a

    .line 406
    :catch_52
    move-exception v3

    .line 407
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_53
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    .line 411
    .end local v3    # "e":Ljava/io/IOException;
    :cond_67
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_6f

    return-object v2

    .line 403
    :goto_69
    if-eqz v1, :cond_88

    .line 405
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_71
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    .line 408
    goto :goto_88

    .line 412
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "stored":Ljava/lang/String;
    :catchall_6f
    move-exception v1

    goto :goto_89

    .line 406
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "stored":Ljava/lang/String;
    :catch_71
    move-exception v4

    .line 407
    .local v4, "e":Ljava/io/IOException;
    :try_start_72
    const-string v5, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v4    # "e":Ljava/io/IOException;
    :cond_88
    :goto_88
    throw v3

    .line 412
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "stored":Ljava/lang/String;
    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_6f

    throw v1
.end method

.method private setAccessControlPasswordType(Ljava/lang/String;I)V
    .registers 4
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 356
    const-string v0, "access_control_password_type.key"

    invoke-direct {p0, p2, v0}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/miui/server/AccessController;->writeTypeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private setAccessControlPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "hash":[B
    if-eqz p1, :cond_b

    .line 273
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 276
    .end local v1    # "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_b
    const-string v1, "access_control.key"

    invoke-direct {p0, p2, v1}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "filePath":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/miui/server/AccessController;->writeFile(Ljava/lang/String;[B)V

    .line 278
    return-void
.end method

.method private updateWhiteList(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;>;)V"
        }
    .end annotation

    .line 505
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .local p2, "list":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/Intent;>;>;"
    if-eqz p1, :cond_87

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_87

    .line 508
    :cond_a
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 509
    .local v0, "cloudList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/Intent;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 510
    .local v2, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    invoke-virtual {v2}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "json":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 512
    goto :goto_13

    .line 515
    :cond_2a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 516
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "pkg":Ljava/lang/String;
    const-string v6, "cls"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, "cls":Ljava/lang/String;
    const-string v7, "act"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, "action":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 521
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_51

    .line 522
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_59

    .line 524
    :cond_51
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 527
    :goto_59
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 528
    .local v9, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-nez v9, :cond_6b

    .line 529
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v10

    .line 530
    invoke-virtual {v0, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_6b
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v2    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "cls":Ljava/lang/String;
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    goto :goto_13

    .line 534
    :cond_6f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_81

    .line 535
    monitor-enter p0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_82

    .line 536
    :try_start_76
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 537
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 538
    monitor-exit p0

    goto :goto_81

    :catchall_7e
    move-exception v1

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_7e

    :try_start_80
    throw v1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_81} :catch_82

    .line 542
    .end local v0    # "cloudList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/Intent;>;>;"
    :cond_81
    :goto_81
    goto :goto_86

    .line 540
    :catch_82
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_86
    return-void

    .line 506
    :cond_87
    :goto_87
    return-void
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .line 416
    iget-object v0, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    const/4 v1, 0x0

    .line 420
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 422
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 423
    if-eqz p2, :cond_19

    .line 424
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 426
    :cond_19
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_3b
    .catchall {:try_start_4 .. :try_end_1c} :catchall_39

    .line 430
    nop

    .line 432
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_75

    .line 435
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_20
    goto :goto_6d

    .line 433
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_21
    move-exception v2

    .line 434
    .local v2, "e":Ljava/io/IOException;
    :try_start_22
    const-string v3, "AccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_35
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_75

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_20

    .line 430
    :catchall_39
    move-exception v2

    goto :goto_6f

    .line 427
    :catch_3b
    move-exception v2

    .line 428
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3c
    const-string v3, "AccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_39

    .line 430
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_6d

    .line 432
    :try_start_54
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_75

    goto :goto_20

    .line 433
    :catch_58
    move-exception v2

    .line 434
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_59
    const-string v3, "AccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    .line 438
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6d
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_75

    .line 439
    return-void

    .line 430
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_6f
    if-eqz v1, :cond_8e

    .line 432
    :try_start_71
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_77
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    .line 435
    goto :goto_8e

    .line 438
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_75
    move-exception v1

    goto :goto_8f

    .line 433
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_77
    move-exception v3

    .line 434
    .local v3, "e":Ljava/io/IOException;
    :try_start_78
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8e
    :goto_8e
    throw v2

    .line 438
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_75

    throw v1
.end method

.method private writeTypeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwordType"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    const/4 v1, 0x0

    .line 446
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 448
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 449
    if-eqz p2, :cond_17

    .line 450
    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 452
    :cond_17
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_39
    .catchall {:try_start_4 .. :try_end_1a} :catchall_37

    .line 456
    nop

    .line 458
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_73

    .line 461
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_1e
    goto :goto_6b

    .line 459
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_1f
    move-exception v2

    .line 460
    .local v2, "e":Ljava/io/IOException;
    :try_start_20
    const-string v3, "AccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing type file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_33
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_73

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1e

    .line 456
    :catchall_37
    move-exception v2

    goto :goto_6d

    .line 453
    :catch_39
    move-exception v2

    .line 454
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3a
    const-string v3, "AccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing type to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_37

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_6b

    .line 458
    :try_start_52
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_73

    goto :goto_1e

    .line 459
    :catch_56
    move-exception v2

    .line 460
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_57
    const-string v3, "AccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing type file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_33

    .line 464
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6b
    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_73

    .line 465
    return-void

    .line 456
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_6d
    if-eqz v1, :cond_8c

    .line 458
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_75
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    .line 461
    goto :goto_8c

    .line 464
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_73
    move-exception v1

    goto :goto_8d

    .line 459
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_75
    move-exception v3

    .line 460
    .local v3, "e":Ljava/io/IOException;
    :try_start_76
    const-string v4, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing type file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8c
    :goto_8c
    throw v2

    .line 464
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_73

    throw v1
.end method


# virtual methods
.method checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 308
    if-eqz p2, :cond_26

    if-nez p1, :cond_5

    goto :goto_26

    .line 312
    :cond_5
    const-string/jumbo v0, "pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 313
    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->checkAccessControlPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 315
    :cond_13
    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 316
    .local v0, "hash":[B
    const-string v1, "access_control.key"

    invoke-direct {p0, p3, v1}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "filePath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miui/server/AccessController;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    .line 318
    .local v2, "readFile":[B
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 309
    .end local v0    # "hash":[B
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "readFile":[B
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z
    .registers 15
    .param p1, "isSkipIntent"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 188
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 189
    return v0

    .line 191
    :cond_4
    monitor-enter p0

    .line 193
    if-eqz p1, :cond_13

    .line 194
    :try_start_7
    sget-object v1, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    goto :goto_1b

    .line 236
    .end local v1    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :catchall_10
    move-exception v0

    goto/16 :goto_a9

    .line 196
    :cond_13
    sget-object v1, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 198
    .restart local v1    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :goto_1b
    if-nez v1, :cond_1f

    .line 199
    monitor-exit p0

    return v0

    .line 202
    :cond_1f
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "action":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 204
    .local v3, "component":Landroid/content/ComponentName;
    const/4 v4, 0x1

    if-eqz v2, :cond_47

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 206
    .local v6, "i":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 207
    monitor-exit p0

    return v4

    .line 209
    .end local v6    # "i":Landroid/content/Intent;
    :cond_46
    goto :goto_2e

    .line 212
    :cond_47
    if-eqz v3, :cond_a7

    .line 214
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "cls":Ljava/lang/String;
    if-nez v5, :cond_51

    .line 216
    monitor-exit p0

    return v0

    .line 218
    :cond_51
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_6d

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "fullName":Ljava/lang/String;
    goto :goto_6e

    .line 223
    .end local v6    # "fullName":Ljava/lang/String;
    :cond_6d
    move-object v6, v5

    .line 226
    .restart local v6    # "fullName":Ljava/lang/String;
    :goto_6e
    if-nez p1, :cond_84

    const-string v7, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const v8, -0x10000001

    and-int/2addr v7, v8

    if-nez v7, :cond_84

    .line 227
    monitor-exit p0

    return v0

    .line 229
    :cond_84
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_88
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 230
    .local v8, "i":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 231
    .local v9, "c":Landroid/content/ComponentName;
    if-eqz v9, :cond_a6

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a6

    .line 232
    monitor-exit p0

    return v4

    .line 234
    .end local v8    # "i":Landroid/content/Intent;
    .end local v9    # "c":Landroid/content/ComponentName;
    :cond_a6
    goto :goto_88

    .line 236
    .end local v1    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v6    # "fullName":Ljava/lang/String;
    :cond_a7
    monitor-exit p0

    .line 238
    return v0

    .line 236
    :goto_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_7 .. :try_end_aa} :catchall_10

    throw v0
.end method

.method getAccessControlPasswordType(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 341
    const-string v0, "access_control_password_type.key"

    invoke-direct {p0, p1, v0}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "filePath":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 343
    const-string/jumbo v1, "pattern"

    return-object v1

    .line 345
    :cond_c
    invoke-direct {p0, v0}, Lcom/miui/server/AccessController;->readTypeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method haveAccessControlPassword(I)Z
    .registers 11
    .param p1, "userId"    # I

    .line 330
    const-string v0, "access_control_password_type.key"

    invoke-direct {p0, p1, v0}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "filePathType":Ljava/lang/String;
    const-string v1, "access_control.key"

    invoke-direct {p0, p1, v1}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "filePathPassword":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v3, "fileType":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, "filePassword":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 336
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_39

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_39

    const/4 v5, 0x1

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    :goto_3a
    monitor-exit v2

    .line 335
    return v5

    .line 337
    .end local v3    # "fileType":Ljava/io/File;
    .end local v4    # "filePassword":Ljava/io/File;
    :catchall_3c
    move-exception v3

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_3c

    throw v3
.end method

.method setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 282
    const-string/jumbo v0, "pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 283
    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->setAccessControlPattern(Ljava/lang/String;I)V

    .line 284
    invoke-direct {p0, p1, p3}, Lcom/miui/server/AccessController;->setAccessControlPasswordType(Ljava/lang/String;I)V

    goto :goto_23

    .line 286
    :cond_10
    const/4 v0, 0x0

    .line 287
    .local v0, "hash":[B
    if-eqz p2, :cond_17

    .line 288
    invoke-direct {p0, p2, p3}, Lcom/miui/server/AccessController;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 290
    :cond_17
    const-string v1, "access_control.key"

    invoke-direct {p0, p3, v1}, Lcom/miui/server/AccessController;->getFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "filePath":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/miui/server/AccessController;->writeFile(Ljava/lang/String;[B)V

    .line 292
    invoke-direct {p0, p1, p3}, Lcom/miui/server/AccessController;->setAccessControlPasswordType(Ljava/lang/String;I)V

    .line 294
    .end local v0    # "hash":[B
    .end local v1    # "filePath":Ljava/lang/String;
    :goto_23
    return-void
.end method

.method skipActivity(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    if-eqz p1, :cond_55

    .line 244
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 245
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_3d

    .line 246
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "activity":Ljava/lang/String;
    invoke-static {p2}, Lcom/miui/server/AccessController;->isOpenedPkg(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 249
    const-string v4, "com.miui.gallery"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 250
    invoke-static {v3}, Lcom/miui/server/AccessController;->isOpenedActivity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string/jumbo v4, "skip_interception"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_3e

    if-eqz v4, :cond_3c

    const/4 v0, 0x1

    nop

    .line 249
    :cond_3c
    return v0

    .line 256
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "activity":Ljava/lang/String;
    :cond_3d
    goto :goto_55

    .line 254
    :catch_3e
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "AccessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not getStringExtra"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_55
    :goto_55
    return v0
.end method

.method updatePasswordTypeForPattern(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 349
    invoke-direct {p0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPattern(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPasswordType(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 350
    const-string/jumbo v0, "pattern"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/AccessController;->setAccessControlPasswordType(Ljava/lang/String;I)V

    .line 351
    const-string v0, "AccessController"

    const-string/jumbo v1, "update password type succeed"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_1a
    return-void
.end method

.method public updateWhiteList()V
    .registers 6

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/AccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/server/AccessController$WorkHandler;->removeMessages(I)V

    .line 489
    iget-object v1, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    const-wide/32 v3, 0x2932e00

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/server/AccessController$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 490
    const-string v1, "applock_whilte"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 491
    .local v1, "appLockList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    const-string v2, "gamebooster_antimsg"

    invoke-static {v0, v2}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 493
    .local v2, "gameAntimsgList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    sget-object v3, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    invoke-direct {p0, v1, v3}, Lcom/miui/server/AccessController;->updateWhiteList(Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 494
    sget-object v3, Lcom/miui/server/AccessController;->mAntimsgInterceptList:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v3}, Lcom/miui/server/AccessController;->updateWhiteList(Ljava/util/List;Landroid/util/ArrayMap;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 497
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "appLockList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .end local v2    # "gameAntimsgList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    goto :goto_2f

    .line 495
    :catch_2b
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method
