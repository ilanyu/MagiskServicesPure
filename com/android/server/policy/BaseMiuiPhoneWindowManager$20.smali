.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$20;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2600
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$20;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2603
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$20;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-eqz v0, :cond_b

    .line 2604
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$20;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2606
    :cond_b
    return-void
.end method
