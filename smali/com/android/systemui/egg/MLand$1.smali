.class Lcom/android/systemui/egg/MLand$1;
.super Ljava/lang/Object;
.source "MLand.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/egg/MLand;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$1;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .registers 8
    .param p1, "timeAnimator"    # Landroid/animation/TimeAnimator;
    .param p2, "t"    # J
    .param p4, "dt"    # J

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$1;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/systemui/egg/MLand;->-wrap1(Lcom/android/systemui/egg/MLand;JJ)V

    .line 512
    return-void
.end method
