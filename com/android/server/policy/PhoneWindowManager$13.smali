.class Lcom/android/server/policy/PhoneWindowManager$13;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 4659
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$13;->val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 5
    .param p1, "success"    # Z

    .line 4662
    if-eqz p1, :cond_a

    .line 4663
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$13;->val$awakenFromDreams:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    .line 4665
    :cond_a
    return-void
.end method
