.class Landroid/support/v17/leanback/widget/BaseCardView$3;
.super Ljava/lang/Object;
.source "BaseCardView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/BaseCardView;->animateInfoHeight(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseCardView;

    .prologue
    .line 714
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$3;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 721
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$3;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_26

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$3;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 723
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$3;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 720
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 729
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 716
    return-void
.end method
