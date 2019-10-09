.class Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;
.super Ljava/lang/Object;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/V1_0/IVibrator$performCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/vibrator/V1_0/IVibrator$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/vibrator/V1_0/IVibrator$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/vibrator/V1_0/IVibrator$Stub;

    .line 583
    iput-object p1, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;->this$0:Landroid/hardware/vibrator/V1_0/IVibrator$Stub;

    iput-object p2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "lengthMs"    # I

    .line 586
    iget-object v0, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 587
    iget-object v0, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 588
    iget-object v0, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 589
    iget-object v0, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 590
    return-void
.end method
