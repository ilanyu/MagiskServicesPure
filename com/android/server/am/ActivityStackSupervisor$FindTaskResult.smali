.class Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindTaskResult"
.end annotation


# instance fields
.field matchedByRootAffinity:Z

.field r:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
