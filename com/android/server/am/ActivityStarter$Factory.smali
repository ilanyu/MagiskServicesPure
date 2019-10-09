.class interface abstract Lcom/android/server/am/ActivityStarter$Factory;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation


# virtual methods
.method public abstract obtain()Lcom/android/server/am/ActivityStarter;
.end method

.method public abstract recycle(Lcom/android/server/am/ActivityStarter;)V
.end method

.method public abstract setController(Lcom/android/server/am/ActivityStartController;)V
.end method
