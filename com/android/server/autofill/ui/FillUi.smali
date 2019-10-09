.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final THEME_ID:I = 0x10303b9

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private final mFooter:Landroid/view/View;

.field private final mFullScreen:Z

.field private final mHeader:Landroid/view/View;

.field private final mListView:Landroid/widget/ListView;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mVisibleDatasetsMaxCount:I

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/FillUi$Callback;)V
    .registers 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .param p4, "filterText"    # Ljava/lang/String;
    .param p5, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p6, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p7, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "callback"    # Lcom/android/server/autofill/ui/FillUi$Callback;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 97
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 135
    move-object/from16 v5, p8

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 137
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v6, 0x10303b9

    move-object/from16 v7, p1

    invoke-direct {v0, v7, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 138
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 140
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v9

    .line 141
    .local v9, "headerPresentation":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v10

    .line 143
    .local v10, "footerPresentation":Landroid/widget/RemoteViews;
    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_4a

    .line 144
    const v0, 0x109003d

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    .local v0, "decor":Landroid/view/ViewGroup;
    :goto_49
    goto :goto_63

    .line 145
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :cond_4a
    if-nez v9, :cond_59

    if-eqz v10, :cond_4f

    goto :goto_59

    .line 149
    :cond_4f
    const v0, 0x109003c

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_63

    .line 146
    :cond_59
    :goto_59
    const v0, 0x109003e

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_49

    .line 149
    .restart local v0    # "decor":Landroid/view/ViewGroup;
    :goto_63
    move-object v11, v0

    .line 151
    .end local v0    # "decor":Landroid/view/ViewGroup;
    .local v11, "decor":Landroid/view/ViewGroup;
    const v0, 0x10201c1

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 152
    .local v12, "titleView":Landroid/widget/TextView;
    const/4 v0, 0x1

    const/4 v13, 0x0

    if-eqz v12, :cond_82

    .line 153
    iget-object v14, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const v15, 0x10400e4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p6, v6, v13

    invoke-virtual {v14, v15, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_82
    const v6, 0x10201be

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 156
    .local v6, "iconView":Landroid/widget/ImageView;
    if-eqz v6, :cond_93

    .line 157
    move-object/from16 v14, p7

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_95

    .line 161
    :cond_93
    move-object/from16 v14, p7

    :goto_95
    iget-boolean v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v15, :cond_d3

    .line 162
    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 163
    .local v15, "outPoint":Landroid/graphics/Point;
    iget-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 165
    const/4 v13, -0x1

    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 166
    iget v13, v15, Landroid/graphics/Point;->y:I

    div-int/lit8 v13, v13, 0x2

    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 167
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_d3

    .line 168
    const-string v13, "FillUi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialized fillscreen LayoutParams "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v15    # "outPoint":Landroid/graphics/Point;
    :cond_d3
    new-instance v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 191
    sget v0, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    if-lez v0, :cond_101

    .line 192
    sget v0, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 193
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_110

    .line 194
    const-string v0, "FillUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "overriding maximum visible datasets to "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 197
    :cond_101
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10e0004

    .line 198
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 201
    :cond_110
    :goto_110
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$1;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$1;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    move-object v4, v0

    .line 212
    .local v4, "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_1c4

    .line 213
    const/4 v13, 0x0

    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 214
    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 215
    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 216
    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 219
    const v0, 0x10201c0

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    .line 222
    .local v13, "container":Landroid/view/ViewGroup;
    :try_start_12f
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    const v15, 0x10303b9

    invoke-virtual {v0, v15}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v15, v11, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_146
    .catch Ljava/lang/RuntimeException; {:try_start_12f .. :try_end_146} :catch_1ad

    .line 230
    nop

    .line 229
    nop

    .line 231
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 232
    new-instance v15, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$Vch3vycmBdfZEFnJyIbU-GchQzA;

    move-object/from16 v18, v6

    move-object/from16 v6, p2

    invoke-direct {v15, v1, v6}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$Vch3vycmBdfZEFnJyIbU-GchQzA;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    .line 232
    .end local v6    # "iconView":Landroid/widget/ImageView;
    .local v18, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-boolean v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-nez v15, :cond_19a

    .line 235
    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 236
    .local v15, "maxSize":Landroid/graphics/Point;
    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v7, v15}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object/from16 v19, v8

    iget-boolean v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 238
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .local v19, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v20, v12

    const/4 v12, -0x2

    .line 238
    .end local v12    # "titleView":Landroid/widget/TextView;
    .local v20, "titleView":Landroid/widget/TextView;
    if-eqz v8, :cond_173

    iget v8, v15, Landroid/graphics/Point;->x:I

    goto :goto_174

    .line 239
    :cond_173
    move v8, v12

    :goto_174
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    iget v7, v15, Landroid/graphics/Point;->x:I

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 243
    .local v7, "widthMeasureSpec":I
    iget v12, v15, Landroid/graphics/Point;->y:I

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 246
    .local v8, "heightMeasureSpec":I
    invoke-virtual {v11, v7, v8}, Landroid/view/ViewGroup;->measure(II)V

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iput v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iput v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 248
    .end local v7    # "widthMeasureSpec":I
    .end local v8    # "heightMeasureSpec":I
    .end local v15    # "maxSize":Landroid/graphics/Point;
    goto :goto_19e

    .line 251
    .end local v19    # "inflater":Landroid/view/LayoutInflater;
    .end local v20    # "titleView":Landroid/widget/TextView;
    .local v8, "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "titleView":Landroid/widget/TextView;
    :cond_19a
    move-object/from16 v19, v8

    move-object/from16 v20, v12

    .line 251
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "titleView":Landroid/widget/TextView;
    .restart local v19    # "inflater":Landroid/view/LayoutInflater;
    .restart local v20    # "titleView":Landroid/widget/TextView;
    :goto_19e
    new-instance v7, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v7, v1, v11, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 253
    .end local v0    # "content":Landroid/view/View;
    .end local v13    # "container":Landroid/view/ViewGroup;
    nop

    .line 357
    move-object/from16 v29, v4

    goto/16 :goto_3cc

    .line 225
    .end local v18    # "iconView":Landroid/widget/ImageView;
    .end local v19    # "inflater":Landroid/view/LayoutInflater;
    .end local v20    # "titleView":Landroid/widget/TextView;
    .restart local v6    # "iconView":Landroid/widget/ImageView;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "titleView":Landroid/widget/TextView;
    .restart local v13    # "container":Landroid/view/ViewGroup;
    :catch_1ad
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v6, p2

    .line 226
    .end local v6    # "iconView":Landroid/widget/ImageView;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "titleView":Landroid/widget/TextView;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v18    # "iconView":Landroid/widget/ImageView;
    .restart local v19    # "inflater":Landroid/view/LayoutInflater;
    .restart local v20    # "titleView":Landroid/widget/TextView;
    invoke-interface/range {p8 .. p8}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    .line 227
    const-string v7, "FillUi"

    const-string v8, "Error inflating remote views"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 229
    return-void

    .line 254
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "container":Landroid/view/ViewGroup;
    .end local v18    # "iconView":Landroid/widget/ImageView;
    .end local v19    # "inflater":Landroid/view/LayoutInflater;
    .end local v20    # "titleView":Landroid/widget/TextView;
    .restart local v6    # "iconView":Landroid/widget/ImageView;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "titleView":Landroid/widget/TextView;
    :cond_1c4
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v6, p2

    .line 254
    .end local v6    # "iconView":Landroid/widget/ImageView;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "titleView":Landroid/widget/TextView;
    .restart local v18    # "iconView":Landroid/widget/ImageView;
    .restart local v19    # "inflater":Landroid/view/LayoutInflater;
    .restart local v20    # "titleView":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 255
    .local v7, "datasetCount":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1f8

    .line 256
    const-string v0, "FillUi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Number datasets: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " max visible: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1f8
    const/4 v0, 0x0

    .line 261
    .local v0, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    if-eqz v9, :cond_22c

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    .line 263
    const v8, 0x10303b9

    invoke-virtual {v9, v8}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    .line 264
    iget-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v9, v8, v12, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 265
    const v8, 0x10201bd

    .line 266
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 267
    .local v8, "headerContainer":Landroid/widget/LinearLayout;
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_222

    const-string v12, "FillUi"

    const-string v13, "adding header"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_222
    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    .end local v8    # "headerContainer":Landroid/widget/LinearLayout;
    goto :goto_22f

    .line 271
    :cond_22c
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 274
    :goto_22f
    if-eqz v10, :cond_26b

    .line 275
    const v8, 0x10201bc

    .line 276
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 277
    .local v8, "footerContainer":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_267

    .line 278
    if-nez v0, :cond_242

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    .line 281
    :cond_242
    const v12, 0x10303b9

    invoke-virtual {v10, v12}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    .line 282
    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 284
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_25c

    const-string v12, "FillUi"

    const-string v13, "adding footer"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_25c
    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    const/4 v12, 0x0

    goto :goto_26a

    .line 288
    :cond_267
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 290
    .end local v8    # "footerContainer":Landroid/widget/LinearLayout;
    :goto_26a
    goto :goto_26e

    .line 291
    :cond_26b
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 294
    .end local v0    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .local v8, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_26e
    move-object v8, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 295
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    const/4 v0, 0x0

    .line 295
    .local v0, "i":I
    :goto_276
    move v13, v0

    .line 295
    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v7, :cond_387

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/service/autofill/Dataset;

    .line 297
    .local v15, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 298
    .local v5, "index":I
    if-ltz v5, :cond_373

    .line 299
    invoke-virtual {v15, v5}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 300
    .local v6, "presentation":Landroid/widget/RemoteViews;
    if-nez v6, :cond_2bc

    .line 301
    const-string v0, "FillUi"

    move/from16 v27, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 301
    .end local v7    # "datasetCount":I
    .local v27, "datasetCount":I
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v8

    const-string/jumbo v8, "not displaying UI on field "

    .line 301
    .end local v8    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .local v28, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    nop

    .line 295
    move-object/from16 v29, v4

    goto/16 :goto_379

    .line 307
    .end local v27    # "datasetCount":I
    .end local v28    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v7    # "datasetCount":I
    .restart local v8    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :cond_2bc
    move/from16 v27, v7

    move-object/from16 v28, v8

    .line 307
    .end local v7    # "datasetCount":I
    .end local v8    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v27    # "datasetCount":I
    .restart local v28    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :try_start_2c0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_2c2
    .catch Ljava/lang/RuntimeException; {:try_start_2c0 .. :try_end_2c2} :catch_368

    if-eqz v0, :cond_2e1

    :try_start_2c4
    const-string v0, "FillUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting remote view for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2db
    .catch Ljava/lang/RuntimeException; {:try_start_2c4 .. :try_end_2db} :catch_2dc

    goto :goto_2e1

    .line 310
    :catch_2dc
    move-exception v0

    move-object/from16 v29, v4

    goto/16 :goto_36b

    .line 308
    :cond_2e1
    :goto_2e1
    const v7, 0x10303b9

    :try_start_2e4
    invoke-virtual {v6, v7}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    .line 309
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v26
    :try_end_2ee
    .catch Ljava/lang/RuntimeException; {:try_start_2e4 .. :try_end_2ee} :catch_368

    .line 313
    .local v26, "view":Landroid/view/View;
    nop

    .line 312
    nop

    .line 314
    invoke-virtual {v15, v5}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v0

    .line 315
    .local v0, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const/4 v8, 0x0

    .line 316
    .local v8, "filterPattern":Ljava/util/regex/Pattern;
    const/16 v16, 0x0

    .line 317
    .local v16, "valueText":Ljava/lang/String;
    const/16 v17, 0x1

    .line 318
    .local v17, "filterable":Z
    if-nez v0, :cond_322

    .line 319
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillValue;

    .line 320
    .local v7, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v7, :cond_31c

    invoke-virtual {v7}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v21

    if-eqz v21, :cond_31c

    .line 321
    move-object/from16 v29, v4

    invoke-virtual {v7}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    .line 321
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .local v29, "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 321
    .end local v7    # "value":Landroid/view/autofill/AutofillValue;
    goto :goto_31e

    .line 323
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    :cond_31c
    move-object/from16 v29, v4

    .line 334
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_31e
    move-object/from16 v30, v0

    move-object v4, v8

    goto :goto_355

    .line 324
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    :cond_322
    move-object/from16 v29, v4

    .line 324
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    iget-object v4, v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 325
    .end local v8    # "filterPattern":Ljava/util/regex/Pattern;
    .local v4, "filterPattern":Ljava/util/regex/Pattern;
    if-nez v4, :cond_353

    .line 326
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_34d

    .line 327
    const-string v7, "FillUi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v0

    const-string v0, "Explicitly disabling filter at id "

    .line 327
    .end local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .local v30, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for dataset #"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34f

    .line 330
    .end local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :cond_34d
    move-object/from16 v30, v0

    .line 330
    .end local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :goto_34f
    const/4 v0, 0x0

    .line 334
    .end local v17    # "filterable":Z
    .local v0, "filterable":Z
    move/from16 v17, v0

    goto :goto_355

    .line 334
    .end local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .local v0, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v17    # "filterable":Z
    :cond_353
    move-object/from16 v30, v0

    .line 334
    .end local v0    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :goto_355
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v23, v4

    move/from16 v24, v17

    move-object/from16 v25, v16

    invoke-direct/range {v21 .. v26}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v5    # "index":I
    .end local v6    # "presentation":Landroid/widget/RemoteViews;
    .end local v15    # "dataset":Landroid/service/autofill/Dataset;
    .end local v16    # "valueText":Ljava/lang/String;
    .end local v17    # "filterable":Z
    .end local v26    # "view":Landroid/view/View;
    .end local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    goto :goto_379

    .line 310
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .local v4, "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v5    # "index":I
    .restart local v6    # "presentation":Landroid/widget/RemoteViews;
    .restart local v15    # "dataset":Landroid/service/autofill/Dataset;
    :catch_368
    move-exception v0

    move-object/from16 v29, v4

    .line 311
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_36b
    const-string v4, "FillUi"

    const-string v7, "Error inflating remote views"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    goto :goto_379

    .line 295
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "index":I
    .end local v6    # "presentation":Landroid/widget/RemoteViews;
    .end local v15    # "dataset":Landroid/service/autofill/Dataset;
    .end local v27    # "datasetCount":I
    .end local v28    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .local v7, "datasetCount":I
    .local v8, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :cond_373
    move-object/from16 v29, v4

    move/from16 v27, v7

    move-object/from16 v28, v8

    .line 295
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v7    # "datasetCount":I
    .end local v8    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v27    # "datasetCount":I
    .restart local v28    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_379
    add-int/lit8 v0, v13, 0x1

    .line 295
    .end local v13    # "i":I
    .local v0, "i":I
    move/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v4, v29

    move-object/from16 v5, p8

    move-object/from16 v6, p2

    goto/16 :goto_276

    .line 338
    .end local v0    # "i":I
    .end local v27    # "datasetCount":I
    .end local v28    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v7    # "datasetCount":I
    .restart local v8    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :cond_387
    move-object/from16 v29, v4

    move/from16 v27, v7

    move-object/from16 v28, v8

    .line 338
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v7    # "datasetCount":I
    .end local v8    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v27    # "datasetCount":I
    .restart local v28    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v29    # "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v12}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 340
    const v0, 0x10201bf

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 341
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    iget-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 343
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$jpLZ4TKMFTozyqA8_WsBHG3lWBg;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$jpLZ4TKMFTozyqA8_WsBHG3lWBg;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 348
    if-nez p4, :cond_3bc

    .line 349
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_3c2

    .line 351
    :cond_3bc
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 354
    :goto_3c2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 355
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v11, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 357
    .end local v12    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    .end local v27    # "datasetCount":I
    .end local v28    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_3cc
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 76
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 76
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 76
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 76
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 76
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 761
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_18

    .line 762
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 764
    :cond_18
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    .line 766
    :cond_1d
    return-void
.end method

.method private applyNewFilterText()V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    .line 379
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 404
    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_27

    .line 125
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_20

    const-string v0, "FillUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcing full-screen mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_20
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 128
    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$applyNewFilterText$3(Lcom/android/server/autofill/ui/FillUi;II)V
    .registers 7
    .param p1, "oldCount"    # I
    .param p2, "count"    # I

    .line 380
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 381
    return-void

    .line 383
    :cond_5
    const/4 v0, 0x0

    if-gtz p2, :cond_38

    .line 384
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_32

    .line 385
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v1, :cond_11

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 386
    .local v0, "size":I
    :goto_17
    const-string v1, "FillUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No dataset matches filter with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "size":I
    :cond_32
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_69

    .line 390
    :cond_38
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 391
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 393
    :cond_41
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-le v1, v2, :cond_57

    .line 394
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_5c

    .line 397
    :cond_57
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 399
    :goto_5c
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_69

    .line 400
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 403
    :cond_69
    :goto_69
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 175
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    const/16 v1, 0x42

    if-eq v0, v1, :cond_19

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_19

    packed-switch v0, :pswitch_data_1c

    .line 186
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    .line 187
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_19
    :pswitch_19
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x13
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 4
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "v"    # Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/autofill/ui/FillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "adapter"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 344
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    .line 345
    .local v0, "vi":Lcom/android/server/autofill/ui/FillUi$ViewItem;
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    .line 346
    return-void
.end method

.method private newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;
    .registers 2

    .line 367
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$2;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/FillUi$2;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    return-object v0
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 530
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 531
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 532
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x1110010

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 534
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x111000f

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 537
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 538
    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    .line 524
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 527
    return-void

    .line 525
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateContentSize()Z
    .registers 9

    .line 446
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 447
    return v1

    .line 449
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_c

    .line 451
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_c
    const/4 v0, 0x0

    .line 454
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_24

    .line 455
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v2, :cond_1c

    .line 456
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 457
    const/4 v0, 0x1

    .line 459
    :cond_1c
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v2, :cond_23

    .line 460
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 461
    const/4 v0, 0x1

    .line 463
    :cond_23
    return v0

    .line 466
    :cond_24
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 467
    .local v2, "maxSize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 469
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 470
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 472
    iget v3, v2, Landroid/graphics/Point;->x:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 474
    .local v3, "widthMeasureSpec":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 476
    .local v4, "heightMeasureSpec":I
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v5}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v5

    .line 478
    .local v5, "itemCount":I
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v6, :cond_5a

    .line 479
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v6, v3, v4}, Landroid/view/View;->measure(II)V

    .line 480
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 481
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 484
    :cond_5a
    nop

    .local v1, "i":I
    :goto_5b
    if-ge v1, v5, :cond_79

    .line 485
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 486
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v3, v4}, Landroid/view/View;->measure(II)V

    .line 487
    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 488
    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v1, v7, :cond_76

    .line 489
    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 484
    .end local v6    # "view":Landroid/view/View;
    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 493
    .end local v1    # "i":I
    :cond_79
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v1, :cond_90

    .line 494
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 495
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 496
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 498
    :cond_90
    return v0
.end method

.method private updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 515
    .local v1, "clampedMeasuredHeight":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int/2addr v2, v1

    .line 516
    .local v2, "newContentHeight":I
    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eq v2, v3, :cond_15

    .line 517
    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 518
    const/4 v0, 0x1

    .line 520
    :cond_15
    return v0
.end method

.method private updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 504
    .local v1, "clampedMeasuredWidth":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 505
    .local v2, "newContentWidth":I
    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq v2, v3, :cond_18

    .line 506
    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 507
    const/4 v0, 0x1

    .line 509
    :cond_18
    return v0
.end method


# virtual methods
.method public destroy(Z)V
    .registers 4
    .param p1, "notifyClient"    # Z

    .line 434
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 435
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_d

    .line 436
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 438
    :cond_d
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    .line 439
    if-eqz p1, :cond_19

    .line 440
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 442
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 443
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 717
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 718
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 719
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 721
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_43

    .line 722
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 724
    :cond_43
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_55

    .line 725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 727
    :cond_55
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_67

    .line 728
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 730
    :cond_67
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_79

    .line 731
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 733
    :cond_79
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 734
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 737
    :cond_8b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 738
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 739
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_145

    .line 741
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 744
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showing: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    # getter for: Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z
    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$300(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 745
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "view: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    # getter for: Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 746
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    # getter for: Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_114

    .line 747
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "params: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    # getter for: Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 749
    :cond_114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "screen coordinates: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    # getter for: Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_12b

    .line 751
    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_145

    .line 753
    :cond_12b
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    # getter for: Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v3

    .line 754
    .local v3, "coordinates":[I
    aget v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 757
    .end local v0    # "prefix2":Ljava/lang/String;
    .end local v3    # "coordinates":[I
    :cond_145
    :goto_145
    return-void
.end method

.method requestShowFillUi()V
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    .line 361
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 3
    .param p1, "filterText"    # Ljava/lang/String;

    .line 407
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 408
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_17

    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 412
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_16

    .line 414
    :cond_11
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 416
    :goto_16
    return-void

    .line 419
    :cond_17
    if-nez p1, :cond_1b

    .line 420
    const/4 p1, 0x0

    goto :goto_1f

    .line 422
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 425
    :goto_1f
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 426
    return-void

    .line 428
    :cond_28
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 431
    return-void
.end method
