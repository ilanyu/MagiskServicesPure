.class Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "InstantAppResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 341
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;->this$0:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    const-string v0, "android.app.extra.RESOLVE_INFO"

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 347
    .local v0, "resolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/InstantAppResolveInfo;>;"
    const-string v1, "android.app.extra.SEQUENCE"

    .line 348
    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 349
    .local v1, "sequence":I
    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;->this$0:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    # invokes: Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V
    invoke-static {v2, v0, v1}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->access$700(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;Ljava/lang/Object;I)V

    .line 350
    return-void
.end method
