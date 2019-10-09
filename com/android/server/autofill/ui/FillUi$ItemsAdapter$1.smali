.class Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;
.super Landroid/widget/Filter;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 780
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method static synthetic lambda$performFiltering$0(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/FillUi$ViewItem;)Z
    .registers 3
    .param p0, "filterText"    # Ljava/lang/CharSequence;
    .param p1, "item"    # Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 785
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/FillUi$ViewItem;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5
    .param p1, "filterText"    # Ljava/lang/CharSequence;

    .line 784
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    # getter for: Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mAllItems:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->access$700(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$ItemsAdapter$1$8s9zobTvKJVJjInaObtlx2flLMc;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$ItemsAdapter$1$8s9zobTvKJVJjInaObtlx2flLMc;-><init>(Ljava/lang/CharSequence;)V

    .line 785
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 786
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 787
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 788
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 789
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 790
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 796
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    # getter for: Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->access$800(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 797
    .local v0, "oldItemCount":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    # getter for: Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->access$800(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 798
    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v1, :cond_24

    .line 800
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 801
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    # getter for: Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->access$800(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 803
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    :cond_24
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    # getter for: Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->access$800(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 804
    .local v1, "resultCountChanged":Z
    :goto_33
    if-eqz v1, :cond_3c

    .line 805
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    iget-object v2, v2, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    # invokes: Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V
    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi;->access$900(Lcom/android/server/autofill/ui/FillUi;)V

    .line 807
    :cond_3c
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;->this$1:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->notifyDataSetChanged()V

    .line 808
    return-void
.end method
