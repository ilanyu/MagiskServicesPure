.class final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field private final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 2

    .line 1749
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1750
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/print/UserState;
    .param p2, "x1"    # Lcom/android/server/print/UserState$1;

    .line 1749
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 1749
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 20
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    move-object/from16 v0, p0

    .line 1843
    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1844
    .local v8, "bucketCount":I
    const/4 v1, 0x0

    .line 1844
    .local v1, "i":I
    :goto_b
    move v10, v1

    .line 1844
    .end local v1    # "i":I
    .local v10, "i":I
    if-ge v10, v8, :cond_64

    .line 1845
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 1846
    .local v11, "appId":I
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    .line 1847
    .local v12, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 1848
    .local v13, "printJobCount":I
    const/4 v1, 0x0

    .line 1848
    .local v1, "j":I
    :goto_22
    move v14, v1

    .line 1848
    .end local v1    # "j":I
    .local v14, "j":I
    if-ge v14, v13, :cond_5f

    .line 1849
    const-string v1, "cached_print_jobs"

    const-wide v2, 0x20b00000005L

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1852
    .local v4, "token":J
    const-string v1, "app_id"

    const-wide v2, 0x10500000001L

    invoke-virtual {v7, v1, v2, v3, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1854
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/print/UserState;->access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "print_job"

    const-wide v15, 0x10b00000002L

    .line 1855
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/print/PrintJobInfo;

    .line 1854
    move-object v2, v7

    move/from16 v17, v10

    move-wide v9, v4

    move-wide v4, v15

    .line 1854
    .end local v4    # "token":J
    .end local v10    # "i":I
    .local v9, "token":J
    .local v17, "i":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/print/DumpUtils;->writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V

    .line 1857
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1848
    .end local v9    # "token":J
    add-int/lit8 v1, v14, 0x1

    .line 1848
    .end local v14    # "j":I
    .restart local v1    # "j":I
    move/from16 v10, v17

    goto :goto_22

    .line 1844
    .end local v1    # "j":I
    .end local v11    # "appId":I
    .end local v12    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v13    # "printJobCount":I
    .end local v17    # "i":I
    .restart local v10    # "i":I
    :cond_5f
    move/from16 v17, v10

    .line 1844
    .end local v10    # "i":I
    .restart local v17    # "i":I
    add-int/lit8 v1, v17, 0x1

    .line 1844
    .end local v17    # "i":I
    .local v1, "i":I
    goto :goto_b

    .line 1860
    .end local v1    # "i":I
    :cond_64
    return-void
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 1798
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1799
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1800
    .local v1, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1801
    monitor-exit v0

    return-object v2

    .line 1803
    :cond_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 1804
    .local v3, "printJobCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_30

    .line 1805
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    .line 1806
    .local v5, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1807
    monitor-exit v0

    return-object v5

    .line 1804
    .end local v5    # "printJob":Landroid/print/PrintJobInfo;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1810
    .end local v1    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "printJobCount":I
    .end local v4    # "i":I
    :cond_30
    monitor-exit v0

    .line 1811
    return-object v2

    .line 1810
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .registers 8
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1816
    const/4 v1, 0x0

    .line 1817
    .local v1, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    const/4 v2, -0x2

    if-ne p1, v2, :cond_2d

    .line 1818
    :try_start_b
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1819
    .local v2, "bucketCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_2a

    .line 1820
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1821
    .local v4, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v1, :cond_24

    .line 1822
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 1824
    :cond_24
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1819
    .end local v4    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1826
    .end local v2    # "bucketCount":I
    .end local v3    # "i":I
    :cond_2a
    goto :goto_42

    .line 1839
    .end local v1    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_2b
    move-exception v1

    goto :goto_4c

    .line 1827
    .restart local v1    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_2d
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1828
    .local v2, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v2, :cond_42

    .line 1829
    if-nez v1, :cond_3f

    .line 1830
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 1832
    :cond_3f
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1835
    .end local v2    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_42
    :goto_42
    if-eqz v1, :cond_46

    .line 1836
    monitor-exit v0

    return-object v1

    .line 1838
    :cond_46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1839
    .end local v1    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_2b

    throw v1
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .registers 7
    .param p1, "creator"    # Landroid/os/IBinder;
    .param p2, "appId"    # I
    .param p3, "printJob"    # Landroid/print/PrintJobInfo;

    .line 1756
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_2f

    .line 1768
    nop

    .line 1769
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1770
    :try_start_11
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1771
    .local v0, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v0, :cond_26

    .line 1772
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 1773
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1775
    :cond_26
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    .end local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    monitor-exit v1

    .line 1777
    const/4 v0, 0x1

    return v0

    .line 1776
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2c

    throw v0

    .line 1765
    :catch_2f
    move-exception v1

    .line 1767
    .local v1, "re":Landroid/os/RemoteException;
    return v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 9
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 1781
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1782
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 1783
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v2

    .line 1782
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1784
    .local v1, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v1, :cond_17

    .line 1785
    monitor-exit v0

    return-void

    .line 1787
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1788
    .local v2, "printJobCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_38

    .line 1789
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 1790
    .local v4, "oldPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v5

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1791
    invoke-interface {v1, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1788
    .end local v4    # "oldPrintJob":Landroid/print/PrintJobInfo;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1794
    .end local v1    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v2    # "printJobCount":I
    .end local v3    # "i":I
    :cond_38
    monitor-exit v0

    .line 1795
    return-void

    .line 1794
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v1
.end method
