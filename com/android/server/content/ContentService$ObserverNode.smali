.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 1452
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 1453
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/ContentService$ObserverNode;

    .line 1400
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 28
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"    # Z
    .param p5, "observersLock"    # Ljava/lang/Object;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .param p8, "userHandle"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 1517
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    if-ne v9, v0, :cond_23

    .line 1518
    iget-object v10, v8, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v0, v11

    move-object v1, v8

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    return-void

    .line 1524
    :cond_23
    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "segment":Ljava/lang/String;
    if-eqz v0, :cond_79

    .line 1528
    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1529
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_5a

    .line 1530
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1531
    .local v3, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1532
    add-int/lit8 v12, v9, 0x1

    move-object v10, v3

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-direct/range {v10 .. v18}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1534
    return-void

    .line 1529
    .end local v3    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1539
    .end local v2    # "i":I
    :cond_5a
    new-instance v2, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v2, v0}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    add-int/lit8 v12, v9, 0x1

    move-object v10, v2

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    invoke-direct/range {v10 .. v18}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1543
    return-void

    .line 1526
    .end local v1    # "N":I
    .end local v2    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") used for observer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .registers 16
    .param p1, "leaf"    # Z
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .line 1577
    .local p6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1578
    .local v0, "N":I
    if-nez p2, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1579
    .local v1, "observerBinder":Landroid/os/IBinder;
    :goto_e
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_10
    if-ge v3, v0, :cond_5c

    .line 1580
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1584
    .local v4, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    move v5, v2

    .line 1585
    .local v5, "selfChange":Z
    :goto_25
    if-eqz v5, :cond_2a

    if-nez p3, :cond_2a

    .line 1586
    goto :goto_59

    .line 1590
    :cond_2a
    const/4 v6, -0x1

    if-eq p5, v6, :cond_39

    .line 1591
    # getter for: Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I
    invoke-static {v4}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$300(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v7

    if-eq v7, v6, :cond_39

    .line 1592
    # getter for: Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I
    invoke-static {v4}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$300(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v6

    if-ne p5, v6, :cond_59

    .line 1594
    :cond_39
    if-eqz p1, :cond_44

    .line 1598
    and-int/lit8 v6, p4, 0x2

    if-eqz v6, :cond_49

    iget-boolean v6, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v6, :cond_49

    .line 1602
    goto :goto_59

    .line 1607
    :cond_44
    iget-boolean v6, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v6, :cond_49

    .line 1610
    goto :goto_59

    .line 1616
    :cond_49
    new-instance v6, Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v7, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v8, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1617
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v6, p0, v7, v5, v8}, Lcom/android/server/content/ContentService$ObserverCall;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZI)V

    .line 1616
    invoke-virtual {p6, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    .end local v4    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v5    # "selfChange":Z
    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1620
    .end local v3    # "i":I
    :cond_5c
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1499
    if-nez p1, :cond_4

    .line 1500
    const/4 v0, 0x0

    return v0

    .line 1502
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I

    .line 1487
    if-eqz p1, :cond_16

    .line 1488
    if-nez p2, :cond_9

    .line 1489
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1491
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1494
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # I

    .line 1509
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1511
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .registers 27
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "flags"    # I
    .param p6, "targetUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .local p7, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1628
    const/4 v9, 0x0

    .line 1629
    .local v9, "segment":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v10

    .line 1630
    .local v10, "segmentCount":I
    if-lt v8, v10, :cond_1b

    .line 1633
    const/4 v1, 0x1

    move-object v0, v7

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    goto :goto_30

    .line 1635
    :cond_1b
    if-ge v8, v10, :cond_30

    .line 1636
    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 1640
    const/4 v1, 0x0

    move-object v0, v7

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 1644
    :cond_30
    :goto_30
    iget-object v0, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1645
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    if-ge v1, v0, :cond_63

    .line 1646
    iget-object v2, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1647
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v9, :cond_4b

    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1649
    :cond_4b
    add-int/lit8 v13, v8, 0x1

    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 1651
    if-eqz v9, :cond_60

    .line 1652
    goto :goto_63

    .line 1645
    .end local v2    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1656
    .end local v1    # "i":I
    :cond_63
    :goto_63
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "counts"    # [I
    .param p7, "pidCounts"    # Landroid/util/SparseIntArray;

    move-object v0, p0

    move-object/from16 v1, p4

    .line 1457
    const/4 v2, 0x0

    .line 1458
    .local v2, "innerName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v3, :cond_56

    .line 1459
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1460
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_2f

    .line 1462
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1464
    :goto_2f
    move v3, v10

    .local v3, "i":I
    :goto_30
    move v12, v3

    .end local v3    # "i":I
    .local v12, "i":I
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_56

    .line 1465
    aget v3, p6, v11

    add-int/2addr v3, v11

    aput v3, p6, v11

    .line 1466
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1464
    add-int/lit8 v3, v12, 0x1

    .end local v12    # "i":I
    .restart local v3    # "i":I
    goto :goto_30

    .line 1470
    .end local v3    # "i":I
    :cond_56
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ab

    .line 1471
    if-nez v2, :cond_81

    .line 1472
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1473
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_81

    .line 1475
    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1478
    .end local v2    # "innerName":Ljava/lang/String;
    .local v12, "innerName":Ljava/lang/String;
    :cond_81
    :goto_81
    move-object v12, v2

    move v2, v10

    .local v2, "i":I
    :goto_83
    move v13, v2

    .end local v2    # "i":I
    .local v13, "i":I
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_ac

    .line 1479
    aget v2, p6, v10

    add-int/2addr v2, v11

    aput v2, p6, v10

    .line 1480
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v12

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 1478
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .restart local v2    # "i":I
    goto :goto_83

    .line 1484
    .end local v12    # "innerName":Ljava/lang/String;
    .local v2, "innerName":Ljava/lang/String;
    :cond_ab
    move-object v12, v2

    .end local v2    # "innerName":Ljava/lang/String;
    .restart local v12    # "innerName":Ljava/lang/String;
    :cond_ac
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .registers 9
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 1546
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1547
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "size":I
    :goto_9
    const/4 v3, 0x1

    if-ge v0, v2, :cond_25

    .line 1548
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v4, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v4

    .line 1549
    .local v4, "empty":Z
    if-eqz v4, :cond_23

    .line 1550
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1551
    add-int/lit8 v0, v0, -0x1

    .line 1552
    add-int/lit8 v2, v2, -0x1

    .line 1547
    .end local v4    # "empty":Z
    :cond_23
    add-int/2addr v0, v3

    goto :goto_9

    .line 1556
    .end local v0    # "i":I
    :cond_25
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1557
    .local v0, "observerBinder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1558
    move v4, v1

    .local v4, "i":I
    :goto_30
    if-ge v4, v2, :cond_4e

    .line 1559
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1560
    .local v5, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v6, v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_4b

    .line 1561
    iget-object v6, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1563
    invoke-interface {v0, v5, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1564
    goto :goto_4e

    .line 1558
    .end local v5    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1568
    .end local v4    # "i":I
    :cond_4e
    :goto_4e
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5f

    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5f

    .line 1569
    return v3

    .line 1571
    :cond_5f
    return v1
.end method
