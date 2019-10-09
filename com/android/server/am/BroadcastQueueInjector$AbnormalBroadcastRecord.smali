.class Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbnormalBroadcastRecord"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field callerPackage:Ljava/lang/String;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    .line 628
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 629
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    .line 630
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 634
    instance-of v0, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    if-eqz v0, :cond_25

    .line 635
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    .line 636
    .local v0, "r":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 637
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    iget v2, v0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    if-ne v1, v2, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 636
    :goto_24
    return v1

    .line 640
    .end local v0    # "r":Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    :cond_25
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 645
    const/4 v0, 0x1

    .line 646
    .local v0, "hashCode":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 647
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v0, v4

    .line 648
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 649
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbnormalBroadcastRecord{action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callerPackage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
