.class Lcom/android/server/policy/MiuiGlobalActions$6;
.super Landroid/database/ContentObserver;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiGlobalActions;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 359
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$6;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 362
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$6;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    return-void
.end method
