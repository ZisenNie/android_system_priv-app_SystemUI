.class public Lcom/android/systemui/statusbar/notification/ActionListTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "ActionListTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/ActionListTransformState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 30
    sput-object v0, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    .registers 2

    .prologue
    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    .line 40
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    if-eqz v0, :cond_b

    .line 41
    return-object v0

    .line 43
    :cond_b
    new-instance v1, Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 68
    sget-object v0, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method protected resetTransformedView()V
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->getTransformedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 61
    .local v0, "y":F
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->getTransformedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 57
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .registers 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 35
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    return v0
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .registers 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 47
    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .registers 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 52
    return-void
.end method
