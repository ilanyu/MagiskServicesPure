.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$FillUi$jpLZ4TKMFTozyqA8_WsBHG3lWBg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$jpLZ4TKMFTozyqA8_WsBHG3lWBg;->f$0:Lcom/android/server/autofill/ui/FillUi;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$jpLZ4TKMFTozyqA8_WsBHG3lWBg;->f$0:Lcom/android/server/autofill/ui/FillUi;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$2(Lcom/android/server/autofill/ui/FillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
