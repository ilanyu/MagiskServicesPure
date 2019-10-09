.class Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombiningRewriter"
.end annotation


# instance fields
.field private final mCollection:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsCollection;)V
    .registers 3
    .param p1, "collection"    # Lcom/android/server/net/NetworkStatsCollection;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const-string/jumbo v0, "missing NetworkStatsCollection"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsCollection;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    .line 379
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    .line 389
    return-void
.end method

.method public reset()V
    .registers 1

    .line 384
    return-void
.end method

.method public shouldWrite()Z
    .registers 2

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutputStream;)V

    .line 399
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$CombiningRewriter;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 400
    return-void
.end method
