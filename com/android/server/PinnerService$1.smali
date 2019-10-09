.class Lcom/android/server/PinnerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PinnerService;

    .line 87
    iput-object p1, p0, Lcom/android/server/PinnerService$1;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    if-ne v0, v1, :cond_1d

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, "packageUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 95
    .local v2, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v3, p0, Lcom/android/server/PinnerService$1;->this$0:Lcom/android/server/PinnerService;

    invoke-virtual {v3, v2}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;)V

    .line 98
    .end local v0    # "packageUri":Landroid/net/Uri;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1d
    return-void
.end method
