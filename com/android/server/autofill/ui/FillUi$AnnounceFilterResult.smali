.class final Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "FillUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnnounceFilterResult"
.end annotation


# static fields
.field private static final SEARCH_RESULT_ANNOUNCEMENT_DELAY:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 2

    .line 838
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/autofill/ui/FillUi;
    .param p2, "x1"    # Lcom/android/server/autofill/ui/FillUi$1;

    .line 838
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    return-void
.end method


# virtual methods
.method public post()V
    .registers 4

    .line 842
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->remove()V

    .line 843
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # getter for: Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 844
    return-void
.end method

.method public remove()V
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # getter for: Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 848
    return-void
.end method

.method public run()V
    .registers 7

    .line 852
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # getter for: Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 854
    .local v0, "count":I
    if-gtz v0, :cond_1e

    .line 855
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # getter for: Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi;->access$1100(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    goto :goto_38

    .line 857
    .end local v1    # "text":Ljava/lang/String;
    :cond_1e
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # getter for: Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi;->access$1100(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1150000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 858
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 857
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 860
    .restart local v1    # "text":Ljava/lang/String;
    :goto_38
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # getter for: Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi;->access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 861
    return-void
.end method
