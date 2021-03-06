.class Landroid/support/v17/leanback/widget/SingleRow;
.super Landroid/support/v17/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field private mTmpItem:[Ljava/lang/Object;

.field private final mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    .line 25
    new-instance v0, Landroid/support/v17/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    .line 26
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SingleRow;->setNumRows(I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .registers 11
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 103
    return v4

    .line 105
    :cond_a
    if-nez p2, :cond_13

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 107
    return v4

    .line 109
    :cond_13
    const/4 v6, 0x0

    .line 110
    .local v6, "filledOne":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v2

    .local v2, "index":I
    :goto_18
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_4e

    .line 111
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-interface {v0, v2, v7, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v3

    .line 113
    .local v3, "size":I
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_31

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_52

    .line 114
    :cond_31
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_4f

    const v5, 0x7fffffff

    .line 115
    .local v5, "edge":I
    :goto_38
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    .line 124
    :goto_3c
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 125
    const/4 v6, 0x1

    .line 126
    if-nez p2, :cond_4e

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 130
    .end local v3    # "size":I
    .end local v5    # "edge":I
    :cond_4e
    return v6

    .line 114
    .restart local v3    # "size":I
    :cond_4f
    const/high16 v5, -0x80000000

    .restart local v5    # "edge":I
    goto :goto_38

    .line 117
    .end local v5    # "edge":I
    :cond_52
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_6e

    .line 118
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    sub-int v5, v0, v1

    .line 122
    .restart local v5    # "edge":I
    :goto_6b
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    goto :goto_3c

    .line 120
    .end local v5    # "edge":I
    :cond_6e
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    add-int v5, v0, v1

    .restart local v5    # "edge":I
    goto :goto_6b

    .line 110
    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method protected final findRowMax(ZI[I)I
    .registers 6
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .prologue
    const/4 v0, 0x0

    .line 154
    if-eqz p3, :cond_8

    .line 155
    aput v0, p3, v0

    .line 156
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 158
    :cond_8
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    :goto_12
    return v0

    .line 159
    :cond_13
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_12
.end method

.method protected final findRowMin(ZI[I)I
    .registers 6
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p3, :cond_8

    .line 145
    aput v0, p3, v0

    .line 146
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 148
    :cond_8
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_19
    return v0

    .line 149
    :cond_1a
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    goto :goto_19
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .registers 5
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->clear()V

    .line 137
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    return-object v0
.end method

.method getStartIndexForAppend()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 49
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-ltz v0, :cond_a

    .line 50
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 51
    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 52
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 54
    :cond_1e
    return v2
.end method

.method getStartIndexForPrepend()I
    .registers 3

    .prologue
    .line 59
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_9

    .line 60
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 61
    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 62
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 64
    :cond_1d
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final prependVisibleItems(IZ)Z
    .registers 10
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 71
    return v4

    .line 73
    :cond_a
    if-nez p2, :cond_13

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 74
    return v4

    .line 76
    :cond_13
    const/4 v6, 0x0

    .line 77
    .local v6, "filledOne":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v2

    .local v2, "index":I
    :goto_18
    if-ltz v2, :cond_46

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;)I

    move-result v3

    .line 80
    .local v3, "size":I
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_2a

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_4b

    .line 81
    :cond_2a
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_47

    const/high16 v5, -0x80000000

    .line 82
    .local v5, "edge":I
    :goto_30
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    .line 91
    :goto_34
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 92
    const/4 v6, 0x1

    .line 93
    if-nez p2, :cond_46

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 97
    .end local v3    # "size":I
    .end local v5    # "edge":I
    :cond_46
    return v6

    .line 81
    .restart local v3    # "size":I
    :cond_47
    const v5, 0x7fffffff

    .restart local v5    # "edge":I
    goto :goto_30

    .line 84
    .end local v5    # "edge":I
    :cond_4b
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_5f

    .line 85
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    add-int/2addr v0, v1

    add-int v5, v0, v3

    .line 89
    .restart local v5    # "edge":I
    :goto_5c
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    goto :goto_34

    .line 87
    .end local v5    # "edge":I
    :cond_5f
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mMargin:I

    sub-int/2addr v0, v1

    sub-int v5, v0, v3

    .restart local v5    # "edge":I
    goto :goto_5c

    .line 77
    :cond_6d
    add-int/lit8 v2, v2, -0x1

    goto :goto_18
.end method
