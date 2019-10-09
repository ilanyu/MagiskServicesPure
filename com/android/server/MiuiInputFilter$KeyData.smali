.class Lcom/android/server/MiuiInputFilter$KeyData;
.super Ljava/lang/Object;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyData"
.end annotation


# instance fields
.field isSended:Z

.field keyEvent:Landroid/view/KeyEvent;

.field policyFlags:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
