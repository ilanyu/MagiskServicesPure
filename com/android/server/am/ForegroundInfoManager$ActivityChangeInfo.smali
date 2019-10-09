.class Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;
.super Ljava/lang/Object;
.source "ForegroundInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ForegroundInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityChangeInfo"
.end annotation


# instance fields
.field callingPid:I

.field targetActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field targetPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ForegroundInfoManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ForegroundInfoManager;ILjava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ForegroundInfoManager;
    .param p2, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p3, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->this$0:Lcom/android/server/am/ForegroundInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->callingPid:I

    .line 51
    iput-object p3, p0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    .line 52
    iput-object p4, p0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityChangeInfo{callingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->callingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
