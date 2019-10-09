.class final Lcom/android/server/am/MemoryStatUtil$MemoryStat;
.super Ljava/lang/Object;
.source "MemoryStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryStatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemoryStat"
.end annotation


# instance fields
.field cacheInBytes:J

.field pgfault:J

.field pgmajfault:J

.field rssInBytes:J

.field swapInBytes:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
