.class Lcom/android/server/InputMethodManagerService$2;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .line 381
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 384
    if-nez p1, :cond_7

    .line 385
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->restoreNonVrImeFromSettingsNoCheck()V
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$000(Lcom/android/server/InputMethodManagerService;)V

    .line 387
    :cond_7
    return-void
.end method
