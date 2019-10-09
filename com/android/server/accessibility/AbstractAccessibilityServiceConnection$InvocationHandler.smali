.class final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1268
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 1269
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1265
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 1266
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1270
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1256
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 1274
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1275
    .local v0, "type":I
    packed-switch v0, :pswitch_data_70

    .line 1310
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1305
    :pswitch_1c
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 1306
    .local v1, "available":Z
    :goto_23
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    # invokes: Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$700(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    .line 1307
    .end local v1    # "available":Z
    goto :goto_6e

    .line 1301
    :pswitch_29
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    # invokes: Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal()V
    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1302
    goto :goto_6e

    .line 1296
    :pswitch_2f
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1297
    .local v1, "showState":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    # invokes: Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V
    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1298
    .end local v1    # "showState":I
    goto :goto_6e

    .line 1286
    :pswitch_37
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1287
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 1288
    .local v2, "region":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1289
    .local v3, "scale":F
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1290
    .local v4, "centerX":F
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1291
    .local v5, "centerY":F
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    # invokes: Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(Landroid/graphics/Region;FFF)V
    invoke-static {v6, v2, v3, v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/graphics/Region;FFF)V

    .line 1292
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1293
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "region":Landroid/graphics/Region;
    .end local v3    # "scale":F
    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    goto :goto_6e

    .line 1282
    :pswitch_60
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    # invokes: Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V
    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1283
    goto :goto_6e

    .line 1277
    :pswitch_66
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1278
    .local v1, "gestureId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    # invokes: Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(I)V
    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1279
    .end local v1    # "gestureId":I
    nop

    .line 1313
    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_66
        :pswitch_60
        :pswitch_5
        :pswitch_5
        :pswitch_37
        :pswitch_2f
        :pswitch_29
        :pswitch_1c
    .end packed-switch
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 1355
    nop

    .line 1356
    const/4 v0, 0x0

    .line 1355
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1357
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1358
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .registers 2

    .line 1350
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1351
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1352
    return-void
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .registers 7
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 1317
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    if-nez v0, :cond_5

    .line 1319
    return-void

    .line 1322
    :cond_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1323
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1324
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1325
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1326
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1328
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1329
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1330
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 4
    .param p1, "showState"    # I

    .line 1337
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_5

    .line 1338
    return-void

    .line 1341
    :cond_5
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1342
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1343
    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1333
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 1334
    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1346
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1347
    return-void
.end method
