.class interface abstract Lcom/android/server/broadcastradio/hal2/TunerCallback$RunnableThrowingRemoteException;
.super Ljava/lang/Object;
.source "TunerCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/TunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RunnableThrowingRemoteException"
.end annotation


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
