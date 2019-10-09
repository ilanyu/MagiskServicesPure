.class Lcom/android/server/am/ActivityRecord$StateTransition;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateTransition"
.end annotation


# instance fields
.field final prev:Lcom/android/server/am/ActivityStack$ActivityState;

.field final reason:Ljava/lang/String;

.field final state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final time:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 6
    .param p1, "prev"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->time:J

    .line 415
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->prev:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 416
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 417
    iput-object p3, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->reason:Ljava/lang/String;

    .line 418
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->prev:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/ActivityRecord$StateTransition;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
