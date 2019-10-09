.class Lcom/android/server/location/RemoteListenerHelper$1;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field registrationState:I

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/RemoteListenerHelper;

    .line 186
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 190
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z
    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 191
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    .line 192
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget v1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    # setter for: Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z
    invoke-static {v0, v1}, Lcom/android/server/location/RemoteListenerHelper;->access$002(Lcom/android/server/location/RemoteListenerHelper;Z)Z

    .line 194
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z
    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 196
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$300(Lcom/android/server/location/RemoteListenerHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/RemoteListenerHelper$1$1;-><init>(Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :cond_32
    return-void
.end method
