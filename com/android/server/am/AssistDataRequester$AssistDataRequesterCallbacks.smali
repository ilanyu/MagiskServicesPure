.class public interface abstract Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
.super Ljava/lang/Object;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AssistDataRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssistDataRequesterCallbacks"
.end annotation


# virtual methods
.method public abstract canHandleReceivedAssistDataLocked()Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCallbacksLock"
    .end annotation
.end method

.method public abstract onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCallbacksLock"
    .end annotation
.end method

.method public onAssistRequestCompleted()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCallbacksLock"
    .end annotation

    .line 107
    return-void
.end method

.method public abstract onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCallbacksLock"
    .end annotation
.end method
