.class Lcom/android/server/location/LocationProviderProxy$5;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$fd:Ljava/io/FileDescriptor;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/location/LocationProviderProxy;

    .line 235
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$5;->this$0:Lcom/android/server/location/LocationProviderProxy;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy$5;->val$fd:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/server/location/LocationProviderProxy$5;->val$args:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy$5;->val$pw:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 238
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 240
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    :try_start_4
    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$5;->val$fd:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy$5;->val$args:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 243
    goto :goto_27

    .line 241
    :catch_10
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$5;->val$pw:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dump location provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method
