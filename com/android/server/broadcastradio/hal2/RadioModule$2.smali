.class Lcom/android/server/broadcastradio/hal2/RadioModule$2;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field final synthetic val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 125
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle;

    invoke-interface {v0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle;->close()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 131
    goto :goto_12

    .line 129
    :catch_a
    move-exception v0

    .line 130
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "BcRadio2Srv.module"

    const-string v2, "Failed closing announcement listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
