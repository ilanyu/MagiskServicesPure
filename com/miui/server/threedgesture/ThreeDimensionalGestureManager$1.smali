.class Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;
.super Ljava/lang/Object;
.source "ThreeDimensionalGestureManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;


# direct methods
.method constructor <init>(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    .line 69
    iput-object p1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 104
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 73
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1fa2658

    if-ne v0, v1, :cond_ac

    .line 74
    const-string v0, "3DGestureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.values[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " isOkToMonitorGesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->isOkToMonitorGesture()Z
    invoke-static {v2}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$000(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->isOkToMonitorGesture()Z
    invoke-static {v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$000(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->sMonitorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mForegroundPackage:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$100(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 76
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-int v0, v0

    packed-switch v0, :pswitch_data_ae

    goto :goto_ac

    .line 93
    :pswitch_53
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureZLaunchApp:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$700(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 94
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureZLaunchApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$700(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->launchApp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$300(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)V

    goto :goto_ac

    .line 88
    :pswitch_6b
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureCLaunchApp:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$500(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 89
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->launchFrontCamera()V
    invoke-static {v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$600(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)V

    goto :goto_ac

    .line 83
    :pswitch_7d
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureWLaunchApp:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$400(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 84
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureWLaunchApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$400(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->launchApp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$300(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)V

    goto :goto_ac

    .line 78
    :pswitch_95
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureMLaunchApp:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$200(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 79
    iget-object v0, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    iget-object v1, p0, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager$1;->this$0:Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;

    # getter for: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->mGestureMLaunchApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$200(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->launchApp(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;->access$300(Lcom/miui/server/threedgesture/ThreeDimensionalGestureManager;Ljava/lang/String;)V

    .line 100
    :cond_ac
    :goto_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_95
        :pswitch_7d
        :pswitch_6b
        :pswitch_53
    .end packed-switch
.end method
