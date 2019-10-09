.class Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;

    .line 223
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver$1;->this$0:Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver$1;->this$0:Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;

    # getter for: Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->access$100(Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method
