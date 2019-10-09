.class final Lcom/android/server/job/JobStore$JobSet;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobSet"
.end annotation


# instance fields
.field final mJobs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field final mJobsPerSourceUid:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 1037
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 1038
    return-void
.end method

.method static synthetic lambda$removeJobsOfNonUsers$0([ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "whitelist"    # [I
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1116
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$removeJobsOfNonUsers$1([ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "whitelist"    # [I
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1118
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private removeAll(Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1123
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "jobSetIndex":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 1124
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1125
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "jobIndex":I
    :goto_18
    if-ltz v2, :cond_2c

    .line 1126
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1127
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1125
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1130
    .end local v2    # "jobIndex":I
    :cond_2c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_37

    .line 1131
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1123
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1134
    .end local v0    # "jobSetIndex":I
    :cond_3a
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "jobSetIndex":I
    :goto_42
    if-ltz v0, :cond_74

    .line 1135
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1136
    .restart local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "jobIndex":I
    :goto_52
    if-ltz v2, :cond_66

    .line 1137
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1138
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 1136
    :cond_63
    add-int/lit8 v2, v2, -0x1

    goto :goto_52

    .line 1141
    .end local v2    # "jobIndex":I
    :cond_66
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_71

    .line 1142
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1134
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_71
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 1145
    .end local v0    # "jobSetIndex":I
    :cond_74
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 11
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1065
    .local v0, "uid":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    .line 1066
    .local v1, "sourceUid":I
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1067
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v2, :cond_1d

    .line 1068
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 1069
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1071
    :cond_1d
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1072
    .local v3, "jobsForSourceUid":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v3, :cond_32

    .line 1073
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v4

    .line 1074
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1076
    :cond_32
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1077
    .local v4, "added":Z
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1078
    .local v5, "addedInSource":Z
    if-eq v4, v5, :cond_5b

    .line 1079
    const-string v6, "JobStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mJobs and mJobsPerSourceUid mismatch; caller= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " source= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_5b
    if-nez v4, :cond_62

    if-eqz v5, :cond_60

    goto :goto_62

    :cond_60
    const/4 v6, 0x0

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v6, 0x1

    :goto_63
    return v6
.end method

.method public clear()V
    .registers 2

    .line 1184
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1185
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1186
    return-void
.end method

.method public contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1148
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1149
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1150
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public countJobsForUid(I)I
    .registers 8
    .param p1, "uid"    # I

    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, "total":I
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1201
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_28

    .line 1202
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_28

    .line 1203
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1204
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    if-ne v4, v5, :cond_25

    .line 1205
    add-int/lit8 v0, v0, 0x1

    .line 1202
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 1209
    .end local v2    # "i":I
    :cond_28
    return v0
.end method

.method public forEachJob(ILjava/util/function/Consumer;)V
    .registers 6
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1228
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1229
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_1e

    .line 1230
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1e

    .line 1231
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1230
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1234
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1214
    .local p1, "filterPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_8
    if-ltz v0, :cond_33

    .line 1215
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1216
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_30

    .line 1217
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_30

    .line 1218
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1219
    .local v3, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    if-eqz p1, :cond_2a

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1220
    :cond_2a
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1217
    .end local v3    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 1214
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1225
    .end local v0    # "uidIndex":I
    :cond_33
    return-void
.end method

.method public forEachJobForSourceUid(ILjava/util/function/Consumer;)V
    .registers 6
    .param p1, "sourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1237
    .local p2, "functor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1238
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_1e

    .line 1239
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_1e

    .line 1240
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1239
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1243
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public get(II)Lcom/android/server/job/controllers/JobStatus;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 1154
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1155
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_22

    .line 1156
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_22

    .line 1157
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 1158
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    if-ne v3, p2, :cond_1f

    .line 1159
    return-object v2

    .line 1156
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1163
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAllJobs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1169
    .local v0, "allJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_34

    .line 1170
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1171
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_31

    .line 1175
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_23
    if-ltz v3, :cond_31

    .line 1176
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 1169
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "j":I
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 1180
    .end local v1    # "i":I
    :cond_34
    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .local v0, "matchingJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1043
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_12

    .line 1044
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1046
    :cond_12
    return-object v0
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_2b

    .line 1053
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_28

    .line 1054
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1055
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_28

    .line 1056
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1052
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1060
    .end local v1    # "i":I
    :cond_2b
    return-object v0
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 13
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1086
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 1087
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1088
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 1089
    .local v2, "sourceUid":I
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1090
    .local v3, "jobsForSourceUid":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v4

    .line 1091
    .local v6, "didRemove":Z
    :goto_25
    if-eqz v3, :cond_2f

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    move v7, v5

    goto :goto_30

    :cond_2f
    move v7, v4

    .line 1092
    .local v7, "sourceRemove":Z
    :goto_30
    if-eq v6, v7, :cond_50

    .line 1093
    const-string v8, "JobStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Job presence mismatch; caller="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " source="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_50
    if-nez v6, :cond_56

    if-eqz v7, :cond_55

    goto :goto_56

    .line 1106
    :cond_55
    return v4

    .line 1098
    :cond_56
    :goto_56
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_63

    .line 1099
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1101
    :cond_63
    if-eqz v3, :cond_70

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_70

    .line 1102
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1104
    :cond_70
    return v5
.end method

.method public removeJobsOfNonUsers([I)V
    .registers 5
    .param p1, "whitelist"    # [I

    .line 1115
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobStore$JobSet$D9839QVHHu4X-hnxouyIMkP5NWA;

    .local v0, "noSourceUser":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v0, p1}, Lcom/android/server/job/-$$Lambda$JobStore$JobSet$D9839QVHHu4X-hnxouyIMkP5NWA;-><init>([I)V

    .line 1117
    new-instance v1, Lcom/android/server/job/-$$Lambda$JobStore$JobSet$id1Y3Yh8Y9sEb-njlNCUNay6U9k;

    .local v1, "noCallingUser":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v1, p1}, Lcom/android/server/job/-$$Lambda$JobStore$JobSet$id1Y3Yh8Y9sEb-njlNCUNay6U9k;-><init>([I)V

    .line 1119
    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/job/JobStore$JobSet;->removeAll(Ljava/util/function/Predicate;)V

    .line 1120
    return-void
.end method

.method public size()I
    .registers 4

    .line 1189
    const/4 v0, 0x0

    .line 1190
    .local v0, "total":I
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 1191
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1190
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1193
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method
