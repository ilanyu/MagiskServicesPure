.class final Lcom/android/server/media/MediaRouterService$UserRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UserRecord"
.end annotation


# instance fields
.field public final mClientRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

.field public mRouterState:Landroid/media/MediaRouterClientState;

.field public final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;
    .param p2, "userId"    # I

    .line 731
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 732
    iput p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 733
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/media/MediaRouterService$UserHandler;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 734
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "indent":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 741
    .local v1, "clientCount":I
    if-eqz v1, :cond_3c

    .line 742
    const/4 v2, 0x0

    .line 742
    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_50

    .line 743
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 742
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 746
    .end local v2    # "i":I
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<no clients>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "State"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mRouterState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    new-instance v3, Lcom/android/server/media/MediaRouterService$UserRecord$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/media/MediaRouterService$UserRecord$1;-><init>(Lcom/android/server/media/MediaRouterService$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<could not dump handler state>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    :cond_a1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
