.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field final synthetic val$lastComponentName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 5315
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$lastComponentName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 5319
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5320
    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v0

    .line 5321
    .local v0, "helper":Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    if-eqz v0, :cond_40

    .line 5322
    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 5323
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$lastComponentName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$userId:I

    .line 5324
    invoke-interface {v0, v1, v2}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v1

    .line 5325
    .local v1, "spec":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 5326
    iget-object v3, v1, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    .line 5327
    .local v3, "iconThumbnail":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_39

    .line 5328
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5330
    .local v4, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2c

    .line 5331
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    nop

    .line 5332
    .local v2, "iconGraphicBuffer":Landroid/graphics/GraphicBuffer;
    :cond_2c
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 5333
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v1, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v6}, Lcom/android/server/wm/WindowManagerService;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    .line 5335
    return-void

    .line 5340
    .end local v2    # "iconGraphicBuffer":Landroid/graphics/GraphicBuffer;
    .end local v3    # "iconThumbnail":Landroid/graphics/Bitmap;
    .end local v4    # "hwBitmap":Landroid/graphics/Bitmap;
    :cond_39
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v2}, Lcom/android/server/wm/WindowManagerService;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 5344
    .end local v0    # "helper":Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .end local v1    # "spec":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    :cond_40
    goto :goto_45

    .line 5342
    :catch_41
    move-exception v0

    .line 5343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5345
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    return-void
.end method
