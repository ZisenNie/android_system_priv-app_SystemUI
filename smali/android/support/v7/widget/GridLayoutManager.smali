.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 82
    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V
    .registers 14
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .prologue
    .line 776
    if-eqz p5, :cond_24

    .line 777
    const/4 v5, 0x0

    .line 778
    .local v5, "start":I
    move v1, p3

    .line 779
    .local v1, "end":I
    const/4 v0, 0x1

    .line 785
    .local v0, "diff":I
    :goto_5
    const/4 v4, 0x0

    .line 786
    .local v4, "span":I
    move v2, v5

    .local v2, "i":I
    :goto_7
    if-eq v2, v1, :cond_29

    .line 787
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v7, v2

    .line 788
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 789
    .local v3, "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 790
    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 791
    iget v7, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v4, v7

    .line 786
    add-int/2addr v2, v0

    goto :goto_7

    .line 781
    .end local v0    # "diff":I
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v4    # "span":I
    .end local v5    # "start":I
    .end local v6    # "view":Landroid/view/View;
    :cond_24
    add-int/lit8 v5, p3, -0x1

    .line 782
    .restart local v5    # "start":I
    const/4 v1, -0x1

    .line 783
    .restart local v1    # "end":I
    const/4 v0, -0x1

    .restart local v0    # "diff":I
    goto :goto_5

    .line 771
    .restart local v2    # "i":I
    .restart local v4    # "span":I
    :cond_29
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .registers 7

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 190
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 191
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 192
    .local v2, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 193
    .local v3, "viewPosition":I
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 188
    .end local v2    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    :cond_2a
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 4
    .param p1, "totalSpace"    # I

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 308
    return-void
.end method

.method static calculateItemBorders([III)[I
    .registers 12
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .prologue
    const/4 v8, 0x0

    .line 320
    if-eqz p0, :cond_8

    array-length v6, p0

    add-int/lit8 v7, p1, 0x1

    if-eq v6, v7, :cond_28

    .line 322
    :cond_8
    :goto_8
    add-int/lit8 v6, p1, 0x1

    new-array p0, v6, [I

    .line 324
    :cond_c
    aput v8, p0, v8

    .line 325
    div-int v4, p2, p1

    .line 326
    .local v4, "sizePerSpan":I
    rem-int v5, p2, p1

    .line 327
    .local v5, "sizePerSpanRemainder":I
    const/4 v1, 0x0

    .line 328
    .local v1, "consumedPixels":I
    const/4 v0, 0x0

    .line 329
    .local v0, "additionalSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_15
    if-gt v2, p1, :cond_30

    .line 330
    move v3, v4

    .line 331
    .local v3, "itemSize":I
    add-int/2addr v0, v5

    .line 332
    if-lez v0, :cond_22

    sub-int v6, p1, v0

    if-ge v6, v5, :cond_22

    .line 333
    add-int/lit8 v3, v4, 0x1

    .line 334
    sub-int/2addr v0, p1

    .line 336
    :cond_22
    add-int/2addr v1, v3

    .line 337
    aput v1, p0, v2

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 321
    .end local v0    # "additionalSize":I
    .end local v1    # "consumedPixels":I
    .end local v2    # "i":I
    .end local v3    # "itemSize":I
    .end local v4    # "sizePerSpan":I
    .end local v5    # "sizePerSpanRemainder":I
    :cond_28
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget v6, p0, v6

    if-eq v6, p2, :cond_c

    goto :goto_8

    .line 339
    .restart local v0    # "additionalSize":I
    .restart local v1    # "consumedPixels":I
    .restart local v2    # "i":I
    .restart local v4    # "sizePerSpan":I
    .restart local v5    # "sizePerSpanRemainder":I
    :cond_30
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 183
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .prologue
    .line 387
    const/4 v6, 0x1

    if-ne p4, v6, :cond_1f

    const/4 v2, 0x1

    .line 388
    .local v2, "layingOutInPrimaryDirection":Z
    :goto_4
    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v5

    .line 389
    .local v5, "span":I
    if-eqz v2, :cond_21

    .line 391
    :goto_c
    if-lez v5, :cond_3a

    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v6, :cond_3a

    .line 392
    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 393
    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v5

    goto :goto_c

    .line 387
    .end local v2    # "layingOutInPrimaryDirection":Z
    .end local v5    # "span":I
    :cond_1f
    const/4 v2, 0x0

    .restart local v2    # "layingOutInPrimaryDirection":Z
    goto :goto_4

    .line 397
    .restart local v5    # "span":I
    :cond_21
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 398
    .local v1, "indexLimit":I
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 399
    .local v4, "pos":I
    move v0, v5

    .line 400
    .local v0, "bestSpan":I
    :goto_2a
    if-ge v4, v1, :cond_38

    .line 401
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    .line 402
    .local v3, "next":I
    if-le v3, v0, :cond_38

    .line 403
    add-int/lit8 v4, v4, 0x1

    .line 404
    move v0, v3

    goto :goto_2a

    .line 409
    .end local v3    # "next":I
    :cond_38
    iput v4, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 385
    .end local v0    # "bestSpan":I
    .end local v1    # "indexLimit":I
    .end local v4    # "pos":I
    :cond_3a
    return-void
.end method

.method private ensureViewSet()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_11

    .line 364
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 362
    :cond_11
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .prologue
    .line 450
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_f

    .line 451
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p3, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1

    .line 453
    :cond_f
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 454
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    .line 459
    const-string/jumbo v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    return v1

    .line 462
    :cond_32
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 466
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_10

    .line 467
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, p3, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v2

    return v2

    .line 469
    :cond_10
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 470
    .local v1, "cached":I
    if-eq v1, v3, :cond_19

    .line 471
    return v1

    .line 473
    :cond_19
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 474
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_3b

    .line 479
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v2, 0x0

    return v2

    .line 483
    :cond_3b
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v2

    return v2
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 487
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_e

    .line 488
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    return v2

    .line 490
    :cond_e
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 491
    .local v1, "cached":I
    if-eq v1, v3, :cond_17

    .line 492
    return v1

    .line 494
    :cond_17
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 495
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_39

    .line 500
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v2, 0x1

    return v2

    .line 504
    :cond_39
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    return v2
.end method

.method private guessMeasurement(FI)V
    .registers 5
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .prologue
    .line 751
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 753
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 750
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 718
    .local v4, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget-object v1, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 719
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    .line 720
    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    .line 719
    add-int/2addr v7, v8

    .line 720
    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    .line 719
    add-int v5, v7, v8

    .line 721
    .local v5, "verticalInsets":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 722
    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    .line 721
    add-int/2addr v7, v8

    .line 722
    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    .line 721
    add-int v3, v7, v8

    .line 723
    .local v3, "horizontalInsets":I
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v8, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v7, v8}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v0

    .line 726
    .local v0, "availableSpaceInOther":I
    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v7, v10, :cond_48

    .line 728
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    .line 727
    invoke-static {v0, p2, v3, v7, v9}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 729
    .local v6, "wSpec":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    .line 730
    iget v9, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    .line 729
    invoke-static {v7, v8, v5, v9, v10}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 737
    .local v2, "hSpec":I
    :goto_44
    invoke-direct {p0, p1, v6, v2, p3}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 716
    return-void

    .line 733
    .end local v2    # "hSpec":I
    .end local v6    # "wSpec":I
    :cond_48
    iget v7, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    .line 732
    invoke-static {v0, p2, v5, v7, v9}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 734
    .restart local v2    # "hSpec":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    .line 735
    iget v9, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    .line 734
    invoke-static {v7, v8, v3, v9, v10}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .restart local v6    # "wSpec":I
    goto :goto_44
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .prologue
    .line 758
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 760
    .local v0, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    if-eqz p4, :cond_12

    .line 761
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 765
    .local v1, "measure":Z
    :goto_c
    if-eqz v1, :cond_11

    .line 766
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 757
    :cond_11
    return-void

    .line 763
    .end local v1    # "measure":Z
    :cond_12
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .restart local v1    # "measure":Z
    goto :goto_c
.end method

.method private updateMeasurements()V
    .registers 4

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 280
    .local v0, "totalSpace":I
    :goto_16
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 273
    return-void

    .line 278
    .end local v0    # "totalSpace":I
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "totalSpace":I
    goto :goto_16
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 251
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 16
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 417
    const/4 v4, 0x0

    .line 418
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 419
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 420
    .local v1, "boundsStart":I
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 421
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_2b

    const/4 v2, 0x1

    .line 423
    .local v2, "diff":I
    :goto_14
    move v3, p3

    .end local v4    # "invalidMatch":Landroid/view/View;
    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    .local v3, "i":I
    :goto_15
    if-eq v3, p4, :cond_52

    .line 424
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 425
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 426
    .local v6, "position":I
    if-ltz v6, :cond_29

    if-ge v6, p5, :cond_29

    .line 427
    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v7

    .line 428
    .local v7, "span":I
    if-eqz v7, :cond_2d

    .line 423
    .end local v7    # "span":I
    :cond_29
    :goto_29
    add-int/2addr v3, v2

    goto :goto_15

    .line 421
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v8    # "view":Landroid/view/View;
    .restart local v4    # "invalidMatch":Landroid/view/View;
    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_2b
    const/4 v2, -0x1

    .restart local v2    # "diff":I
    goto :goto_14

    .line 431
    .end local v4    # "invalidMatch":Landroid/view/View;
    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "span":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_2d
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 432
    if-nez v4, :cond_29

    .line 433
    move-object v4, v8

    .local v4, "invalidMatch":Landroid/view/View;
    goto :goto_29

    .line 435
    .end local v4    # "invalidMatch":Landroid/view/View;
    :cond_3d
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_4d

    .line 436
    iget-object v9, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v8}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v1, :cond_51

    .line 437
    :cond_4d
    if-nez v5, :cond_29

    .line 438
    move-object v5, v8

    .local v5, "outOfBoundsMatch":Landroid/view/View;
    goto :goto_29

    .line 441
    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_51
    return-object v8

    .line 445
    .end local v6    # "position":I
    .end local v7    # "span":I
    .end local v8    # "view":Landroid/view/View;
    :cond_52
    if-eqz v5, :cond_55

    :goto_54
    return-object v5

    :cond_55
    move-object v5, v4

    goto :goto_54
.end method

.method gatherPrefetchIndicesForLayoutState(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;[I)I
    .registers 10
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p2, "layoutState"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .param p3, "outIndices"    # [I

    .prologue
    .line 515
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 516
    .local v2, "remainingSpan":I
    const/4 v0, 0x0

    .line 517
    .local v0, "count":I
    :goto_3
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_24

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_24

    if-lez v2, :cond_24

    .line 518
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 519
    .local v1, "pos":I
    aput v1, p3, v0

    .line 520
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 521
    .local v3, "spanSize":I
    sub-int/2addr v2, v3

    .line 522
    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 525
    .end local v1    # "pos":I
    .end local v3    # "spanSize":I
    :cond_24
    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 226
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_c

    .line 227
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 230
    :cond_c
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 237
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 243
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 245
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_8

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 134
    :cond_8
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 135
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_10
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getItemPrefetchCount()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_8

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 120
    :cond_8
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 121
    return v2

    .line 125
    :cond_10
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getSpaceForSpanRange(II)I
    .registers 6
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .prologue
    .line 343
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    .line 345
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    .line 344
    sub-int/2addr v0, v1

    return v0

    .line 347
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 42
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "layoutState"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v27

    .line 532
    .local v27, "otherDirSpecMode":I
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v4, :cond_c0

    const/16 v18, 0x1

    .line 533
    .local v18, "flexibleInOtherDir":Z
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_c4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v16, v4, v5

    .line 537
    .local v16, "currentOtherDirSize":I
    :goto_20
    if-eqz v18, :cond_25

    .line 538
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 541
    :cond_25
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c8

    const/4 v9, 0x1

    .line 542
    .local v9, "layingOutInPrimaryDirection":Z
    :goto_2d
    const/4 v7, 0x0

    .line 543
    .local v7, "count":I
    const/4 v8, 0x0

    .line 544
    .local v8, "consumedSpanCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v31, v0

    .line 545
    .local v31, "remainingSpan":I
    if-nez v9, :cond_55

    .line 546
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v22

    .line 547
    .local v22, "itemSpanIndex":I
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v23

    .line 548
    .local v23, "itemSpanSize":I
    add-int v31, v22, v23

    .line 550
    .end local v22    # "itemSpanIndex":I
    .end local v23    # "itemSpanSize":I
    :cond_55
    :goto_55
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v7, v4, :cond_cf

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_cf

    if-lez v31, :cond_cf

    .line 551
    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v30, v0

    .line 552
    .local v30, "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v33

    .line 553
    .local v33, "spanSize":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v0, v33

    if-le v0, v4, :cond_cb

    .line 554
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 555
    const-string/jumbo v6, " spans but GridLayoutManager has only "

    .line 554
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 555
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 554
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 556
    const-string/jumbo v6, " spans."

    .line 554
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 532
    .end local v7    # "count":I
    .end local v8    # "consumedSpanCount":I
    .end local v9    # "layingOutInPrimaryDirection":Z
    .end local v16    # "currentOtherDirSize":I
    .end local v18    # "flexibleInOtherDir":Z
    .end local v30    # "pos":I
    .end local v31    # "remainingSpan":I
    .end local v33    # "spanSize":I
    :cond_c0
    const/16 v18, 0x0

    .restart local v18    # "flexibleInOtherDir":Z
    goto/16 :goto_10

    .line 533
    :cond_c4
    const/16 v16, 0x0

    .restart local v16    # "currentOtherDirSize":I
    goto/16 :goto_20

    .line 541
    :cond_c8
    const/4 v9, 0x0

    .restart local v9    # "layingOutInPrimaryDirection":Z
    goto/16 :goto_2d

    .line 558
    .restart local v7    # "count":I
    .restart local v8    # "consumedSpanCount":I
    .restart local v30    # "pos":I
    .restart local v31    # "remainingSpan":I
    .restart local v33    # "spanSize":I
    :cond_cb
    sub-int v31, v31, v33

    .line 559
    if-gez v31, :cond_d7

    .line 571
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_cf
    if-nez v7, :cond_ed

    .line 572
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 573
    return-void

    .line 562
    .restart local v30    # "pos":I
    .restart local v33    # "spanSize":I
    :cond_d7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    .line 563
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_cf

    .line 566
    add-int v8, v8, v33

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v11, v4, v7

    .line 568
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_55

    .line 576
    .end local v11    # "view":Landroid/view/View;
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_ed
    const/16 v25, 0x0

    .line 577
    .local v25, "maxSize":I
    const/16 v26, 0x0

    .local v26, "maxSizeInOther":F
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 580
    invoke-direct/range {v4 .. v9}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IIZ)V

    .line 581
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_fc
    move/from16 v0, v21

    if-ge v0, v7, :cond_16c

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 583
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_15d

    .line 584
    if-eqz v9, :cond_156

    .line 585
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 596
    :goto_113
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 598
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v11, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    .line 600
    .local v32, "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_134

    .line 601
    move/from16 v25, v32

    .line 603
    :cond_134
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 604
    .local v24, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    .line 605
    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v5, v5

    .line 604
    div-float v28, v4, v5

    .line 606
    .local v28, "otherSize":F
    cmpl-float v4, v28, v26

    if-lez v4, :cond_153

    .line 607
    move/from16 v26, v28

    .line 581
    :cond_153
    add-int/lit8 v21, v21, 0x1

    goto :goto_fc

    .line 587
    .end local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v28    # "otherSize":F
    .end local v32    # "size":I
    :cond_156
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_113

    .line 590
    :cond_15d
    if-eqz v9, :cond_165

    .line 591
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_113

    .line 593
    :cond_165
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Landroid/support/v7/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_113

    .line 610
    .end local v11    # "view":Landroid/view/View;
    :cond_16c
    if-eqz v18, :cond_1a0

    .line 612
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 614
    const/16 v25, 0x0

    .line 615
    const/16 v21, 0x0

    :goto_17b
    move/from16 v0, v21

    if-ge v0, v7, :cond_1a0

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 617
    .restart local v11    # "view":Landroid/view/View;
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 618
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    .line 619
    .restart local v32    # "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_19d

    .line 620
    move/from16 v25, v32

    .line 615
    :cond_19d
    add-int/lit8 v21, v21, 0x1

    goto :goto_17b

    .line 627
    .end local v11    # "view":Landroid/view/View;
    .end local v32    # "size":I
    :cond_1a0
    const/16 v21, 0x0

    :goto_1a2
    move/from16 v0, v21

    if-ge v0, v7, :cond_23e

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 629
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    move/from16 v0, v25

    if-eq v4, v0, :cond_222

    .line 630
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 631
    .restart local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 632
    .local v17, "decorInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 633
    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    .line 632
    add-int/2addr v4, v5

    .line 633
    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    .line 632
    add-int v35, v4, v5

    .line 634
    .local v35, "verticalInsets":I
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 635
    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    .line 634
    add-int/2addr v4, v5

    .line 635
    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    .line 634
    add-int v20, v4, v5

    .line 636
    .local v20, "horizontalInsets":I
    move-object/from16 v0, v24

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v0, v24

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v34

    .line 639
    .local v34, "totalSpaceInOther":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_226

    .line 641
    move-object/from16 v0, v24

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    .line 640
    const/high16 v5, 0x40000000    # 2.0f

    .line 641
    const/4 v6, 0x0

    .line 640
    move/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v5, v1, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v36

    .line 642
    .local v36, "wSpec":I
    sub-int v4, v25, v35

    .line 643
    const/high16 v5, 0x40000000    # 2.0f

    .line 642
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 650
    .local v19, "hSpec":I
    :goto_218
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v19

    invoke-direct {v0, v11, v1, v2, v4}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 627
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_222
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1a2

    .line 645
    .restart local v17    # "decorInsets":Landroid/graphics/Rect;
    .restart local v20    # "horizontalInsets":I
    .restart local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .restart local v34    # "totalSpaceInOther":I
    .restart local v35    # "verticalInsets":I
    :cond_226
    sub-int v4, v25, v20

    .line 646
    const/high16 v5, 0x40000000    # 2.0f

    .line 645
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .line 648
    .restart local v36    # "wSpec":I
    move-object/from16 v0, v24

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    .line 647
    const/high16 v5, 0x40000000    # 2.0f

    .line 648
    const/4 v6, 0x0

    .line 647
    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v5, v1, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v19

    .restart local v19    # "hSpec":I
    goto :goto_218

    .line 654
    .end local v11    # "view":Landroid/view/View;
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_23e
    move/from16 v0, v25

    move-object/from16 v1, p4

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 656
    const/4 v12, 0x0

    .local v12, "left":I
    const/4 v14, 0x0

    .local v14, "right":I
    const/4 v13, 0x0

    .local v13, "top":I
    const/4 v15, 0x0

    .line 657
    .local v15, "bottom":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c7

    .line 658
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2c0

    .line 659
    move-object/from16 v0, p3

    iget v15, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 660
    sub-int v13, v15, v25

    .line 674
    :goto_25c
    const/16 v21, 0x0

    :goto_25e
    move/from16 v0, v21

    if-ge v0, v7, :cond_312

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 676
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 677
    .local v29, "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f7

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_2dc

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move-object/from16 v0, v29

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v6, v10

    aget v5, v5, v6

    add-int v14, v4, v5

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    sub-int v12, v14, v4

    :goto_29a
    move-object/from16 v10, p0

    .line 691
    invoke-virtual/range {v10 .. v15}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 699
    invoke-virtual/range {v29 .. v29}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_2ab

    invoke-virtual/range {v29 .. v29}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_2b0

    .line 700
    :cond_2ab
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 702
    :cond_2b0
    move-object/from16 v0, p4

    iget-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 674
    add-int/lit8 v21, v21, 0x1

    goto :goto_25e

    .line 662
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_2c0
    move-object/from16 v0, p3

    iget v13, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 663
    add-int v15, v13, v25

    goto :goto_25c

    .line 666
    :cond_2c7
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2d5

    .line 667
    move-object/from16 v0, p3

    iget v14, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 668
    sub-int v12, v14, v25

    goto :goto_25c

    .line 670
    :cond_2d5
    move-object/from16 v0, p3

    iget v12, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 671
    add-int v14, v12, v25

    goto :goto_25c

    .line 682
    .restart local v11    # "view":Landroid/view/View;
    .restart local v29    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_2dc
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v6

    add-int v12, v4, v5

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v14, v12, v4

    goto :goto_29a

    .line 686
    :cond_2f7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v6

    add-int v13, v4, v5

    .line 687
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v15, v13, v4

    goto :goto_29a

    .line 704
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_312
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 356
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 359
    :cond_12
    :goto_12
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 353
    return-void

    .line 357
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    goto :goto_12
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 32
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1000
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v17

    .line 1001
    .local v17, "prevFocusedChild":Landroid/view/View;
    if-nez v17, :cond_9

    .line 1002
    const/16 v25, 0x0

    return-object v25

    .line 1004
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1005
    .local v12, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget v0, v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v19, v0

    .line 1006
    .local v19, "prevSpanStart":I
    iget v0, v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v25, v0

    iget v0, v12, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v26, v0

    add-int v18, v25, v26

    .line 1007
    .local v18, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v21

    .line 1008
    .local v21, "view":Landroid/view/View;
    if-nez v21, :cond_26

    .line 1009
    const/16 v25, 0x0

    return-object v25

    .line 1013
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v10

    .line 1014
    .local v10, "layoutDir":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_74

    const/16 v25, 0x1

    :goto_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_77

    const/4 v2, 0x1

    .line 1016
    .local v2, "ascend":Z
    :goto_43
    if-eqz v2, :cond_79

    .line 1017
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v25

    add-int/lit8 v20, v25, -0x1

    .line 1018
    .local v20, "start":I
    const/4 v9, -0x1

    .line 1019
    .local v9, "inc":I
    const/4 v11, -0x1

    .line 1025
    .local v11, "limit":I
    :goto_4d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_81

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v16

    .line 1026
    :goto_5f
    const/16 v22, 0x0

    .line 1027
    .local v22, "weakCandidate":Landroid/view/View;
    const/16 v24, -0x1

    .line 1028
    .local v24, "weakCandidateSpanIndex":I
    const/16 v23, 0x0

    .line 1030
    .local v23, "weakCandidateOverlap":I
    move/from16 v8, v20

    .end local v22    # "weakCandidate":Landroid/view/View;
    .local v8, "i":I
    :goto_67
    if-eq v8, v11, :cond_73

    .line 1031
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1032
    .local v4, "candidate":Landroid/view/View;
    move-object/from16 v0, v17

    if-ne v4, v0, :cond_84

    .line 1066
    .end local v4    # "candidate":Landroid/view/View;
    :cond_73
    return-object v22

    .line 1014
    .end local v2    # "ascend":Z
    .end local v8    # "i":I
    .end local v9    # "inc":I
    .end local v11    # "limit":I
    .end local v20    # "start":I
    .end local v23    # "weakCandidateOverlap":I
    .end local v24    # "weakCandidateSpanIndex":I
    :cond_74
    const/16 v25, 0x0

    goto :goto_36

    :cond_77
    const/4 v2, 0x0

    goto :goto_43

    .line 1021
    .restart local v2    # "ascend":Z
    :cond_79
    const/16 v20, 0x0

    .line 1022
    .restart local v20    # "start":I
    const/4 v9, 0x1

    .line 1023
    .restart local v9    # "inc":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v11

    .restart local v11    # "limit":I
    goto :goto_4d

    .line 1025
    :cond_81
    const/16 v16, 0x0

    .local v16, "preferLastSpan":Z
    goto :goto_5f

    .line 1035
    .end local v16    # "preferLastSpan":Z
    .restart local v4    # "candidate":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v23    # "weakCandidateOverlap":I
    .restart local v24    # "weakCandidateSpanIndex":I
    :cond_84
    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v25

    if-nez v25, :cond_8c

    .line 1030
    :cond_8a
    :goto_8a
    add-int/2addr v8, v9

    goto :goto_67

    .line 1038
    :cond_8c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1039
    .local v6, "candidateLp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget v7, v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1040
    .local v7, "candidateStart":I
    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v25, v0

    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v26, v0

    add-int v5, v25, v26

    .line 1041
    .local v5, "candidateEnd":I
    move/from16 v0, v19

    if-ne v7, v0, :cond_a7

    move/from16 v0, v18

    if-ne v5, v0, :cond_a7

    .line 1042
    return-object v4

    .line 1044
    :cond_a7
    const/4 v3, 0x0

    .line 1045
    .local v3, "assignAsWeek":Z
    if-nez v22, :cond_c2

    .line 1046
    const/4 v3, 0x1

    .line 1059
    :cond_ab
    :goto_ab
    if-eqz v3, :cond_8a

    .line 1060
    move-object/from16 v22, v4

    .line 1061
    .local v22, "weakCandidate":Landroid/view/View;
    iget v0, v6, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v24, v0

    .line 1062
    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 1063
    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 1062
    sub-int v23, v25, v26

    goto :goto_8a

    .line 1048
    .end local v22    # "weakCandidate":Landroid/view/View;
    :cond_c2
    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1049
    .local v13, "maxStart":I
    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1050
    .local v14, "minEnd":I
    sub-int v15, v14, v13

    .line 1051
    .local v15, "overlap":I
    move/from16 v0, v23

    if-le v15, v0, :cond_d6

    .line 1052
    const/4 v3, 0x1

    goto :goto_ab

    .line 1053
    :cond_d6
    move/from16 v0, v23

    if-ne v15, v0, :cond_ab

    .line 1054
    move/from16 v0, v24

    if-le v7, v0, :cond_e8

    const/16 v25, 0x1

    :goto_e0
    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_ab

    .line 1055
    const/4 v3, 0x1

    goto :goto_ab

    .line 1054
    :cond_e8
    const/16 v25, 0x0

    goto :goto_e0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 15
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 146
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v0, :cond_c

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 148
    return-void

    :cond_c
    move-object v8, v9

    .line 150
    check-cast v8, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 151
    .local v8, "glp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    .line 152
    .local v2, "spanGroupIndex":I
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3d

    .line 154
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    .line 156
    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_3b

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v3, v4, :cond_3b

    const/4 v4, 0x1

    .line 155
    :goto_31
    const/4 v3, 0x1

    .line 156
    const/4 v5, 0x0

    .line 153
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 144
    :goto_3a
    return-void

    .line 156
    :cond_3b
    const/4 v4, 0x0

    goto :goto_31

    .line 160
    :cond_3d
    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    .line 161
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5d

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_5d

    const/4 v6, 0x1

    .line 159
    :goto_53
    const/4 v3, 0x1

    .line 161
    const/4 v7, 0x0

    .line 158
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_3a

    .line 161
    :cond_5d
    const/4 v6, 0x0

    goto :goto_53
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 199
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 204
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 220
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 209
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 215
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 166
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 178
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 379
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 12
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 285
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v6, :cond_7

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 289
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    .line 290
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 291
    .local v4, "verticalPadding":I
    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_44

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 293
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 294
    .local v0, "height":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v1

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v7

    .line 294
    invoke-static {p2, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 302
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_40
    invoke-virtual {p0, v5, v0}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 284
    return-void

    .line 297
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_44
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 298
    .local v3, "usedWidth":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 299
    .restart local v5    # "width":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v7

    .line 299
    invoke-static {p3, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_40
.end method

.method public setSpanCount(I)V
    .registers 5
    .param p1, "spanCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 815
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_6

    .line 816
    return-void

    .line 818
    :cond_6
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 819
    if-ge p1, v1, :cond_24

    .line 820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_24
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 824
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 825
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    .line 814
    return-void
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2
    .param p1, "spanSizeLookup"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 260
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1071
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v1, :cond_9

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method