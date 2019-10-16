.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z = false

.field private static final localVerificationLOGV:Z = false

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 828
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 852
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 861
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 866
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 872
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 877
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 10
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 572
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 573
    .local v0, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 574
    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v0

    .line 575
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    aput-object p3, v0, v2

    goto :goto_35

    .line 578
    :cond_14
    array-length v3, v0

    .line 579
    .local v3, "N":I
    move v4, v3

    .line 580
    .local v4, "i":I
    :goto_16
    if-lez v4, :cond_21

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    if-nez v5, :cond_21

    .line 581
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 583
    :cond_21
    if-ge v4, v3, :cond_26

    .line 584
    aput-object p3, v0, v4

    goto :goto_35

    .line 586
    :cond_26
    mul-int/lit8 v5, v3, 0x3

    div-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 587
    .local v1, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    aput-object p3, v1, v3

    .line 589
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v1    # "newa":[Landroid/content/IntentFilter;, "[TF;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :goto_35
    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .registers 32
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 726
    move/from16 v3, p9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 727
    .local v11, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 728
    .local v12, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    .line 730
    .local v13, "packageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/PreventRunningUtils;->isExcludingStopped(Landroid/content/Intent;)Z

    move-result v14

    .line 734
    .local v14, "excludingStopped":Z
    if-eqz p3, :cond_2a

    .line 735
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const-string v6, "IntentResolver"

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 736
    .local v4, "logPrinter":Landroid/util/Printer;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    .line 739
    .end local v4    # "logPrinter":Landroid/util/Printer;
    .local v5, "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "logPrinter":Landroid/util/Printer;
    :goto_28
    move-object v10, v4

    goto :goto_2d

    .line 738
    .end local v5    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    :cond_2a
    const/4 v4, 0x0

    .line 739
    .restart local v4    # "logPrinter":Landroid/util/Printer;
    const/4 v5, 0x0

    goto :goto_28

    .line 739
    .end local v4    # "logPrinter":Landroid/util/Printer;
    .restart local v5    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    :goto_2d
    move-object v9, v5

    .line 742
    .end local v5    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v9, "logPrintWriter":Ljava/io/PrintWriter;
    const/4 v15, 0x0

    if-eqz v1, :cond_33

    array-length v4, v1

    goto :goto_34

    :cond_33
    move v4, v15

    :goto_34
    move v8, v4

    .line 743
    .local v8, "N":I
    const/4 v4, 0x0

    .line 746
    .local v4, "hasNonDefaults":Z
    move/from16 v16, v4

    move v4, v15

    .line 746
    .local v4, "i":I
    .local v16, "hasNonDefaults":Z
    :goto_39
    move v7, v4

    .line 746
    .end local v4    # "i":I
    .local v7, "i":I
    if-ge v7, v8, :cond_1be

    aget-object v4, v1, v7

    move-object v6, v4

    .line 746
    .local v6, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v4, :cond_1be

    .line 748
    if-eqz p3, :cond_59

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matching against filter "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_59
    if-eqz v14, :cond_79

    invoke-virtual {v0, v6, v3}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 751
    if-eqz p3, :cond_6a

    .line 752
    const-string v1, "IntentResolver"

    const-string v4, "  Filter\'s target is stopped; skipping"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v7    # "i":I
    .end local v8    # "N":I
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v13, "logPrinter":Landroid/util/Printer;
    .local v17, "i":I
    .local v18, "N":I
    .local v19, "action":Ljava/lang/String;
    .local v20, "data":Landroid/net/Uri;
    .local v21, "packageName":Ljava/lang/String;
    :cond_6a
    :goto_6a
    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v11, v6

    :goto_75
    move-object v12, v9

    move-object v13, v10

    goto/16 :goto_1ad

    .line 758
    .end local v17    # "i":I
    .end local v18    # "N":I
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "data":Landroid/net/Uri;
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v7    # "i":I
    .restart local v8    # "N":I
    .restart local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    :cond_79
    if-eqz v13, :cond_9f

    invoke-virtual {v0, v13, v6}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 759
    if-eqz p3, :cond_6a

    .line 760
    const-string v1, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter is not from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 766
    :cond_9f
    invoke-virtual {v6}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 767
    if-eqz p3, :cond_f1

    .line 768
    const-string v1, "IntentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter verified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lcom/android/server/IntentResolver;->isFilterVerified(Landroid/content/IntentFilter;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 770
    .local v1, "authorities":I
    move v4, v15

    .line 770
    .local v4, "z":I
    :goto_c6
    if-ge v4, v1, :cond_f1

    .line 771
    const-string v5, "IntentResolver"

    move/from16 v17, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 771
    .end local v1    # "authorities":I
    .local v17, "authorities":I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v7

    const-string v7, "   "

    .line 771
    .end local v7    # "i":I
    .local v18, "i":I
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move/from16 v7, v18

    goto :goto_c6

    .line 777
    .end local v4    # "z":I
    .end local v17    # "authorities":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_f1
    move/from16 v18, v7

    .line 777
    .end local v7    # "i":I
    .restart local v18    # "i":I
    invoke-virtual {v0, v6, v2}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 778
    if-eqz p3, :cond_102

    .line 779
    const-string v1, "IntentResolver"

    const-string v4, "  Filter\'s target already added"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v8    # "N":I
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v13, "logPrinter":Landroid/util/Printer;
    .local v17, "i":I
    .local v18, "N":I
    .restart local v19    # "action":Ljava/lang/String;
    .restart local v20    # "data":Landroid/net/Uri;
    .restart local v21    # "packageName":Ljava/lang/String;
    :cond_102
    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move/from16 v17, v18

    move-object v11, v6

    move/from16 v18, v8

    goto/16 :goto_75

    .line 784
    .end local v17    # "i":I
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "data":Landroid/net/Uri;
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v8    # "N":I
    .restart local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    .local v18, "i":I
    :cond_10f
    const-string v1, "IntentResolver"

    move-object v4, v6

    move-object v5, v11

    move-object v7, v6

    move-object/from16 v6, p5

    .line 784
    .end local v6    # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v7, "filter":Landroid/content/IntentFilter;, "TF;"
    move-object/from16 v19, v11

    move/from16 v17, v18

    move-object v11, v7

    move-object/from16 v7, p6

    .line 784
    .end local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v18    # "i":I
    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v17    # "i":I
    .restart local v19    # "action":Ljava/lang/String;
    move/from16 v18, v8

    move-object v8, v12

    .line 784
    .end local v8    # "N":I
    .local v18, "N":I
    move-object/from16 v20, v12

    move-object v12, v9

    move-object/from16 v9, p2

    .line 784
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v20    # "data":Landroid/net/Uri;
    move-object/from16 v21, v13

    move-object v13, v10

    move-object v10, v1

    .line 784
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .local v13, "logPrinter":Landroid/util/Printer;
    .restart local v21    # "packageName":Ljava/lang/String;
    invoke-static/range {v4 .. v10}, Lcom/android/server/am/PreventRunningUtils;->match(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 785
    .local v1, "match":I
    if-ltz v1, :cond_181

    .line 786
    if-eqz p3, :cond_159

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.intent.category.DEFAULT"

    .line 788
    invoke-virtual {v11, v6}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 786
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_159
    if-eqz p4, :cond_168

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_164

    goto :goto_168

    .line 800
    :cond_164
    const/4 v5, 0x1

    .line 746
    .end local v16    # "hasNonDefaults":Z
    .local v5, "hasNonDefaults":Z
    move/from16 v16, v5

    goto :goto_1ad

    .line 790
    .end local v5    # "hasNonDefaults":Z
    .restart local v16    # "hasNonDefaults":Z
    :cond_168
    :goto_168
    invoke-virtual {v0, v11, v1, v3}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v5

    .line 791
    .local v5, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz v5, :cond_180

    .line 792
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    if-eqz p3, :cond_180

    .line 794
    const-string v6, "    "

    invoke-virtual {v0, v12, v6, v11}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 795
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 796
    const-string v6, "    "

    invoke-virtual {v11, v13, v6}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 799
    .end local v5    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_180
    goto :goto_1ad

    .line 803
    :cond_181
    if-eqz p3, :cond_1ad

    .line 805
    packed-switch v1, :pswitch_data_1ee

    .line 810
    const-string/jumbo v5, "unknown reason"

    goto :goto_196

    .line 809
    :pswitch_18a
    const-string/jumbo v5, "type"

    goto :goto_196

    .line 808
    :pswitch_18e
    const-string v5, "data"

    goto :goto_196

    .line 806
    :pswitch_191
    const-string v5, "action"

    goto :goto_196

    .line 807
    :pswitch_194
    const-string v5, "category"

    .line 810
    .local v5, "reason":Ljava/lang/String;
    :goto_196
    nop

    .line 812
    const-string v6, "IntentResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Filter did not match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v1    # "match":I
    .end local v5    # "reason":Ljava/lang/String;
    :cond_1ad
    :goto_1ad
    add-int/lit8 v1, v17, 0x1

    .line 746
    .end local v17    # "i":I
    .local v1, "i":I
    move v4, v1

    move-object v9, v12

    move-object v10, v13

    move/from16 v8, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v1, p7

    goto/16 :goto_39

    .line 817
    .end local v1    # "i":I
    .end local v18    # "N":I
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "data":Landroid/net/Uri;
    .end local v21    # "packageName":Ljava/lang/String;
    .local v7, "i":I
    .restart local v8    # "N":I
    .restart local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    :cond_1be
    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object v12, v9

    move-object v13, v10

    .line 817
    .end local v7    # "i":I
    .end local v8    # "N":I
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .end local v11    # "action":Ljava/lang/String;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v13, "logPrinter":Landroid/util/Printer;
    .restart local v17    # "i":I
    .restart local v18    # "N":I
    .restart local v19    # "action":Ljava/lang/String;
    .restart local v20    # "data":Landroid/net/Uri;
    .restart local v21    # "packageName":Ljava/lang/String;
    if-eqz p3, :cond_1ec

    if-eqz v16, :cond_1ec

    .line 818
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1dd

    .line 819
    const-string v1, "IntentResolver"

    const-string/jumbo v5, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ec

    .line 820
    :cond_1dd
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_1ec

    .line 821
    const-string v1, "IntentResolver"

    const-string/jumbo v5, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1ec
    :goto_1ec
    return-void

    nop

    :pswitch_data_1ee
    .packed-switch -0x4
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18a
    .end packed-switch
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 7
    .param p2, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v0, 0x0

    .line 151
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_20

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 153
    aget-object v2, p1, v1

    .line 154
    .local v2, "cur":Landroid/content/IntentFilter;, "TF;"
    if-nez v2, :cond_c

    .line 155
    goto :goto_20

    .line 157
    :cond_c
    invoke-static {v2, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 158
    if-nez v0, :cond_1a

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 161
    :cond_1a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v2    # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 165
    .end local v1    # "i":I
    :cond_20
    :goto_20
    return-object v0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 7
    .param p0, "f1"    # Landroid/content/IntentFilter;
    .param p1, "f2"    # Landroid/content/IntentFilter;

    .line 76
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 77
    .local v0, "s1":I
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 78
    .local v1, "s2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 79
    return v2

    .line 81
    :cond_c
    move v3, v2

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1d

    .line 82
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 83
    return v2

    .line 81
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 86
    .end local v3    # "i":I
    :cond_1d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 88
    if-eq v0, v1, :cond_28

    .line 89
    return v2

    .line 91
    :cond_28
    move v3, v2

    .restart local v3    # "i":I
    :goto_29
    if-ge v3, v0, :cond_39

    .line 92
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 93
    return v2

    .line 91
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 96
    .end local v3    # "i":I
    :cond_39
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 98
    if-eq v0, v1, :cond_44

    .line 99
    return v2

    .line 101
    :cond_44
    move v3, v2

    .restart local v3    # "i":I
    :goto_45
    if-ge v3, v0, :cond_55

    .line 102
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 103
    return v2

    .line 101
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 106
    .end local v3    # "i":I
    :cond_55
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 107
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 108
    if-eq v0, v1, :cond_60

    .line 109
    return v2

    .line 111
    :cond_60
    move v3, v2

    .restart local v3    # "i":I
    :goto_61
    if-ge v3, v0, :cond_71

    .line 112
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 113
    return v2

    .line 111
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 116
    .end local v3    # "i":I
    :cond_71
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 118
    if-eq v0, v1, :cond_7c

    .line 119
    return v2

    .line 121
    :cond_7c
    move v3, v2

    .restart local v3    # "i":I
    :goto_7d
    if-ge v3, v0, :cond_8d

    .line 122
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 123
    return v2

    .line 121
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 126
    .end local v3    # "i":I
    :cond_8d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 127
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 128
    if-eq v0, v1, :cond_98

    .line 129
    return v2

    .line 131
    :cond_98
    move v3, v2

    .restart local v3    # "i":I
    :goto_99
    if-ge v3, v0, :cond_a9

    .line 132
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 133
    return v2

    .line 131
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 136
    .end local v3    # "i":I
    :cond_a9
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 137
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 138
    if-eq v0, v1, :cond_b4

    .line 139
    return v2

    .line 141
    :cond_b4
    move v3, v2

    .restart local v3    # "i":I
    :goto_b5
    if-ge v3, v0, :cond_c5

    .line 142
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_c2

    .line 143
    return v2

    .line 141
    :cond_c2
    add-int/lit8 v3, v3, 0x1

    goto :goto_b5

    .line 146
    .end local v3    # "i":I
    :cond_c5
    const/4 v2, 0x1

    return v2
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 717
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 718
    const/4 v1, 0x0

    return-object v1

    .line 720
    :cond_8
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 657
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 658
    return v0

    .line 661
    :cond_4
    nop

    .line 662
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 663
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 664
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 666
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 667
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 668
    :cond_17
    return v0
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 595
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 596
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 597
    return v1

    .line 600
    :cond_8
    move v2, v1

    .line 601
    .local v2, "num":I
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 602
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 603
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 605
    move-object v4, v3

    .line 606
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 607
    .local v5, "slashpos":I
    if-lez v5, :cond_29

    .line 608
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    .line 610
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    :goto_3a
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 615
    if-lez v5, :cond_47

    .line 616
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_4c

    .line 618
    :cond_47
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 620
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_4c
    goto :goto_9

    .line 622
    :cond_4d
    return v2
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 689
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 690
    .local v0, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v0, :cond_46

    .line 691
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 692
    .local v1, "LAST":I
    :goto_b
    if-ltz v1, :cond_14

    aget-object v2, v0, v1

    if-nez v2, :cond_14

    .line 693
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 695
    :cond_14
    move v2, v1

    .local v1, "idx":I
    .local v2, "LAST":I
    :goto_15
    if-ltz v1, :cond_2c

    .line 696
    aget-object v3, v0, v1

    if-ne v3, p3, :cond_29

    .line 697
    sub-int v3, v2, v1

    .line 698
    .local v3, "remain":I
    if-lez v3, :cond_24

    .line 699
    add-int/lit8 v4, v1, 0x1

    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    :cond_24
    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 702
    add-int/lit8 v2, v2, -0x1

    .line 695
    .end local v3    # "remain":I
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 705
    .end local v1    # "idx":I
    :cond_2c
    if-gez v2, :cond_32

    .line 706
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 707
    :cond_32
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_46

    .line 708
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 709
    .local v1, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .end local v1    # "newa":[Landroid/content/IntentFilter;, "[TF;"
    .end local v2    # "LAST":I
    :cond_46
    :goto_46
    return-void
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 7
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 673
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 674
    return v0

    .line 677
    :cond_4
    nop

    .line 678
    .local v0, "num":I
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 679
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 680
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 682
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_5

    .line 684
    :cond_17
    return v0
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .registers 11
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 626
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 627
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 628
    return v1

    .line 631
    :cond_8
    move v2, v1

    .line 632
    .local v2, "num":I
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 633
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 634
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 636
    move-object v4, v3

    .line 637
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 638
    .local v5, "slashpos":I
    if-lez v5, :cond_29

    .line 639
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    .line 641
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    :goto_3a
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 646
    if-lez v5, :cond_47

    .line 647
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4c

    .line 649
    :cond_47
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_4c
    goto :goto_9

    .line 652
    :cond_4d
    return v2
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "numS":I
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "numT":I
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 66
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 69
    :cond_26
    if-eqz v1, :cond_33

    .line 70
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 73
    :cond_33
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 22
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z
    .param p6, "collapseDuplicates"    # Z

    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    move-object v9, p0

    move-object/from16 v10, p3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 314
    .local v14, "curPrefix":Ljava/lang/String;
    const-string v3, "Full MIME Types:"

    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 316
    move-object v0, v12

    .line 318
    .end local v14    # "curPrefix":Ljava/lang/String;
    .local v0, "curPrefix":Ljava/lang/String;
    move-object v14, v0

    .end local v0    # "curPrefix":Ljava/lang/String;
    .restart local v14    # "curPrefix":Ljava/lang/String;
    :cond_52
    const-string v3, "Base MIME Types:"

    iget-object v5, v9, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 320
    move-object v0, v12

    .line 322
    .end local v14    # "curPrefix":Ljava/lang/String;
    .restart local v0    # "curPrefix":Ljava/lang/String;
    move-object v14, v0

    .end local v0    # "curPrefix":Ljava/lang/String;
    .restart local v14    # "curPrefix":Ljava/lang/String;
    :cond_69
    const-string v3, "Wild MIME Types:"

    iget-object v5, v9, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 324
    move-object v0, v12

    .line 326
    .end local v14    # "curPrefix":Ljava/lang/String;
    .restart local v0    # "curPrefix":Ljava/lang/String;
    move-object v14, v0

    .end local v0    # "curPrefix":Ljava/lang/String;
    .restart local v14    # "curPrefix":Ljava/lang/String;
    :cond_80
    const-string v3, "Schemes:"

    iget-object v5, v9, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 328
    move-object v0, v12

    .line 330
    .end local v14    # "curPrefix":Ljava/lang/String;
    .restart local v0    # "curPrefix":Ljava/lang/String;
    move-object v14, v0

    .end local v0    # "curPrefix":Ljava/lang/String;
    .restart local v14    # "curPrefix":Ljava/lang/String;
    :cond_97
    const-string v3, "Non-Data Actions:"

    iget-object v5, v9, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 332
    move-object v0, v12

    .line 334
    .end local v14    # "curPrefix":Ljava/lang/String;
    .restart local v0    # "curPrefix":Ljava/lang/String;
    move-object v14, v0

    .end local v0    # "curPrefix":Ljava/lang/String;
    .restart local v14    # "curPrefix":Ljava/lang/String;
    :cond_ae
    const-string v3, "MIME Typed Actions:"

    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 336
    move-object v14, v12

    .line 338
    :cond_c4
    if-ne v14, v12, :cond_c8

    const/4 v0, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    return v0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 560
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 568
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 569
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 34
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "printFilter"    # Z
    .param p8, "collapseDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "eprefix":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "fprefix":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 224
    .local v7, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v8, 0x0

    .line 225
    .local v8, "printedSomething":Z
    const/4 v9, 0x0

    .line 226
    .local v9, "printer":Landroid/util/Printer;
    move-object/from16 v11, p3

    move-object v12, v9

    move v9, v8

    const/4 v8, 0x0

    .end local p3    # "title":Ljava/lang/String;
    .local v8, "mapi":I
    .local v9, "printedSomething":Z
    .local v11, "title":Ljava/lang/String;
    .local v12, "printer":Landroid/util/Printer;
    :goto_38
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v8, v13, :cond_161

    .line 227
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/IntentFilter;

    .line 228
    .local v13, "a":[Landroid/content/IntentFilter;, "[TF;"
    array-length v14, v13

    .line 229
    .local v14, "N":I
    const/4 v15, 0x0

    .line 231
    .local v15, "printedHeader":Z
    if-eqz p8, :cond_e8

    if-nez p7, :cond_e8

    .line 232
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 233
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4f
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v10, v17

    if-ge v10, v14, :cond_a7

    .end local v17    # "i":I
    .local v10, "i":I
    aget-object v16, v13, v10

    move-object/from16 v18, v16

    .local v18, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v16, :cond_a7

    .line 234
    if-eqz v4, :cond_6f

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v2}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v16

    .end local v18    # "filter":Landroid/content/IntentFilter;, "TF;"
    .local v2, "filter":Landroid/content/IntentFilter;, "TF;"
    if-nez v16, :cond_71

    .line 235
    nop

    .line 233
    move-object/from16 v20, v2

    move/from16 v22, v9

    move-object/from16 v19, v11

    move-object/from16 v21, v12

    goto :goto_9c

    .line 237
    .end local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v18    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_6f
    move-object/from16 v2, v18

    .end local v18    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v2    # "filter":Landroid/content/IntentFilter;, "TF;"
    :cond_71
    move-object/from16 v19, v11

    invoke-virtual {v0, v2}, Lcom/android/server/IntentResolver;->filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    move-result-object v11

    .line 238
    .local v11, "label":Ljava/lang/Object;
    .local v19, "title":Ljava/lang/String;
    move-object/from16 v20, v2

    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 239
    .local v2, "index":I
    .local v20, "filter":Landroid/content/IntentFilter;, "TF;"
    move-object/from16 v21, v12

    const/4 v12, 0x1

    .end local v12    # "printer":Landroid/util/Printer;
    .local v21, "printer":Landroid/util/Printer;
    if-gez v2, :cond_8d

    .line 240
    move/from16 v22, v9

    new-instance v9, Landroid/util/MutableInt;

    .end local v9    # "printedSomething":Z
    .local v22, "printedSomething":Z
    invoke-direct {v9, v12}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v11, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 242
    .end local v22    # "printedSomething":Z
    .restart local v9    # "printedSomething":Z
    :cond_8d
    move/from16 v22, v9

    .end local v9    # "printedSomething":Z
    .restart local v22    # "printedSomething":Z
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/MutableInt;

    move/from16 v23, v2

    iget v2, v9, Landroid/util/MutableInt;->value:I

    .end local v2    # "index":I
    .local v23, "index":I
    add-int/2addr v2, v12

    iput v2, v9, Landroid/util/MutableInt;->value:I

    .line 233
    .end local v11    # "label":Ljava/lang/Object;
    .end local v23    # "index":I
    :goto_9c
    add-int/lit8 v16, v10, 0x1

    .end local v10    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v11, v19

    move-object/from16 v12, v21

    move/from16 v9, v22

    move-object/from16 v2, p4

    goto :goto_4f

    .line 245
    .end local v16    # "i":I
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v21    # "printer":Landroid/util/Printer;
    .end local v22    # "printedSomething":Z
    .restart local v9    # "printedSomething":Z
    .local v11, "title":Ljava/lang/String;
    .restart local v12    # "printer":Landroid/util/Printer;
    :cond_a7
    move/from16 v22, v9

    move-object/from16 v19, v11

    move-object/from16 v21, v12

    .end local v9    # "printedSomething":Z
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "printer":Landroid/util/Printer;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v21    # "printer":Landroid/util/Printer;
    .restart local v22    # "printedSomething":Z
    move-object/from16 v9, v19

    const/4 v2, 0x0

    .end local v19    # "title":Ljava/lang/String;
    .local v2, "i":I
    .local v9, "title":Ljava/lang/String;
    :goto_b0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v2, v10, :cond_152

    .line 246
    if-eqz v9, :cond_bf

    .line 247
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const/4 v9, 0x0

    .line 250
    :cond_bf
    if-nez v15, :cond_d4

    .line 251
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const/4 v10, 0x1

    .line 254
    .end local v15    # "printedHeader":Z
    .local v10, "printedHeader":Z
    move v15, v10

    .end local v10    # "printedHeader":Z
    .restart local v15    # "printedHeader":Z
    :cond_d4
    const/16 v22, 0x1

    .line 255
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/MutableInt;

    iget v11, v11, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v6, v10, v11}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 258
    .end local v2    # "i":I
    .end local v21    # "printer":Landroid/util/Printer;
    .end local v22    # "printedSomething":Z
    .local v9, "printedSomething":Z
    .restart local v11    # "title":Ljava/lang/String;
    .restart local v12    # "printer":Landroid/util/Printer;
    :cond_e8
    move/from16 v22, v9

    move-object/from16 v19, v11

    move-object/from16 v21, v12

    .end local v9    # "printedSomething":Z
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "printer":Landroid/util/Printer;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v21    # "printer":Landroid/util/Printer;
    .restart local v22    # "printedSomething":Z
    move-object/from16 v9, v19

    const/4 v2, 0x0

    .end local v19    # "title":Ljava/lang/String;
    .restart local v2    # "i":I
    .local v9, "title":Ljava/lang/String;
    :goto_f1
    if-ge v2, v14, :cond_152

    aget-object v10, v13, v2

    move-object v11, v10

    .local v11, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v10, :cond_152

    .line 259
    if-eqz v4, :cond_101

    invoke-virtual {v0, v4, v11}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v10

    if-nez v10, :cond_101

    .line 260
    goto :goto_14b

    .line 262
    :cond_101
    if-eqz v9, :cond_10a

    .line 263
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    const/4 v9, 0x0

    .line 266
    :cond_10a
    if-nez v15, :cond_11e

    .line 267
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    const/4 v15, 0x1

    .line 270
    :cond_11e
    const/4 v10, 0x1

    .line 271
    .end local v22    # "printedSomething":Z
    .local v10, "printedSomething":Z
    invoke-virtual {v0, v1, v6, v11}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 272
    if-eqz p7, :cond_149

    .line 273
    if-nez v21, :cond_12e

    .line 274
    new-instance v12, Landroid/util/PrintWriterPrinter;

    invoke-direct {v12, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object/from16 v21, v12

    goto :goto_130

    .line 276
    :cond_12e
    move-object/from16 v12, v21

    .end local v21    # "printer":Landroid/util/Printer;
    .restart local v12    # "printer":Landroid/util/Printer;
    :goto_130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 258
    move/from16 v22, v10

    move-object/from16 v21, v12

    goto :goto_14b

    .end local v12    # "printer":Landroid/util/Printer;
    .restart local v21    # "printer":Landroid/util/Printer;
    :cond_149
    move/from16 v22, v10

    .end local v10    # "printedSomething":Z
    .restart local v22    # "printedSomething":Z
    :goto_14b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_f1

    .line 226
    .end local v2    # "i":I
    .end local v11    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v13    # "a":[Landroid/content/IntentFilter;, "[TF;"
    .end local v14    # "N":I
    .end local v15    # "printedHeader":Z
    :cond_152
    move-object v11, v9

    move-object/from16 v12, v21

    move/from16 v9, v22

    .end local v21    # "printer":Landroid/util/Printer;
    .end local v22    # "printedSomething":Z
    .local v9, "printedSomething":Z
    .local v11, "title":Ljava/lang/String;
    .restart local v12    # "printer":Landroid/util/Printer;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    goto/16 :goto_38

    .line 281
    .end local v8    # "mapi":I
    :cond_161
    move/from16 v22, v9

    move-object/from16 v19, v11

    move-object/from16 v21, v12

    .end local v9    # "printedSomething":Z
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "printer":Landroid/util/Printer;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v21    # "printer":Landroid/util/Printer;
    .restart local v22    # "printedSomething":Z
    return v22
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 557
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 564
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const-string v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 171
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 172
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 174
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 175
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_59

    .line 176
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 178
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 180
    :cond_59
    const/4 v0, 0x0

    .line 181
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 182
    .local v2, "cur":Landroid/content/IntentFilter;, "TF;"
    invoke-static {v2, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 183
    if-nez v0, :cond_7a

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 186
    :cond_7a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v2    # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_7d
    goto :goto_60

    .line 189
    :cond_7e
    return-object v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .line 515
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isFilterVerified(Landroid/content/IntentFilter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 531
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 403
    .local v12, "scheme":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 405
    .local v13, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v14, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v14

    :goto_1b
    move v15, v0

    .line 408
    .local v15, "debug":Z
    if-eqz v15, :cond_5b

    const-string v0, "IntentResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " defaultOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 412
    :cond_5b
    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v8, p4

    :goto_61
    const/4 v0, 0x0

    .line 413
    .local v0, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v1, 0x0

    .line 414
    .local v1, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v2, 0x0

    .line 415
    .local v2, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v3, 0x0

    .line 419
    .local v3, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v11, :cond_19c

    .line 420
    const/16 v4, 0x2f

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 421
    .local v4, "slashpos":I
    if-lez v4, :cond_19c

    .line 422
    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "baseType":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16a

    .line 424
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v14, v4, 0x2

    if-ne v6, v14, :cond_e6

    add-int/lit8 v6, v4, 0x1

    .line 425
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0x2a

    if-eq v6, v14, :cond_90

    .line 428
    move-object/from16 v17, v1

    goto :goto_e8

    .line 435
    :cond_90
    iget-object v6, v10, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Landroid/content/IntentFilter;

    .line 436
    if-eqz v15, :cond_b8

    const-string v6, "IntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    const-string v1, "First type cut: "

    .end local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v17, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 437
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_b8
    move-object/from16 v17, v1

    .end local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_ba
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 438
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v15, :cond_e1

    const-string v6, "IntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "Second type cut: "

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 443
    .end local v18    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_e1
    move-object/from16 v18, v0

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v18    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_e3
    move-object/from16 v0, v18

    goto :goto_138

    .line 428
    .end local v18    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_e6
    move-object/from16 v17, v1

    .end local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_e8
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/content/IntentFilter;

    .line 429
    if-eqz v15, :cond_10d

    const-string v1, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "First type cut: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_10d
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 431
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v15, :cond_134

    const-string v6, "IntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, "Second type cut: "

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v19, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 443
    .end local v19    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_134
    move-object/from16 v19, v0

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_136
    move-object/from16 v0, v19

    .end local v19    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_138
    iget-object v6, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v14, "*"

    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, [Landroid/content/IntentFilter;

    .line 444
    if-eqz v15, :cond_162

    const-string v6, "IntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string v0, "Third type cut: "

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v20, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    .line 458
    .end local v4    # "slashpos":I
    .end local v5    # "baseType":Ljava/lang/String;
    .end local v20    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_162
    move-object/from16 v20, v0

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v20    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_164
    move-object/from16 v17, v1

    move-object v14, v2

    move-object/from16 v0, v20

    goto :goto_19f

    .line 445
    .end local v20    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v4    # "slashpos":I
    .restart local v5    # "baseType":Ljava/lang/String;
    :cond_16a
    move-object/from16 v17, v1

    .end local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19e

    .line 449
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/content/IntentFilter;

    .line 450
    if-eqz v15, :cond_19e

    const-string v1, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Typed Action list: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "slashpos":I
    .end local v5    # "baseType":Ljava/lang/String;
    goto :goto_19e

    .line 458
    .end local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_19c
    move-object/from16 v17, v1

    .end local v1    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v17    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_19e
    :goto_19e
    move-object v14, v2

    .end local v2    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v14, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_19f
    if-eqz v12, :cond_1c8

    .line 459
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 460
    .end local v3    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v1, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v15, :cond_1c5

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheme list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1c5
    move-object/from16 v18, v1

    goto :goto_1ca

    .end local v1    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v3    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_1c8
    move-object/from16 v18, v3

    .end local v3    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :goto_1ca
    if-nez v11, :cond_1fd

    if-nez v12, :cond_1fd

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1fd

    .line 467
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/content/IntentFilter;

    .line 468
    if-eqz v15, :cond_1fd

    const-string v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1fd
    move-object/from16 v19, v0

    .end local v0    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v19    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v20

    .line 472
    .local v20, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v19, :cond_215

    .line 473
    move-object v0, v10

    move-object v1, v7

    move-object/from16 v2, v20

    move v3, v15

    move v4, v9

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, v19

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 476
    :cond_215
    if-eqz v17, :cond_229

    .line 477
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v15

    move/from16 v4, p3

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 480
    :cond_229
    if-eqz v14, :cond_23c

    .line 481
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v15

    move/from16 v4, p3

    move-object v5, v11

    move-object v6, v12

    move-object v7, v14

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 484
    :cond_23c
    if-eqz v18, :cond_250

    .line 485
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v15

    move/from16 v4, p3

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, v18

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 488
    :cond_250
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 489
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 491
    if-eqz v15, :cond_286

    .line 492
    const-string v0, "IntentResolver"

    const-string v1, "Final result list:"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_261
    move/from16 v0, v16

    .end local v16    # "i":I
    .local v0, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_286

    .line 494
    const-string v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "i":I
    .restart local v16    # "i":I
    goto :goto_261

    .line 497
    .end local v16    # "i":I
    :cond_286
    return-object v13
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    move-object/from16 v10, p0

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 384
    .local v11, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    move v3, v0

    goto :goto_16

    :cond_15
    move v3, v1

    .line 387
    .local v3, "debug":Z
    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v12

    .line 388
    .local v12, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 389
    .local v13, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 390
    .local v14, "N":I
    nop

    .local v1, "i":I
    :goto_23
    move v15, v1

    .end local v1    # "i":I
    .local v15, "i":I
    if-ge v15, v14, :cond_42

    .line 391
    nop

    .line 392
    move-object/from16 v9, p4

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/content/IntentFilter;

    .line 391
    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v8, v11

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 390
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "i":I
    .restart local v1    # "i":I
    goto :goto_23

    .line 394
    .end local v1    # "i":I
    :cond_42
    invoke-virtual {v10, v11}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 395
    invoke-virtual {v10, v11}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 396
    return-object v11
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "numS":I
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, "numT":I
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 209
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 212
    :cond_21
    if-eqz v1, :cond_2e

    .line 213
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 216
    :cond_2e
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 551
    return-void
.end method

.method writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 19
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    move-object v0, p1

    .line 285
    move-object/from16 v1, p4

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 286
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "mapi":I
    :goto_9
    if-ge v4, v2, :cond_40

    .line 287
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 288
    .local v5, "token":J
    const-wide v7, 0x10900000001L

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 289
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/IntentFilter;

    array-length v8, v7

    move v9, v3

    :goto_25
    if-ge v9, v8, :cond_3a

    aget-object v10, v7, v9

    .line 290
    .local v10, "f":Landroid/content/IntentFilter;, "TF;"
    if-eqz v10, :cond_37

    .line 291
    const-wide v11, 0x20900000002L

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 289
    .end local v10    # "f":Landroid/content/IntentFilter;, "TF;"
    :cond_37
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 294
    :cond_3a
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 286
    .end local v5    # "token":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 296
    .end local v4    # "mapi":I
    :cond_40
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 299
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 300
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000001L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 301
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000002L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000003L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000004L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000005L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 305
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000006L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 307
    return-void
.end method
