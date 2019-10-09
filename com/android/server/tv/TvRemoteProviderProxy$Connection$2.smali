.class Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 317
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;->this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;->this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    iget-object v0, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;->this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    # invokes: Lcom/android/server/tv/TvRemoteProviderProxy;->onConnectionDied(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    invoke-static {v0, v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$300(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    .line 321
    return-void
.end method
