.class Lcom/android/server/vr/Vr2dDisplay$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "Vr2dDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/Vr2dDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 87
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # getter for: Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z
    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$000(Lcom/android/server/vr/Vr2dDisplay;)Z

    move-result v0

    if-eq p1, v0, :cond_12

    .line 91
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # setter for: Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z
    invoke-static {v0, p1}, Lcom/android/server/vr/Vr2dDisplay;->access$002(Lcom/android/server/vr/Vr2dDisplay;Z)Z

    .line 92
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    # invokes: Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V
    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->access$100(Lcom/android/server/vr/Vr2dDisplay;)V

    .line 94
    :cond_12
    return-void
.end method
