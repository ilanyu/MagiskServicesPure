.class Lcom/android/server/am/TaskRecord$TaskActivitiesReport;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskActivitiesReport"
.end annotation


# instance fields
.field base:Lcom/android/server/am/ActivityRecord;

.field numActivities:I

.field numRunning:I

.field top:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .line 2166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v0, p0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 2167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    .line 2168
    return-void
.end method
