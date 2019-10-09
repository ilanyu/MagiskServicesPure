.class Lcom/android/server/ThreadPriorityBooster$PriorityState;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThreadPriorityBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityState"
.end annotation


# instance fields
.field prevPriority:I

.field regionCounter:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ThreadPriorityBooster$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/ThreadPriorityBooster$1;

    .line 86
    invoke-direct {p0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>()V

    return-void
.end method
