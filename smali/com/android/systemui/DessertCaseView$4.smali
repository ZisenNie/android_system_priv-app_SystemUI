.class Lcom/android/systemui/DessertCaseView$4;
.super Ljava/lang/Object;
.source "DessertCaseView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseView;

.field final synthetic val$squatter:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/DessertCaseView;
    .param p2, "val$squatter"    # Landroid/view/View;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$4;->this$0:Lcom/android/systemui/DessertCaseView;

    iput-object p2, p0, Lcom/android/systemui/DessertCaseView$4;->val$squatter:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 407
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$4;->this$0:Lcom/android/systemui/DessertCaseView;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView$4;->val$squatter:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView;->removeView(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 408
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 403
    return-void
.end method
