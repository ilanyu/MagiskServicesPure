.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCableIndex:I

.field private mDevAddress:Ljava/lang/String;

.field private mDevIndex:I

.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 520
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V
    .registers 12
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "state1Bits"    # I
    .param p4, "state2Bits"    # I
    .param p5, "stateNbits"    # I

    .line 530
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 532
    const-string p1, "controller=0;stream=0"

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevAddress:Ljava/lang/String;

    .line 533
    iput p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 534
    iput p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 535
    iput p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    .line 536
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 537
    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I

    .line 539
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 540
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 541
    .local v0, "idx":I
    if-eq v0, p1, :cond_89

    .line 542
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string v1, "/"

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 543
    .local p1, "idx2":I
    nop

    .line 544
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 545
    .local v1, "dev":I
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 546
    .local v2, "cable":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevAddress:Ljava/lang/String;

    .line 548
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UEvent dev address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-direct {p0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkDevIndex(I)V

    .line 551
    invoke-direct {p0, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkCableIndex(I)V

    .line 554
    .end local v0    # "idx":I
    .end local v1    # "dev":I
    .end local v2    # "cable":I
    .end local p1    # "idx2":I
    :cond_89
    return-void
.end method

.method private checkCableIndex(I)V
    .registers 12
    .param p1, "cable_index"    # I

    .line 592
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 593
    return-void

    .line 595
    :cond_6
    const/4 v0, 0x0

    .line 596
    .local v0, "index":I
    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 599
    .local v2, "buffer":[C
    :goto_b
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/sys/devices/platform/soc/%s/extcon/extcon%d/cable.%d/name"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "soc:qcom,msm-ext-disp"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 601
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    .line 599
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "cablePath":Ljava/lang/String;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCableIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 607
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    goto :goto_c0

    .line 611
    :cond_6d
    :try_start_6d
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 612
    .local v5, "file":Ljava/io/FileReader;
    invoke-virtual {v5, v2, v7, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 613
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 615
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v7, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 616
    .local v7, "cableName":Ljava/lang/String;
    const-string v8, "DP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    if-ne v0, p1, :cond_a7

    .line 617
    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I

    .line 618
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkCableIndex set cable "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    goto :goto_c0

    .line 621
    :cond_a7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v8

    const-string v9, "checkCableIndex no name match, skip "

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_b0} :catch_b5

    .line 622
    add-int/lit8 v0, v0, 0x1

    .line 627
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .end local v7    # "cableName":Ljava/lang/String;
    nop

    .line 628
    .end local v3    # "cablePath":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    goto/16 :goto_b

    .line 624
    .restart local v3    # "cablePath":Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    :catch_b5
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkCableIndex exception"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    nop

    .line 629
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "cablePath":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :goto_c0
    return-void
.end method

.method private checkDevIndex(I)V
    .registers 12
    .param p1, "dev_index"    # I

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "index":I
    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 560
    .local v2, "buffer":[C
    :goto_5
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/sys/devices/platform/soc/%s/extcon/extcon%d/name"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "soc:qcom,msm-ext-disp"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 562
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 560
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "devPath":Ljava/lang/String;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDevIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 568
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    goto :goto_aa

    .line 572
    :cond_5e
    :try_start_5e
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 573
    .local v5, "file":Ljava/io/FileReader;
    invoke-virtual {v5, v2, v7, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 574
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 576
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v7, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 577
    .local v7, "devName":Ljava/lang/String;
    const-string/jumbo v8, "soc:qcom,msm-ext-disp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9a

    if-ne v0, p1, :cond_9a

    .line 578
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set dev_index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_99} :catch_9f

    .line 580
    goto :goto_aa

    .line 582
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    .line 587
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .end local v7    # "devName":Ljava/lang/String;
    nop

    .line 588
    .end local v3    # "devPath":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    goto/16 :goto_5

    .line 584
    .restart local v3    # "devPath":Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    :catch_9f
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkDevIndex exception "

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    nop

    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "devPath":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :goto_aa
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .registers 3

    .line 661
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public computeNewHeadsetState(II)I
    .registers 6
    .param p1, "headsetState"    # I
    .param p2, "switchState"    # I

    .line 666
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    or-int/2addr v0, v1

    not-int v0, v0

    .line 667
    .local v0, "preserveMask":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_f

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    goto :goto_1d

    .line 668
    :cond_f
    const/4 v1, 0x2

    if-ne p2, v1, :cond_15

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    goto :goto_1d

    .line 669
    :cond_15
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    if-ne p2, v1, :cond_1c

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 671
    .local v1, "setBits":I
    :goto_1d
    and-int v2, p1, v0

    or-int/2addr v2, v1

    return v2
.end method

.method public getDevAddress()Ljava/lang/String;
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDevName()Ljava/lang/String;
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .registers 7

    .line 636
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 637
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/devices/platform/soc/%s/extcon/extcon%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "soc:qcom,msm-ext-disp"

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 640
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 637
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 642
    :cond_26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/devices/virtual/switch/%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .registers 7

    .line 649
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 650
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/sys/devices/platform/soc/%s/extcon/extcon%d/cable.%d/state"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "soc:qcom,msm-ext-disp"

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    .line 652
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 650
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 654
    :cond_2f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/sys/class/switch/%s/state"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
