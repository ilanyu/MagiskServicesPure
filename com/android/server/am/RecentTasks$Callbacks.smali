.class interface abstract Lcom/android/server/am/RecentTasks$Callbacks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RecentTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
.end method
