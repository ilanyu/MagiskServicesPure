.class Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/webkit/WebViewUpdateService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .line 66
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 69
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    sparse-switch v2, :sswitch_data_b2

    goto :goto_4a

    :sswitch_18
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v6

    goto :goto_4b

    :sswitch_22
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v5

    goto :goto_4b

    :sswitch_2c
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v4

    goto :goto_4b

    :sswitch_36
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v3

    goto :goto_4b

    :sswitch_40
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x4

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v1, -0x1

    :goto_4b
    packed-switch v1, :pswitch_data_c8

    goto :goto_b0

    .line 99
    :pswitch_4f
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserRemoved(I)V

    goto :goto_b0

    .line 96
    :pswitch_59
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleNewUser(I)V

    .line 97
    goto :goto_b0

    .line 91
    :pswitch_63
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    # invokes: Lcom/android/server/webkit/WebViewUpdateService;->packageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$000(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 93
    nop

    .line 91
    move v4, v6

    goto :goto_7d

    .line 93
    :cond_7c
    nop

    .line 91
    :goto_7d
    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    .line 94
    goto :goto_b0

    .line 85
    :pswitch_81
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->entirePackageChanged(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 86
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    # invokes: Lcom/android/server/webkit/WebViewUpdateService;->packageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$000(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    goto :goto_b0

    .line 78
    :pswitch_95
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    return-void

    .line 79
    :cond_a2
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    # getter for: Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v1

    # invokes: Lcom/android/server/webkit/WebViewUpdateService;->packageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->access$000(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    .line 81
    nop

    .line 102
    :cond_b0
    :goto_b0
    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x7ad942ef -> :sswitch_40
        -0x2d021ace -> :sswitch_36
        0xa480416 -> :sswitch_2c
        0x1f50b9c2 -> :sswitch_22
        0x5c1076e2 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_95
        :pswitch_81
        :pswitch_63
        :pswitch_59
        :pswitch_4f
    .end packed-switch
.end method
