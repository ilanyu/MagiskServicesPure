.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 2347
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2349
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_126

    .line 2350
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15$1;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x110e0007

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15$1;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;Landroid/content/Context;I)V

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2373
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x11030006

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2374
    .local v0, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2375
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2377
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x502

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2381
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 2382
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2383
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2384
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2385
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2386
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2388
    const v3, 0x110d001f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2389
    .local v3, "bootLogo":Landroid/widget/ImageView;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2390
    const-string v4, "beryllium"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 2391
    const-string/jumbo v4, "ro.boot.hwc"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2392
    .local v4, "hwc":Ljava/lang/String;
    const-string v5, "INDIA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 2393
    const v5, 0x11020019

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d2

    .line 2394
    :cond_c4
    const-string v5, "GLOBAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2395
    const v5, 0x11020018

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2398
    .end local v4    # "hwc":Ljava/lang/String;
    :cond_d2
    :goto_d2
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const v5, 0x110d0021

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v4, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4102(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 2399
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2401
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11090010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2402
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_126

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_126

    .line 2403
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const v6, 0x110d0020

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v4, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2404
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2412
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "bootLogo":Landroid/widget/ImageView;
    :cond_126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2413
    .local v0, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->val$msg:Ljava/lang/CharSequence;

    if-eqz v2, :cond_155

    .line 2414
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->val$msg:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^0-9]"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_145
    if-ge v4, v3, :cond_155

    aget-object v5, v2, v4

    .line 2415
    .local v5, "sp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_152

    .line 2416
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2414
    .end local v5    # "sp":Ljava/lang/String;
    :cond_152
    add-int/lit8 v4, v4, 0x1

    goto :goto_145

    .line 2420
    :cond_155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d9

    .line 2421
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2422
    .local v2, "progress":I
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2423
    .local v4, "total":I
    if-le v2, v4, :cond_176

    .line 2424
    move v5, v2

    .line 2425
    .local v5, "tmp":I
    move v2, v4

    .line 2426
    move v4, v5

    .line 2428
    .end local v5    # "tmp":I
    :cond_176
    const/4 v5, 0x3

    if-le v4, v5, :cond_1d9

    .line 2429
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2430
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2431
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2433
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_1d9

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d9

    .line 2434
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2435
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v1, v2

    div-int/2addr v1, v4

    .line 2436
    .local v1, "pos":I
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lt v1, v5, :cond_1c8

    .line 2437
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .line 2439
    :cond_1c8
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2443
    .end local v1    # "pos":I
    .end local v2    # "progress":I
    .end local v4    # "total":I
    :cond_1d9
    return-void
.end method
